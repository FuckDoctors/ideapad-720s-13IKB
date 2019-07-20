/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLiYexa2.aml, Tue Aug 14 10:43:40 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000F8 (248)
 *     Revision         0x02
 *     Checksum         0x48
 *     OEM ID           "hack"
 *     OEM Table ID     "Type-C"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "Type-C", 0x00003000)
{
    External (_SB_.PCI0.RP09.PXSX, DeviceObj)    // (from opcode)

    Scope (\_SB.PCI0.RP09.PXSX)
    {
        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
        {
            Return (One)
        }

        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            Store (Package (0x02)
            {
                "PCI-Thunderbolt", 
                One
            }, Local0)
            Return (Local0)
        }

        Device (RHUB)
        {
            Name (_ADR, Zero)  // _ADR: Address
            
            Method (TPLD, 2, Serialized)
            {
                Name (PCKG, Package (0x01)
                {
                    Buffer (0x10){}
                })
                CreateField (DerefOf (Index (PCKG, Zero)), Zero, 0x07, REV)
                Store (One, REV)
                CreateField (DerefOf (Index (PCKG, Zero)), 0x40, One, VISI)
                Store (Arg0, VISI)
                CreateField (DerefOf (Index (PCKG, Zero)), 0x57, 0x08, GPOS)
                Store (Arg1, GPOS)
                CreateField (DerefOf (Index (PCKG, Zero)), 0x4A, 0x04, SHAP)
                Store (One, SHAP)
                CreateField (DerefOf (Index (PCKG, Zero)), 0x20, 0x10, WID)
                Store (0x08, WID)
                CreateField (DerefOf (Index (PCKG, Zero)), 0x30, 0x10, HGT)
                Store (0x03, HGT)
                Return (PCKG)
            }
                
            Method (TUPC, 2, Serialized)
            {
                Name (PCKG, Package (0x04)
                {
                    One, 
                    Zero, 
                    Zero, 
                    Zero
                })
                Store (Arg0, Index (PCKG, Zero))
                Store (Arg1, Index (PCKG, One))
                Return (PCKG)
            }
            
            Device (HSP8)
            {
                Name (_ADR, 0x08)  // _ADR: Address
                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    0xFF, 
                    0x09, 
                    Zero, 
                    Zero
                })
                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                {
                    Return (TPLD (One, 0x08))
                }
            }

            Device (SS01)
            {
                Name (_ADR, 0x03)  // _ADR: Address
                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                {
                    Return (TUPC (One, 0x09))
                }

                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                {
                    Return (TPLD (One, 0x08))
                }
            }
        }
    }
}