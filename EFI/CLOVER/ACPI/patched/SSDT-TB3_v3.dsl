/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20170929 (64-bit version)(RM)
 * Copyright (c) 2000 - 2017 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASL0XGmH4.aml, Sun Nov 19 11:46:57 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000006DD (1757)
 *     Revision         0x02
 *     Checksum         0xF8
 *     OEM ID           "hack"
 *     OEM Table ID     "TYPC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20170929 (538380585)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "TH3HP", 0x00000000)
{
    External (_SB_.PCI0.RP09, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP09.PXSX, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP09.PXSX.TBDU, DeviceObj)    // (from opcode)

    Scope (\_SB.PCI0.RP09)
    {
        Name (RTBT, One)
    }

    Scope (\_SB.PCI0.RP09.PXSX)
    {
        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
        {
            Return (One)
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            Return (0x0F)
        }

        Device (TBL1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (Zero)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, ToUUID ("a0b5b7c6-1318-441c-b0c9-fe695eaf949b")))
                {
                    If (LNot (Arg2))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                           
                        })
                    }

                    Store (Package (0x02)
                        {
                            "PCIHotplugCapable", 
                            Zero
                        }, Local0)
                    Return (Local0)
                }
                else
                {
                    Store (Package (0x02)
                    {
                        "PCIHotplugCapable", 
                        Zero
                    }, Local0)
                Return (Local0)
                }

                Return (Zero)
            }

            Device (NHI0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_STR, Unicode ("Thunderbolt"))  // _STR: Description String
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (LNot (Arg2))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                           
                        })
                    }

                    Store (Package (0x03)
                        {
                            "power-save", 
                            One, 
                            Buffer (One)
                            {
                                 0x00                                           
                            }
                        }, Local0)
                    Return (Local0)
                }
            }
        }
        
        Device (TBL2)
        {
            Name (_ADR, 0x00010000)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (Zero)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Store (Package (0x02)
                    {
                        "PCIHotplugCapable", 
                        Zero
                    }, Local0)
                Return (Local0)
            }
        }

    }

    Scope (_SB.PCI0.RP09.PXSX.TBDU)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            Store (Package (0x02)
                {
                    "PCIHotplugCapable", 
                    Zero
                }, Local0)
            Return (Local0)
        }
    }
}

