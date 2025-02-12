// ***************************************************************************
// ***************************************************************************
// Copyright 2011(c) Analog Devices, Inc.
// 
// All rights reserved.
// 
// Redistribution and use in source and binary forms, with or without modification,
// are permitted provided that the following conditions are met:
//     - Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     - Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in
//       the documentation and/or other materials provided with the
//       distribution.
//     - Neither the name of Analog Devices, Inc. nor the names of its
//       contributors may be used to endorse or promote products derived
//       from this software without specific prior written permission.
//     - The use of this software may or may not infringe the patent rights
//       of one or more patent holders.  This license does not release you
//       from the requirement that you obtain separate licenses from these
//       patent holders to use this software.
//     - Use of the software either in source or binary form, must be run
//       on or directly connected to an Analog Devices Inc. component.
//    
// THIS SOFTWARE IS PROVIDED BY ANALOG DEVICES "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
// INCLUDING, BUT NOT LIMITED TO, NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A
// PARTICULAR PURPOSE ARE DISCLAIMED.
//
// IN NO EVENT SHALL ANALOG DEVICES BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
// EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, INTELLECTUAL PROPERTY
// RIGHTS, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR 
// BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
// STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF 
// THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// ***************************************************************************
// ***************************************************************************
// ***************************************************************************
// ***************************************************************************

`timescale 1ns/100ps

module up_xfer_cntrl (

  // up interface

  up_rstn,
  up_clk,
  up_data_cntrl,

  // device interface

  d_rst,
  d_clk,
  d_data_cntrl);

  // parameters

  parameter     DATA_WIDTH = 8;
  localparam    DW = DATA_WIDTH - 1;

  // up interface

  input           up_rstn;
  input           up_clk;
  input   [DW:0]  up_data_cntrl;

  // device interface

  input           d_rst;
  input           d_clk;
  output  [DW:0]  d_data_cntrl;

  // internal registers

  reg     [ 5:0]  up_xfer_count = 'd0;
  reg             up_xfer_toggle = 'd0;
  reg     [DW:0]  up_xfer_data = 'd0;
  reg             d_xfer_toggle_m1 = 'd0;
  reg             d_xfer_toggle_m2 = 'd0;
  reg             d_xfer_toggle_m3 = 'd0;
  reg     [DW:0]  d_data_cntrl = 'd0;

  // internal signals

  wire            d_xfer_toggle_s;

  // device control transfer

  always @(negedge up_rstn or posedge up_clk) begin
    if (up_rstn == 1'b0) begin
      up_xfer_count <= 'd0;
      up_xfer_toggle <= 'd0;
      up_xfer_data <= 'd0;
    end else begin
      up_xfer_count <= up_xfer_count + 1'd1;
      if (up_xfer_count == 6'd1) begin
        up_xfer_toggle <= ~up_xfer_toggle;
        up_xfer_data <= up_data_cntrl;
      end
    end
  end

  assign d_xfer_toggle_s = d_xfer_toggle_m3 ^ d_xfer_toggle_m2;

  always @(posedge d_clk) begin
    if (d_rst == 1'b1) begin
      d_xfer_toggle_m1 <= 'd0;
      d_xfer_toggle_m2 <= 'd0;
      d_xfer_toggle_m3 <= 'd0;
      d_data_cntrl <= 'd0;;
    end else begin
      d_xfer_toggle_m1 <= up_xfer_toggle;
      d_xfer_toggle_m2 <= d_xfer_toggle_m1;
      d_xfer_toggle_m3 <= d_xfer_toggle_m2;
      if (d_xfer_toggle_s == 1'b1) begin
        d_data_cntrl <= up_xfer_data;
      end
    end
  end

endmodule

// ***************************************************************************
// ***************************************************************************
