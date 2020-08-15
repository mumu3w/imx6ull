/*
 * Copyright (c) 2006-2018, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2020-07-02     tyustli   first version
 */

#include <rtthread.h>
#include <rtdevice.h>
#include "board.h"
#include "drv_pin.h"

#define LED0_PIN    IMX6ULL_GET_PIN(1, 3) /* GPIO1_IO03 */
#define KEY0_PIN    IMX6ULL_GET_PIN(1, 18) /* GPIO1_IO18 */

static void key_handler(void)
{
    GPIO_ClearPinsInterruptFlags(GPIO1, 1U << 18);
    rt_kprintf("int\r\n");
}

int main(int argc, char *argv[])
{
    rt_pin_mode(LED0_PIN, PIN_MODE_OUTPUT);
    rt_pin_mode(KEY0_PIN, PIN_MODE_INPUT);
    SystemInstallIrqHandler(GPIO1_Combined_16_31_IRQn, (system_irq_handler_t)(uint32_t)key_handler, NULL);
    EnableIRQ(GPIO1_Combined_16_31_IRQn);
    GPIO_EnableInterrupts(GPIO1, 1 << 18);

    while(1)
    {
        rt_pin_write(LED0_PIN, PIN_HIGH);
        rt_thread_mdelay(500);
        rt_pin_write(LED0_PIN, PIN_LOW);
        rt_thread_mdelay(500);
    }

    return 0;
}
