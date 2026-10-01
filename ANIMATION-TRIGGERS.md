# 动画与触发 / Animations and triggers

[中文说明](README.md) · [English guide](README.en.md)

本包提供九个原生动画槽位的视觉素材。下面的触发说明按 Windows 客户端 26.928.3736.0 的实现核对；实际效果可能随版本变化，未将全部事件逐一实机触发测试。

This package supplies artwork for nine native animation slots. The behavior below was checked against Windows client 26.928.3736.0. Client versions can differ; every trigger has not been tested individually in the running app.

| 原生状态 / State | 角色动作 / Animation | 当前触发语义 / Current trigger meaning | 动态预览 / Preview |
| --- | --- | --- | --- |
| `idle` | 静立、呼吸、眨眼 / Standing, breathing, blinking | 空闲或普通信息 / Idle or ordinary information | [GIF](assets/readme/animations/idle.gif) |
| `running-right` | 朝画面右侧跑动 / Run screen-right | 向右拖动宠物 / Dragging the pet right | [GIF](assets/readme/animations/running-right.gif) |
| `running-left` | 朝画面左侧跑动 / Run screen-left | 向左拖动宠物 / Dragging the pet left | [GIF](assets/readme/animations/running-left.gif) |
| `waving` | 抬手挥手 / Waving | 首次唤醒欢迎提示 / First-wake greeting | [GIF](assets/readme/animations/waving.gif) |
| `jumping` | 起跳、腾空、落地 / Takeoff, airborne, landing | 鼠标移入宠物 / Pointer hovering over the pet | [GIF](assets/readme/animations/jumping.gif) |
| `failed` | 低眉、轻微受挫 / Deflated expression | 任务受阻或错误 / Blocked task or error | [GIF](assets/readme/animations/failed.gif) |
| `waiting` | 向画面左侧歪头，头部右侧出现黄色问号 / Head tilts screen-left; a yellow question mark appears to the right | 需要输入、帮助或批准 / Needs input, help, or approval | [GIF](assets/readme/animations/waiting.gif) |
| `running` | 坐姿操作黑色笔记本 / Working with a black laptop | 正在处理任务 / Task in progress | [GIF](assets/readme/animations/running.gif) |
| `review` | 停手查看电脑与思考 / Pausing to inspect the laptop | 结果就绪、等待查看 / Result ready to view | [GIF](assets/readme/animations/review.gif) |

`running` 这个槽位表示工作中，角色的实际奔跑使用 `running-left` 与 `running-right`。`jumping` 在本版是跳跃，不将其说明为任务完成庆祝。

The `running` slot means working. Locomotion uses `running-left` and `running-right`. In this version, `jumping` is a jump animation rather than a claimed task-completion celebration.

## 16 个注视方向 / Sixteen look directions

[查看透明循环预览 / View the transparent loop](assets/readme/animations/look.gif)

```text
000  022.5  045  067.5  090  112.5  135  157.5
180  202.5  225  247.5  270  292.5  315  337.5
```

方向从正上方 / 十二点钟开始顺时针排列。客户端可以根据鼠标相对宠物的角度选择方向；中性区域回到待机。等待、错误、检查和临时互动等状态会优先显示各自动作。

Directions run clockwise from up / twelve o'clock. The client can select a direction from the pointer's angle relative to the pet, with a neutral deadzone returning to idle. Waiting, error, review, and transient interactions take priority over directional looks.

## 播放与自定义范围 / Playback and customization

- GIF 用于展示成品动画，循环时序是预览时序；客户端自行选择当前槽位与播放时序。
- 这是成品素材包，没有随机选动作的调度器、独立鼠标监听程序或自定义事件配置入口。
- 后续可以修改已有槽位中的画面；新增任意状态名或附加映射 JSON 不会自动成为原生客户端的新触发能力。

- GIFs demonstrate the finished artwork. Preview loop timing is separate from the client's playback and state selection.
- This is an asset package. It includes no random-action scheduler, standalone pointer listener, or custom-event configuration interface.
- Future releases can change artwork inside the existing slots. Additional state names or mapping JSON files do not automatically add native triggers.

客户端的任务状态含义可参考[官方宠物说明 / official pet guide](https://learn.chatgpt.com/docs/pets)。
