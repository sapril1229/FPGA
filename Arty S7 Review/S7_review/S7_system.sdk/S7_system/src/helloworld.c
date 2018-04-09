/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/


#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_io.h"



int main()
{
    init_platform();

    print("Hello World\n");
    xil_printf("%i\n", 5);

    // RGBs
    Xil_Out32(XPAR_ARTY_RGB_AXI_0_BASEADDR + 0, 8);  //LD0 Red
    Xil_Out32(XPAR_ARTY_RGB_AXI_0_BASEADDR + 4, 8);  //LD0 Green
    Xil_Out32(XPAR_ARTY_RGB_AXI_0_BASEADDR + 8, 8);  //LD0 Blue
    Xil_Out32(XPAR_ARTY_RGB_AXI_0_BASEADDR + 12, 8); //LD1 Red
    Xil_Out32(XPAR_ARTY_RGB_AXI_0_BASEADDR + 16, 8); //LD1 Green
    Xil_Out32(XPAR_ARTY_RGB_AXI_0_BASEADDR + 20, 8); //LD1 Blue

    // LEDs
    Xil_Out32(XPAR_AXI_GPIO_LED_BASEADDR, 1); 		 // LD2
    Xil_Out32(XPAR_AXI_GPIO_LED_BASEADDR, 2);		 // LD3
    Xil_Out32(XPAR_AXI_GPIO_LED_BASEADDR, 4);		 // LD4
    Xil_Out32(XPAR_AXI_GPIO_LED_BASEADDR, 8);		 // LD5

   for (int n=0; n<16; n++){
    Xil_Out32(XPAR_AXI_GPIO_LED_BASEADDR, n); //LED0 Red
    }

    // Buttons
    xil_printf("Buttons: %i\n", Xil_In32(XPAR_GPIO_0_BASEADDR)); // Reading the buttons

    // Switches
    xil_printf("Switches: %i: \n",  Xil_In32(XPAR_GPIO_0_BASEADDR + 8)); // Reading the buttons

    // DRAM test
    Xil_Out32(XPAR_MIG7SERIES_0_BASEADDR, 8);
    xil_printf("Writing 8 to DDR address 0  \n");

    xil_printf("Reading %i from DDR address 0  \n", Xil_In32(XPAR_MIG7SERIES_0_BASEADDR));



    cleanup_platform();
    return 0;
}
