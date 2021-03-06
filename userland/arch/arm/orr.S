/* https://cirosantilli.com/linux-kernel-module-cheat#arm-bitwise-instructions */

#include <lkmc.h>

LKMC_PROLOGUE

    /* 0x00 | 0xFF == 0x00 */
    mov r0, 0x00
    orr r0, 0xFF
    LKMC_ASSERT_EQ(r0, =0xFF)

    /* 0x0F | 0xF0 == 0x00 */
    mov r0, 0x0F
    orr r0, 0xF0
    LKMC_ASSERT_EQ(r0, =0xFF)

    /* 0x0F | 0x0F == 0x0F */
    mov r0, 0x0F
    orr r0, 0x0F
    LKMC_ASSERT_EQ(r0, =0x0F)

    /* 0xF0 | 0xF0 == 0xF0 */
    mov r0, 0xF0
    and r0, 0xF0
    LKMC_ASSERT_EQ(r0, =0xF0)

LKMC_EPILOGUE
