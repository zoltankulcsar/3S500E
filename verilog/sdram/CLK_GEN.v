////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 12.1
//  \   \         Application : xaw2verilog
//  /   /         Filename : CLK_GEN.v
// /___/   /\     Timestamp : 09/25/2011 12:22:32
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: xaw2verilog -intstyle C:/xilinxtest/testsdram/testsdram/ipcore_dir/CLK_GEN.xaw -st CLK_GEN.v
//Design Name: CLK_GEN
//Device: xc3s250e-4tq144
//
// Module CLK_GEN
// Generated by Xilinx Architecture Wizard
// Written for synthesis tool: XST
`timescale 1ns / 1ps

module CLK_GEN(CLKIN_IN, 
               CLKIN_IBUFG_OUT, 
               CLK0_OUT, 
               CLK2X_OUT);

    input CLKIN_IN;
   output CLKIN_IBUFG_OUT;
   output CLK0_OUT;
   output CLK2X_OUT;
   
   wire CLKFB_IN;
   wire CLKIN_IBUFG;
   wire CLK0_BUF;
   wire CLK2X_BUF;
   wire GND_BIT;
   
   assign GND_BIT = 0;
   assign CLKIN_IBUFG_OUT = CLKIN_IBUFG;
   assign CLK0_OUT = CLKFB_IN;
   IBUFG CLKIN_IBUFG_INST (.I(CLKIN_IN), 
                           .O(CLKIN_IBUFG));
   BUFG CLK0_BUFG_INST (.I(CLK0_BUF), 
                        .O(CLKFB_IN));
   BUFG CLK2X_BUFG_INST (.I(CLK2X_BUF), 
                         .O(CLK2X_OUT));
   DCM_SP DCM_SP_INST (.CLKFB(CLKFB_IN), 
                       .CLKIN(CLKIN_IBUFG), 
                       .DSSEN(GND_BIT), 
                       .PSCLK(GND_BIT), 
                       .PSEN(GND_BIT), 
                       .PSINCDEC(GND_BIT), 
                       .RST(GND_BIT), 
                       .CLKDV(), 
                       .CLKFX(), 
                       .CLKFX180(), 
                       .CLK0(CLK0_BUF), 
                       .CLK2X(CLK2X_BUF), 
                       .CLK2X180(), 
                       .CLK90(), 
                       .CLK180(), 
                       .CLK270(), 
                       .LOCKED(), 
                       .PSDONE(), 
                       .STATUS());
   defparam DCM_SP_INST.CLK_FEEDBACK = "1X";
   defparam DCM_SP_INST.CLKDV_DIVIDE = 2.0;
   defparam DCM_SP_INST.CLKFX_DIVIDE = 1;
   defparam DCM_SP_INST.CLKFX_MULTIPLY = 4;
   defparam DCM_SP_INST.CLKIN_DIVIDE_BY_2 = "FALSE";
   defparam DCM_SP_INST.CLKIN_PERIOD = 20.000;
   defparam DCM_SP_INST.CLKOUT_PHASE_SHIFT = "FIXED";
   defparam DCM_SP_INST.DESKEW_ADJUST = "SYSTEM_SYNCHRONOUS";
   defparam DCM_SP_INST.DFS_FREQUENCY_MODE = "LOW";
   defparam DCM_SP_INST.DLL_FREQUENCY_MODE = "LOW";
   defparam DCM_SP_INST.DUTY_CYCLE_CORRECTION = "TRUE";
   defparam DCM_SP_INST.FACTORY_JF = 16'hC080;
   defparam DCM_SP_INST.PHASE_SHIFT = -63;
   defparam DCM_SP_INST.STARTUP_WAIT = "FALSE";
endmodule
