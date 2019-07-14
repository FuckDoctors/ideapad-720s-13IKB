1. 电脑配置
  
  | 配置项   | 配置内容                 | 备注          |
  | -------- | ------------------------ | ------------- |
  | CPU      | i5-8250U                 |               |
  | 显卡     | Intel UHD Graphics 620   |               |
  | 声卡     | Realtek ALC3240 (ALC298) |               |
  | 网卡     | AC3265                   | 更换为DW1820A |
  | 其他接口 | USB3.0 x2，雷电3 x1      |               |
  
2. BIOS设置

   1. 按网上说的那样的常规操作
   2. 设置启动方式未Legency Mode，不能设为UEFI模式，否则卡内存分配。

3. 驱动情况

   - [x] 显卡 - FB注入
   - [x] 声卡 - AppleALC，Layout-id : 22
   - [x] 网卡 - DW1820A，屏蔽针脚
   - [x] 触摸板 - VoodooI2C，参考官方说明，修改DSDT
   - [x] USB 3.0 - Hackintool，通过SSDT注入，未使用USBPorts
   - [x] 小太阳（亮度调节） - F11和F12键，修改DSDT
   - [ ] 雷电3 - 未驱动，不支持热插拔，而且外接HDMI显示器直接重启

4. 其他内容

   待补充

