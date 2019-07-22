/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLG6zIef.aml, Mon Nov 13 07:51:02 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000172 (370)
 *     Revision         0x02
 *     Checksum         0x27
 *     OEM ID           "hack"
 *     OEM Table ID     "TYPC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "TH3HP", 0x00000000)
{
    External (_SB_.PCI0.RP09.PXSX, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP09.PXSX.TBDU, DeviceObj)    // (from opcode)

    Scope (_SB.PCI0.RP09.PXSX)
    {
        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
        {
            Return (One)
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
                Store (Package (0x02)
                    {
                        "PCIHotplugCapable", 
                        Zero
                    }, Local0)
                Return (Local0)
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
