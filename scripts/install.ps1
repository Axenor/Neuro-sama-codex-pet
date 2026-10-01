# Copies the two reviewed V1 files into a new local pet directory.
# Example: .\scripts\install.ps1
# Test destination: .\scripts\install.ps1 -CodexHome .\temporary-codex-home
[CmdletBinding()]
param(
    [string]$SourceDir = (Join-Path $PSScriptRoot '..\output\neuro-sama-v3'),
    [string]$CodexHome
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Get-BytesSha256 {
    param([byte[]]$Bytes)
    $hasher = [System.Security.Cryptography.SHA256]::Create()
    try {
        return ([BitConverter]::ToString($hasher.ComputeHash($Bytes))).Replace('-', '').ToLowerInvariant()
    }
    finally {
        $hasher.Dispose()
    }
}

$expectedHashes = @{
    'pet.json' = '849ac2c8a0426460d63239f951f3893b4d6849ea88fba86f3cdd8c7b089dc90a'
    'spritesheet.webp' = '82c12b631c6e16bd63de167de0439786dddcff8ea5953b0066097663f1e356a0'
}

if ([string]::IsNullOrWhiteSpace($SourceDir)) {
    throw 'SourceDir must identify the directory containing pet.json and spritesheet.webp.'
}
$sourcePath = [IO.Path]::GetFullPath($SourceDir)

if ($PSBoundParameters.ContainsKey('CodexHome')) {
    if ([string]::IsNullOrWhiteSpace($CodexHome)) {
        throw 'CodexHome must not be empty.'
    }
    $taskCodexHome = $CodexHome
}
elseif (-not [string]::IsNullOrWhiteSpace($env:CODEX_HOME)) {
    $taskCodexHome = $env:CODEX_HOME
}
else {
    $userProfilePath = [Environment]::GetFolderPath('UserProfile')
    if ([string]::IsNullOrWhiteSpace($userProfilePath)) {
        throw 'The user home directory could not be resolved; pass -CodexHome explicitly.'
    }
    $taskCodexHome = Join-Path $userProfilePath '.codex'
}
$taskCodexHome = [IO.Path]::GetFullPath($taskCodexHome)
$destinationPath = Join-Path (Join-Path $taskCodexHome 'pets') 'neuro-sama-v3'

# Load and validate every source byte before creating the destination.
# Installing from these buffers also avoids changes to source files during copying.
$sourceBytes = @{}
foreach ($fileName in @('pet.json', 'spritesheet.webp')) {
    $filePath = Join-Path $sourcePath $fileName
    if (-not [IO.File]::Exists($filePath)) {
        throw "Missing source file: $filePath"
    }
    $sourceBytes[$fileName] = [IO.File]::ReadAllBytes($filePath)
    if ((Get-BytesSha256 $sourceBytes[$fileName]) -cne $expectedHashes[$fileName]) {
        throw "Source checksum differs from the reviewed V1 file: $fileName. No pet files were written."
    }
}

$utf8 = [System.Text.UTF8Encoding]::new($false, $true)
$manifestText = $utf8.GetString($sourceBytes['pet.json'])
$manifest = $manifestText | ConvertFrom-Json
$requiredKeys = @('id', 'displayName', 'description', 'spriteVersionNumber', 'spritesheetPath')
$actualKeys = @($manifest.PSObject.Properties.Name)
if ($actualKeys.Count -ne $requiredKeys.Count -or @(Compare-Object $requiredKeys $actualKeys).Count -ne 0) {
    throw 'pet.json must have exactly the five reviewed manifest fields.'
}
if ($manifest.id -cne 'neuro-sama-v3' -or
    $manifest.spriteVersionNumber -is [string] -or
    $manifest.spriteVersionNumber -ne 2 -or
    $manifest.spritesheetPath -cne 'spritesheet.webp') {
    throw 'pet.json must use id neuro-sama-v3, numeric spriteVersionNumber 2 and spritesheetPath spritesheet.webp.'
}

if ((Test-Path -LiteralPath $destinationPath) -or
    ($null -ne (Get-Item -LiteralPath $destinationPath -Force -ErrorAction SilentlyContinue))) {
    throw "The target already exists; nothing was overwritten: $destinationPath"
}

# New-Item without -Force refuses a directory created by another installer.
# CreateNew refuses an individual file if another process created it meanwhile.
New-Item -ItemType Directory -Path $destinationPath -ErrorAction Stop | Out-Null
foreach ($fileName in @('pet.json', 'spritesheet.webp')) {
    $filePath = Join-Path $destinationPath $fileName
    $stream = [IO.File]::Open($filePath, [IO.FileMode]::CreateNew, [IO.FileAccess]::Write, [IO.FileShare]::None)
    try {
        $bytes = $sourceBytes[$fileName]
        $stream.Write($bytes, 0, $bytes.Length)
    }
    finally {
        $stream.Dispose()
    }
}

Write-Host "Installed the two verified Neuro-sama V3 V1 files: $destinationPath"
Write-Host 'Open the app pet settings, refresh the list, then select Neuro-sama V3.'
Write-Host 'No existing pets, app settings or execution backends were changed.'
