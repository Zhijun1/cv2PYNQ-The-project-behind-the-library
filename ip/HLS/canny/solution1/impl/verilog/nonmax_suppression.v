// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module nonmax_suppression (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        gd_rows_V,
        gd_cols_V,
        gd_data_stream_V_dout,
        gd_data_stream_V_empty_n,
        gd_data_stream_V_read,
        dst_data_stream_V_din,
        dst_data_stream_V_full_n,
        dst_data_stream_V_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state8 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] gd_rows_V;
input  [31:0] gd_cols_V;
input  [15:0] gd_data_stream_V_dout;
input   gd_data_stream_V_empty_n;
output   gd_data_stream_V_read;
output  [15:0] dst_data_stream_V_din;
input   dst_data_stream_V_full_n;
output   dst_data_stream_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg gd_data_stream_V_read;
reg dst_data_stream_V_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    gd_data_stream_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] or_cond_reg_862;
reg    dst_data_stream_V_blk_n;
reg    ap_enable_reg_pp0_iter4;
reg   [0:0] or_cond4_reg_882;
reg   [0:0] ap_reg_pp0_iter3_or_cond4_reg_882;
reg   [31:0] t_V_1_reg_243;
reg   [31:0] ap_reg_pp0_iter1_t_V_1_reg_243;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_state6_pp0_stage0_iter3;
reg    ap_block_state7_pp0_stage0_iter4;
reg    ap_block_pp0_stage0_11001;
reg    ap_block_state1;
wire   [32:0] r_V_fu_259_p2;
wire   [32:0] r_V_1_fu_269_p2;
wire   [32:0] tmp_4_fu_275_p2;
wire   [32:0] r_V_2_fu_281_p2;
wire   [0:0] tmp_6_fu_291_p2;
wire    ap_CS_fsm_state2;
wire   [31:0] i_V_fu_296_p2;
reg   [31:0] i_V_reg_821;
wire   [0:0] tmp_7_fu_302_p2;
reg   [0:0] tmp_7_reg_826;
wire   [0:0] icmp_fu_317_p2;
reg   [0:0] icmp_reg_831;
wire   [0:0] tmp_9_fu_323_p2;
reg   [0:0] tmp_9_reg_836;
wire   [0:0] tmp_s_fu_329_p2;
reg   [0:0] tmp_s_reg_841;
wire   [0:0] tmp_2_fu_338_p2;
reg   [0:0] tmp_2_reg_846;
reg   [0:0] ap_reg_pp0_iter1_tmp_2_reg_846;
wire   [31:0] j_V_fu_343_p2;
reg   [31:0] j_V_reg_850;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] tmp_3_fu_349_p2;
reg   [0:0] tmp_3_reg_855;
reg   [0:0] ap_reg_pp0_iter1_tmp_3_reg_855;
wire   [0:0] or_cond_fu_354_p2;
reg   [0:0] ap_reg_pp0_iter1_or_cond_reg_862;
reg   [10:0] linebuff_val_1_addr_reg_866;
reg   [10:0] ap_reg_pp0_iter1_linebuff_val_1_addr_reg_866;
wire   [0:0] tmp_11_fu_365_p2;
reg   [0:0] tmp_11_reg_877;
reg   [0:0] ap_reg_pp0_iter1_tmp_11_reg_877;
reg   [0:0] ap_reg_pp0_iter2_tmp_11_reg_877;
wire   [0:0] or_cond4_fu_376_p2;
reg   [0:0] ap_reg_pp0_iter1_or_cond4_reg_882;
reg   [0:0] ap_reg_pp0_iter2_or_cond4_reg_882;
wire   [15:0] linebuff_val_0_q0;
reg   [15:0] tmp0_reg_886;
wire   [13:0] out_pixel_val_2_cast_fu_457_p4;
reg   [13:0] out_pixel_val_2_cast_reg_891;
wire   [0:0] icmp1_fu_477_p2;
reg   [0:0] icmp1_reg_896;
wire   [0:0] tmp_18_fu_641_p2;
reg   [0:0] tmp_18_reg_901;
wire   [0:0] tmp_19_fu_647_p2;
reg   [0:0] tmp_19_reg_906;
wire   [13:0] tmp_20_fu_717_p3;
reg   [13:0] tmp_20_reg_911;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
wire   [10:0] linebuff_val_0_address0;
reg    linebuff_val_0_ce0;
wire   [10:0] linebuff_val_0_address1;
reg    linebuff_val_0_ce1;
reg    linebuff_val_0_we1;
wire   [10:0] linebuff_val_1_address0;
reg    linebuff_val_1_ce0;
wire   [15:0] linebuff_val_1_q0;
reg    linebuff_val_1_ce1;
reg    linebuff_val_1_we1;
reg   [31:0] t_V_reg_232;
wire    ap_CS_fsm_state8;
reg   [31:0] ap_phi_mux_t_V_1_phi_fu_247_p4;
wire   [63:0] tmp_8_fu_359_p1;
wire   [63:0] tmp_10_fu_400_p1;
reg    ap_block_pp0_stage0_01001;
reg   [15:0] tmp1_s_fu_128;
reg   [15:0] tmp0_s_fu_132;
reg   [15:0] element_gd_s_fu_136;
reg   [15:0] win_val_0_1_fu_140;
wire   [15:0] win_val_0_0_0_win_va_fu_446_p3;
reg   [15:0] win_val_0_1_1_fu_144;
reg   [15:0] win_val_1_1_fu_148;
wire   [15:0] win_val_1_0_0_win_va_fu_439_p3;
reg   [15:0] win_val_1_1_1_fu_152;
reg   [15:0] win_val_2_1_fu_156;
wire   [15:0] win_val_2_0_0_win_va_fu_432_p3;
reg   [15:0] win_val_2_1_1_fu_160;
wire   [32:0] lhs_V_cast_fu_255_p1;
wire   [32:0] lhs_V_1_cast_fu_265_p1;
wire   [32:0] tmp_cast_fu_287_p1;
wire   [30:0] tmp_fu_307_p4;
wire   [32:0] tmp_1_cast_fu_334_p1;
wire   [0:0] tmp_21_fu_370_p2;
wire   [30:0] tmp_12_fu_467_p4;
wire   [1:0] current_dir_fu_453_p1;
wire   [0:0] tmp_13_fu_483_p2;
wire   [0:0] tmp_14_fu_489_p2;
wire   [0:0] sel_tmp1_fu_501_p2;
wire   [0:0] tmp_15_fu_495_p2;
wire   [13:0] tmp_23_fu_533_p4;
wire   [13:0] tmp_24_fu_543_p4;
wire   [13:0] tmp_17_fu_523_p4;
wire   [13:0] tmp_25_fu_553_p3;
wire   [0:0] sel_tmp2_fu_507_p2;
wire   [13:0] tmp_16_fu_513_p4;
wire   [13:0] tmp_26_fu_561_p3;
wire   [13:0] tmp_30_fu_597_p4;
wire   [13:0] tmp_31_fu_607_p4;
wire   [13:0] tmp_29_fu_587_p4;
wire   [13:0] tmp_32_fu_617_p3;
wire   [13:0] tmp_28_fu_577_p4;
wire   [13:0] tmp_33_fu_625_p3;
wire   [13:0] tmp_34_fu_633_p3;
wire   [13:0] tmp_27_fu_569_p3;
wire   [0:0] tmp2_fu_696_p2;
wire   [0:0] tmp9_fu_692_p2;
wire   [0:0] or_cond3_fu_706_p2;
wire   [0:0] or_cond2_fu_700_p2;
wire   [13:0] out_pixel_val_fu_710_p3;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
end

nonmax_suppressioFfa #(
    .DataWidth( 16 ),
    .AddressRange( 1920 ),
    .AddressWidth( 11 ))
linebuff_val_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(linebuff_val_0_address0),
    .ce0(linebuff_val_0_ce0),
    .q0(linebuff_val_0_q0),
    .address1(linebuff_val_0_address1),
    .ce1(linebuff_val_0_ce1),
    .we1(linebuff_val_0_we1),
    .d1(element_gd_s_fu_136)
);

nonmax_suppressioFfa #(
    .DataWidth( 16 ),
    .AddressRange( 1920 ),
    .AddressWidth( 11 ))
linebuff_val_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(linebuff_val_1_address0),
    .ce0(linebuff_val_1_ce0),
    .q0(linebuff_val_1_q0),
    .address1(ap_reg_pp0_iter1_linebuff_val_1_addr_reg_866),
    .ce1(linebuff_val_1_ce1),
    .we1(linebuff_val_1_we1),
    .d1(tmp0_reg_886)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((tmp_6_fu_291_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((tmp_6_fu_291_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state3)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end else if (((tmp_6_fu_291_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_2_reg_846 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        t_V_1_reg_243 <= j_V_reg_850;
    end else if (((tmp_6_fu_291_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        t_V_1_reg_243 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        t_V_reg_232 <= i_V_reg_821;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        t_V_reg_232 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_reg_pp0_iter1_linebuff_val_1_addr_reg_866 <= linebuff_val_1_addr_reg_866;
        ap_reg_pp0_iter1_or_cond4_reg_882 <= or_cond4_reg_882;
        ap_reg_pp0_iter1_or_cond_reg_862 <= or_cond_reg_862;
        ap_reg_pp0_iter1_t_V_1_reg_243 <= t_V_1_reg_243;
        ap_reg_pp0_iter1_tmp_11_reg_877 <= tmp_11_reg_877;
        ap_reg_pp0_iter1_tmp_2_reg_846 <= tmp_2_reg_846;
        ap_reg_pp0_iter1_tmp_3_reg_855 <= tmp_3_reg_855;
        tmp_2_reg_846 <= tmp_2_fu_338_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_reg_pp0_iter2_or_cond4_reg_882 <= ap_reg_pp0_iter1_or_cond4_reg_882;
        ap_reg_pp0_iter2_tmp_11_reg_877 <= ap_reg_pp0_iter1_tmp_11_reg_877;
        ap_reg_pp0_iter3_or_cond4_reg_882 <= ap_reg_pp0_iter2_or_cond4_reg_882;
        icmp1_reg_896 <= icmp1_fu_477_p2;
        out_pixel_val_2_cast_reg_891 <= {{win_val_1_1_fu_148[15:2]}};
        tmp_18_reg_901 <= tmp_18_fu_641_p2;
        tmp_19_reg_906 <= tmp_19_fu_647_p2;
        tmp_20_reg_911 <= tmp_20_fu_717_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (or_cond_reg_862 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        element_gd_s_fu_136 <= gd_data_stream_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_V_reg_821 <= i_V_fu_296_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_6_fu_291_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        icmp_reg_831 <= icmp_fu_317_p2;
        tmp_7_reg_826 <= tmp_7_fu_302_p2;
        tmp_9_reg_836 <= tmp_9_fu_323_p2;
        tmp_s_reg_841 <= tmp_s_fu_329_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        j_V_reg_850 <= j_V_fu_343_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_3_fu_349_p2 == 1'd1) & (tmp_2_fu_338_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        linebuff_val_1_addr_reg_866 <= tmp_8_fu_359_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_2_fu_338_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        or_cond4_reg_882 <= or_cond4_fu_376_p2;
        or_cond_reg_862 <= or_cond_fu_354_p2;
        tmp_11_reg_877 <= tmp_11_fu_365_p2;
        tmp_3_reg_855 <= tmp_3_fu_349_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_3_reg_855 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp0_reg_886 <= linebuff_val_0_q0;
        tmp0_s_fu_132 <= linebuff_val_0_q0;
        tmp1_s_fu_128 <= linebuff_val_1_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_reg_pp0_iter1_tmp_2_reg_846 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        win_val_0_1_1_fu_144 <= win_val_0_1_fu_140;
        win_val_0_1_fu_140 <= win_val_0_0_0_win_va_fu_446_p3;
        win_val_1_1_1_fu_152 <= win_val_1_1_fu_148;
        win_val_1_1_fu_148 <= win_val_1_0_0_win_va_fu_439_p3;
        win_val_2_1_1_fu_160 <= win_val_2_1_fu_156;
        win_val_2_1_fu_156 <= win_val_2_0_0_win_va_fu_432_p3;
    end
end

always @ (*) begin
    if ((tmp_2_fu_338_p2 == 1'd0)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_6_fu_291_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_2_reg_846 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_t_V_1_phi_fu_247_p4 = j_V_reg_850;
    end else begin
        ap_phi_mux_t_V_1_phi_fu_247_p4 = t_V_1_reg_243;
    end
end

always @ (*) begin
    if (((tmp_6_fu_291_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_reg_pp0_iter3_or_cond4_reg_882 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        dst_data_stream_V_blk_n = dst_data_stream_V_full_n;
    end else begin
        dst_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_reg_pp0_iter3_or_cond4_reg_882 == 1'd0) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        dst_data_stream_V_write = 1'b1;
    end else begin
        dst_data_stream_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((or_cond_reg_862 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        gd_data_stream_V_blk_n = gd_data_stream_V_empty_n;
    end else begin
        gd_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (or_cond_reg_862 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        gd_data_stream_V_read = 1'b1;
    end else begin
        gd_data_stream_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        linebuff_val_0_ce0 = 1'b1;
    end else begin
        linebuff_val_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        linebuff_val_0_ce1 = 1'b1;
    end else begin
        linebuff_val_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_reg_pp0_iter1_or_cond_reg_862 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        linebuff_val_0_we1 = 1'b1;
    end else begin
        linebuff_val_0_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        linebuff_val_1_ce0 = 1'b1;
    end else begin
        linebuff_val_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        linebuff_val_1_ce1 = 1'b1;
    end else begin
        linebuff_val_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_reg_pp0_iter1_tmp_3_reg_855 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        linebuff_val_1_we1 = 1'b1;
    end else begin
        linebuff_val_1_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((tmp_6_fu_291_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((tmp_2_fu_338_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) & ~((ap_enable_reg_pp0_iter4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((tmp_2_fu_338_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_reg_pp0_iter3_or_cond4_reg_882 == 1'd0) & (dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((or_cond_reg_862 == 1'd1) & (gd_data_stream_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_reg_pp0_iter3_or_cond4_reg_882 == 1'd0) & (dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((or_cond_reg_862 == 1'd1) & (gd_data_stream_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_reg_pp0_iter3_or_cond4_reg_882 == 1'd0) & (dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((or_cond_reg_862 == 1'd1) & (gd_data_stream_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = ((or_cond_reg_862 == 1'd1) & (gd_data_stream_V_empty_n == 1'b0));
end

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state7_pp0_stage0_iter4 = ((ap_reg_pp0_iter3_or_cond4_reg_882 == 1'd0) & (dst_data_stream_V_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign current_dir_fu_453_p1 = win_val_1_1_fu_148[1:0];

assign dst_data_stream_V_din = tmp_20_reg_911;

assign i_V_fu_296_p2 = (t_V_reg_232 + 32'd1);

assign icmp1_fu_477_p2 = ((tmp_12_fu_467_p4 == 31'd0) ? 1'b1 : 1'b0);

assign icmp_fu_317_p2 = ((tmp_fu_307_p4 == 31'd0) ? 1'b1 : 1'b0);

assign j_V_fu_343_p2 = (ap_phi_mux_t_V_1_phi_fu_247_p4 + 32'd1);

assign lhs_V_1_cast_fu_265_p1 = gd_cols_V;

assign lhs_V_cast_fu_255_p1 = gd_rows_V;

assign linebuff_val_0_address0 = tmp_8_fu_359_p1;

assign linebuff_val_0_address1 = tmp_10_fu_400_p1;

assign linebuff_val_1_address0 = tmp_8_fu_359_p1;

assign or_cond2_fu_700_p2 = (tmp9_fu_692_p2 | tmp2_fu_696_p2);

assign or_cond3_fu_706_p2 = (tmp_19_reg_906 & tmp_18_reg_901);

assign or_cond4_fu_376_p2 = (tmp_9_reg_836 | tmp_21_fu_370_p2);

assign or_cond_fu_354_p2 = (tmp_7_reg_826 & tmp_3_fu_349_p2);

assign out_pixel_val_2_cast_fu_457_p4 = {{win_val_1_1_fu_148[15:2]}};

assign out_pixel_val_fu_710_p3 = ((or_cond3_fu_706_p2[0:0] === 1'b1) ? out_pixel_val_2_cast_reg_891 : 14'd0);

assign r_V_1_fu_269_p2 = (lhs_V_1_cast_fu_265_p1 + 33'd1);

assign r_V_2_fu_281_p2 = ($signed(lhs_V_1_cast_fu_265_p1) + $signed(33'd8589934591));

assign r_V_fu_259_p2 = (lhs_V_cast_fu_255_p1 + 33'd1);

assign sel_tmp1_fu_501_p2 = (tmp_13_fu_483_p2 ^ 1'd1);

assign sel_tmp2_fu_507_p2 = (tmp_14_fu_489_p2 & sel_tmp1_fu_501_p2);

assign tmp2_fu_696_p2 = (tmp_s_reg_841 | ap_reg_pp0_iter2_tmp_11_reg_877);

assign tmp9_fu_692_p2 = (icmp_reg_831 | icmp1_reg_896);

assign tmp_10_fu_400_p1 = ap_reg_pp0_iter1_t_V_1_reg_243;

assign tmp_11_fu_365_p2 = (($signed(tmp_1_cast_fu_334_p1) > $signed(r_V_2_fu_281_p2)) ? 1'b1 : 1'b0);

assign tmp_12_fu_467_p4 = {{ap_reg_pp0_iter1_t_V_1_reg_243[31:1]}};

assign tmp_13_fu_483_p2 = ((current_dir_fu_453_p1 == 2'd0) ? 1'b1 : 1'b0);

assign tmp_14_fu_489_p2 = ((current_dir_fu_453_p1 == 2'd1) ? 1'b1 : 1'b0);

assign tmp_15_fu_495_p2 = ((current_dir_fu_453_p1 == 2'd2) ? 1'b1 : 1'b0);

assign tmp_16_fu_513_p4 = {{win_val_0_1_1_fu_144[15:2]}};

assign tmp_17_fu_523_p4 = {{win_val_1_1_1_fu_152[15:2]}};

assign tmp_18_fu_641_p2 = ((out_pixel_val_2_cast_fu_457_p4 > tmp_34_fu_633_p3) ? 1'b1 : 1'b0);

assign tmp_19_fu_647_p2 = ((out_pixel_val_2_cast_fu_457_p4 > tmp_27_fu_569_p3) ? 1'b1 : 1'b0);

assign tmp_1_cast_fu_334_p1 = ap_phi_mux_t_V_1_phi_fu_247_p4;

assign tmp_20_fu_717_p3 = ((or_cond2_fu_700_p2[0:0] === 1'b1) ? 14'd0 : out_pixel_val_fu_710_p3);

assign tmp_21_fu_370_p2 = ((ap_phi_mux_t_V_1_phi_fu_247_p4 == 32'd0) ? 1'b1 : 1'b0);

assign tmp_23_fu_533_p4 = {{win_val_2_1_fu_156[15:2]}};

assign tmp_24_fu_543_p4 = {{win_val_0_0_0_win_va_fu_446_p3[15:2]}};

assign tmp_25_fu_553_p3 = ((tmp_15_fu_495_p2[0:0] === 1'b1) ? tmp_23_fu_533_p4 : tmp_24_fu_543_p4);

assign tmp_26_fu_561_p3 = ((tmp_13_fu_483_p2[0:0] === 1'b1) ? tmp_17_fu_523_p4 : tmp_25_fu_553_p3);

assign tmp_27_fu_569_p3 = ((sel_tmp2_fu_507_p2[0:0] === 1'b1) ? tmp_16_fu_513_p4 : tmp_26_fu_561_p3);

assign tmp_28_fu_577_p4 = {{win_val_2_0_0_win_va_fu_432_p3[15:2]}};

assign tmp_29_fu_587_p4 = {{win_val_1_0_0_win_va_fu_439_p3[15:2]}};

assign tmp_2_fu_338_p2 = ((tmp_1_cast_fu_334_p1 < r_V_1_fu_269_p2) ? 1'b1 : 1'b0);

assign tmp_30_fu_597_p4 = {{win_val_0_1_fu_140[15:2]}};

assign tmp_31_fu_607_p4 = {{win_val_2_1_1_fu_160[15:2]}};

assign tmp_32_fu_617_p3 = ((tmp_15_fu_495_p2[0:0] === 1'b1) ? tmp_30_fu_597_p4 : tmp_31_fu_607_p4);

assign tmp_33_fu_625_p3 = ((tmp_13_fu_483_p2[0:0] === 1'b1) ? tmp_29_fu_587_p4 : tmp_32_fu_617_p3);

assign tmp_34_fu_633_p3 = ((sel_tmp2_fu_507_p2[0:0] === 1'b1) ? tmp_28_fu_577_p4 : tmp_33_fu_625_p3);

assign tmp_3_fu_349_p2 = ((ap_phi_mux_t_V_1_phi_fu_247_p4 < gd_cols_V) ? 1'b1 : 1'b0);

assign tmp_4_fu_275_p2 = ($signed(lhs_V_cast_fu_255_p1) + $signed(33'd8589934591));

assign tmp_6_fu_291_p2 = ((tmp_cast_fu_287_p1 < r_V_fu_259_p2) ? 1'b1 : 1'b0);

assign tmp_7_fu_302_p2 = ((t_V_reg_232 < gd_rows_V) ? 1'b1 : 1'b0);

assign tmp_8_fu_359_p1 = ap_phi_mux_t_V_1_phi_fu_247_p4;

assign tmp_9_fu_323_p2 = ((t_V_reg_232 == 32'd0) ? 1'b1 : 1'b0);

assign tmp_cast_fu_287_p1 = t_V_reg_232;

assign tmp_fu_307_p4 = {{t_V_reg_232[31:1]}};

assign tmp_s_fu_329_p2 = (($signed(tmp_cast_fu_287_p1) > $signed(tmp_4_fu_275_p2)) ? 1'b1 : 1'b0);

assign win_val_0_0_0_win_va_fu_446_p3 = ((ap_reg_pp0_iter1_tmp_3_reg_855[0:0] === 1'b1) ? element_gd_s_fu_136 : win_val_0_1_fu_140);

assign win_val_1_0_0_win_va_fu_439_p3 = ((ap_reg_pp0_iter1_tmp_3_reg_855[0:0] === 1'b1) ? tmp0_s_fu_132 : win_val_1_1_fu_148);

assign win_val_2_0_0_win_va_fu_432_p3 = ((ap_reg_pp0_iter1_tmp_3_reg_855[0:0] === 1'b1) ? tmp1_s_fu_128 : win_val_2_1_fu_156);

endmodule //nonmax_suppression