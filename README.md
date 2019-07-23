1. 电脑配置
  
   | 配置项   | 配置内容                 | 备注          |
   | -------- | ------------------------ | ------------- |
   | CPU      | i5-8250U                 |               |
   | 显卡     | Intel UHD Graphics 620   |               |
   | 声卡     | Realtek ALC3240 (ALC298) |               |
   | 网卡     | AC3265                   | 更换为DW1820A |
   | 其他接口 | USB3.0 x 2，雷电3 x 1    |               |
  
2. BIOS设置

   1. 按网上说的那样的常规操作
   2. 设置启动方式为Legency Mode，不能设为UEFI模式，否则卡内存分配。

3. 驱动情况

   - [x] 显卡 - FB注入
   - [x] 声卡 - AppleALC，Layout-id : 22
   - [x] 网卡 - DW1820A，屏蔽针脚，隔空投送正常
   - [x] 触摸板 - VoodooI2C，参考官方说明，修改DSDT（搜索zhbchwin查看修改的地方）
   - [x] USB 3.0 - Hackintool，通过SSDT注入，未使用USBPorts
   - [x] 小太阳（亮度调节） - F11和F12键，修改DSDT（搜索zhbchwin查看修改的地方）
   - [ ] 雷电3 - 待完善，USB已支持热插拔，睡眠唤醒也没问题，但外接HDMI显示器直接重启
   - [ ] HiDPI - 分辨率1080P，而且每次启动Logo都变大一下，所以未开启
   - [x] 睡眠 - 貌似正常
   - [x] 变频 - 13档，1300-3400

4. 其他内容

   待补充
   
5. 截图

   1. 显卡

      ![显卡](screenshots/显卡.png)

   2. 声卡

      ![声卡](screenshots/声卡.png)

      ![音量调节](screenshots/音量调节.png)

   3. WiFi

      ![WiFi](screenshots/WiFi.png)

   4. 蓝牙 - 然而，貌似连上手机后一会就断开。。。

      ![蓝牙](screenshots/蓝牙.png)

   5. 触控板

      ![触控板](screenshots/触控板.png)

   6. USB

      ![USB](screenshots/USB.png)

   7. 雷电3 - 使用IOElectrify.kext后，如下图，然而并没有什么用，接HDMI显示器直接重启。。。

      ![雷电3](screenshots/雷电3.png)

   8. 小太阳

      ![小太阳](screenshots/小太阳.png)

   9. 变频

      ![变频](screenshots/变频.png)

