# Neuro-sama V3 · Codex 像素桌宠

[English](README.en.md) · [快速安装](#快速安装) · [全部动画](ANIMATION-TRIGGERS.md) · [版权声明](NOTICE.md)

把 Neuro-sama V3 带到你的 Codex Mini 桌面！像素 Q 版造型保留了她的长发、心形发夹、不对称长短袜和右膝创可贴。她会眨眼、奔跑、挥手和跳跃，也会抱着黑色笔记本电脑工作。等待回应时，她向画面左侧歪头，头部右侧出现一个黄色问号。

本包包含 **9 组动画、57 个标准动作帧和 16 个注视方向**，采用透明背景。当前为第一版 **V1 / v1.0.0**；安装文件使用 **Codex 图集格式 v2**。

制作与分享：**[Axenor](https://github.com/Axenor)**。

## 动态预览

<table>
  <tr>
    <td align="center" width="33%"><img src="./assets/readme/animations/idle.gif" width="256" alt="待机 · 呼吸与眨眼"><br><b>待机 · 呼吸与眨眼</b></td>
    <td align="center" width="33%"><img src="./assets/readme/animations/waiting.gif" width="256" alt="等待 · 歪头与问号"><br><b>等待 · 歪头与问号</b></td>
    <td align="center" width="33%"><img src="./assets/readme/animations/running.gif" width="256" alt="工作 · 操作笔记本"><br><b>工作 · 操作笔记本</b></td>
  </tr>
</table>

全部动作的动态预览见[动作与触发说明](ANIMATION-TRIGGERS.md)。GIF 为循环展示预览；实际播放速度和触发时机由客户端控制。

## 动作图鉴

<table>
  <tr>
    <td align="center" width="33%"><img src="./previews/idle.png" width="160" alt="待机"><br><b>待机</b><br><code>idle</code></td>
    <td align="center" width="33%"><img src="./previews/running-right.png" width="160" alt="向右跑动"><br><b>向右跑动</b><br><code>running-right</code></td>
    <td align="center" width="33%"><img src="./previews/running-left.png" width="160" alt="向左跑动"><br><b>向左跑动</b><br><code>running-left</code></td>
  </tr>
  <tr>
    <td align="center" width="33%"><img src="./previews/waving.png" width="160" alt="挥手"><br><b>挥手</b><br><code>waving</code></td>
    <td align="center" width="33%"><img src="./previews/jumping.png" width="160" alt="跳跃"><br><b>跳跃</b><br><code>jumping</code></td>
    <td align="center" width="33%"><img src="./previews/failed.png" width="160" alt="失落"><br><b>失落</b><br><code>failed</code></td>
  </tr>
  <tr>
    <td align="center" width="33%"><img src="./previews/waiting.png" width="160" alt="等待回应"><br><b>等待回应</b><br><code>waiting</code></td>
    <td align="center" width="33%"><img src="./previews/running.png" width="160" alt="工作中"><br><b>工作中</b><br><code>running</code></td>
    <td align="center" width="33%"><img src="./previews/review.png" width="160" alt="检查结果"><br><b>检查结果</b><br><code>review</code></td>
  </tr>
</table>

<details>
<summary>查看完整透明图集</summary>

<img src="./output/neuro-sama-v3/spritesheet.webp" width="640" alt="Neuro-sama V3 Codex v2 透明精灵图集">

1536 × 2288，8 × 11 格，每格 192 × 208。第 0–8 行是九组动作，第 9–10 行是十六个注视方向。

</details>

## 快速安装

### 从第三方平台安装

此工作已上传至第三方平台[codex-pet](https://codex-pets.net/#/pets/neuro-sama-v3)和[petdex](https://petdex.dev/pets/neuro-sama-v3)，你可以通过它们简单快速的完成安装。

### Agent 安装

将下列提示词交给具有网络访问和本机文件权限的 Agent：

```text
请在这台电脑上安装 GitHub 仓库 https://github.com/Axenor/Neuro-sama-codex-pet 的 Codex 原生 v2 桌宠“Neuro-sama V3”。
1. 识别操作系统；确认当前桌面应用支持本地自定义 v2 宠物。
2. 下载并解压 https://github.com/Axenor/Neuro-sama-codex-pet/releases/download/v1.0.0/neuro-sama-v3-v1.0.0.zip。若该 Release 尚未发布，则先说明情况；经我选择，可改为从仓库下载 output/neuro-sama-v3/ 中的两个文件。
3. 解压后的安装文件位于 neuro-sama-v3/pet.json 和 neuro-sama-v3/spritesheet.webp。
4. 使用应用实际配置的 CODEX_HOME；未设置时，Windows 使用用户主目录下 .codex，macOS 使用 ~/.codex。安装目标为该目录下的 pets/neuro-sama-v3/。
5. 写入前核对 id=neuro-sama-v3、displayName=Neuro-sama V3、spriteVersionNumber=2、spritesheetPath=spritesheet.webp，并根据包内 SHA256SUMS 校验两个文件。
6. 若目标目录已存在，停止并告诉我；先询问如何处理现有版本。不要覆盖、删除或修改其他宠物。
7. 只将 pet.json 与 spritesheet.webp 复制到同一个 neuro-sama-v3 目录；不要多套一层目录，也不要复制预览或整个仓库。
8. 告诉我实际安装路径及检查结果，提醒我在“设置 → Pets / Mini 与虚拟宠物”刷新并选择 Neuro-sama V3；未出现时再重新打开应用。
9. 不要自动更改后端设置，也不要为了安装而修改图集尺寸、版本或角色素材。
```

### 下载 Release 安装包

下载 [neuro-sama-v3-v1.0.0.zip](https://github.com/Axenor/Neuro-sama-codex-pet/releases/download/v1.0.0/neuro-sama-v3-v1.0.0.zip) 后解压。此下载链接需仓库维护者发布 `v1.0.0` Release 并上传同名附件后生效。

解压后的结构：

```text
neuro-sama-v3/
├── pet.json
├── spritesheet.webp
├── SHA256SUMS
├── README.md
└── NOTICE.md
```

**Windows（PowerShell）**：先把下面的路径改为实际解压目录，再运行。目标目录已存在时会停止。

```powershell
$petSourceDir = 'C:\path\to\neuro-sama-v3'
$petCodexRoot = if ([string]::IsNullOrWhiteSpace($env:CODEX_HOME)) {
    Join-Path ([Environment]::GetFolderPath('UserProfile')) '.codex'
} else { $env:CODEX_HOME }
$petTargetDir = Join-Path $petCodexRoot 'pets\neuro-sama-v3'
if (-not (Test-Path -LiteralPath (Join-Path $petSourceDir 'pet.json') -PathType Leaf) -or
    -not (Test-Path -LiteralPath (Join-Path $petSourceDir 'spritesheet.webp') -PathType Leaf)) {
    throw '解压目录中缺少安装文件。'
}
if (Test-Path -LiteralPath $petTargetDir) { throw '目标目录已存在，请先决定如何保留旧版本。' }
New-Item -ItemType Directory -Path $petTargetDir -Force | Out-Null
[System.IO.File]::Copy((Join-Path $petSourceDir 'pet.json'), (Join-Path $petTargetDir 'pet.json'), $false)
[System.IO.File]::Copy((Join-Path $petSourceDir 'spritesheet.webp'), (Join-Path $petTargetDir 'spritesheet.webp'), $false)
Get-Item -LiteralPath (Join-Path $petTargetDir 'pet.json'), (Join-Path $petTargetDir 'spritesheet.webp')
```

**macOS（终端）**：替换第一行的解压路径。安装前确认目录内有两个文件；目标目录已存在时会停止。

```bash
pet_source_dir="/path/to/neuro-sama-v3"
pet_target_dir="${CODEX_HOME:-$HOME/.codex}/pets/neuro-sama-v3"
if [ ! -f "$pet_source_dir/pet.json" ] || [ ! -f "$pet_source_dir/spritesheet.webp" ]; then
  echo "解压目录中缺少安装文件" >&2
elif [ -e "$pet_target_dir" ] || [ -L "$pet_target_dir" ]; then
  echo "目标目录已存在，请先决定如何保留旧版本" >&2
else
  mkdir -p "$(dirname "$pet_target_dir")" && mkdir "$pet_target_dir" &&
  cp -n "$pet_source_dir/pet.json" "$pet_source_dir/spritesheet.webp" "$pet_target_dir/" &&
  ls -lh "$pet_target_dir/pet.json" "$pet_target_dir/spritesheet.webp"
fi
```

包内 `SHA256SUMS` 提供两文件校验值；Windows 用 `Get-FileHash`，macOS 在解压目录内用 `shasum -a 256 -c SHA256SUMS`。

### 从仓库克隆安装

安装辅助脚本会先校验 V1 的文件哈希、宠物 ID 与格式，随后复制两文件；同名目标存在时停止。

Windows：

```powershell
git clone https://github.com/Axenor/Neuro-sama-codex-pet.git
Set-Location .\Neuro-sama-codex-pet
& .\scripts\install.ps1
```

macOS：

```bash
git clone https://github.com/Axenor/Neuro-sama-codex-pet.git
cd Neuro-sama-codex-pet
bash scripts/install.sh
```

脚本默认读取 `CODEX_HOME`，未设置时使用用户主目录下 `.codex`。若应用使用另一目录，可显式传入：

```powershell
& .\scripts\install.ps1 -CodexHome 'D:\your-codex-home'
```

```bash
bash scripts/install.sh --codex-home "/path/to/codex-home"
```

### 手动复制安装

1. 从 Release 解压目录，或仓库的 `output/neuro-sama-v3/`，取得 `pet.json` 和 `spritesheet.webp`。
2. 打开应用所使用的 Codex 用户目录；若未自定义，Windows 在资源管理器地址栏输入 `%USERPROFILE%\.codex\pets\`，macOS 在 Finder 按 `⌘ ⇧ G` 输入 `~/.codex/pets/`。
3. 新建 `neuro-sama-v3` 文件夹，将两个文件放入其中。若同名目录已存在，先处理旧版本，再决定是否更新。

最终目录应为：

```text
<CODEX_HOME 或用户主目录下的 .codex>/pets/neuro-sama-v3/
├── pet.json
└── spritesheet.webp
```

### 完成安装

进入 **设置 → Pets / Mini 与虚拟宠物 → 刷新**，选择 **Neuro-sama V3**。菜单名称可能随客户端语言和版本变化；如果尚未显示，重新打开应用后再查看。[官方宠物使用说明](https://learn.chatgpt.com/docs/pets)

想让角色更大，可在同一设置页进入 **自定义 → 宠物大小** 调整，无需改动图集。[官方尺寸设置说明](https://learn.chatgpt.com/docs/pets)

## 文件结构

```text
Neuro-sama-codex-pet/
├── README.md / README.en.md   # 中英文介绍与安装说明
├── NOTICE.md                  # 用户指定的版权声明
├── ASSET-USAGE.md             # 使用说明与声明入口
├── ANIMATION-TRIGGERS.md       # 动画与当前客户端触发说明
├── CHANGELOG.md               # V1 / v1.0.0 发布说明
├── output/neuro-sama-v3/       # 原生安装文件，仅两个
├── assets/readme/animations/   # 十个透明 GIF 预览
├── previews/                  # 九张透明动作单帧
├── scripts/                   # 本地双文件安装辅助脚本
├── release-manifest.json      # 版本、图集规格与生产文件哈希
├── SHA256SUMS                 # 仓库安装文件校验值
├── .gitattributes
└── .gitignore
```

## Tips

如果你觉得人物太小了，可在 设置 → Mini 与虚拟宠物 → 自定义 → 宠物大小 调整，最大支持默认尺寸的 2 倍。

## 制作与版权

制作与分享：**Axenor**。本像素宠物由提供的角色参考图经 AI 辅助制作、动画整理和局部修订完成。

本项目是 Neuro-sama 的同人衍生作品。原角色、设计及相关知识产权归相应权利人所有；本仓库不授予底层角色 IP 的许可证。完整英文声明见 [NOTICE.md](NOTICE.md)，使用说明见 [ASSET-USAGE.md](ASSET-USAGE.md)。

