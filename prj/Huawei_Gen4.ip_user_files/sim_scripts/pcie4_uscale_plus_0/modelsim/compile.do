vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/gtwizard_ultrascale_v1_7_4

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap gtwizard_ultrascale_v1_7_4 modelsim_lib/msim/gtwizard_ultrascale_v1_7_4

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../ip/pcie4_uscale_plus_0/source" "+incdir+../../../ip/pcie4_uscale_plus_0/source" \
"/opt/Xilinx/Vivado/2018.2.op2258646/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2018.2.op2258646/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2018.2.op2258646/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/opt/Xilinx/Vivado/2018.2.op2258646/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work gtwizard_ultrascale_v1_7_4 -64 -incr "+incdir+../../../ip/pcie4_uscale_plus_0/source" "+incdir+../../../ip/pcie4_uscale_plus_0/source" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_bit_sync.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gte4_drp_arb.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_delay_powergood.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_delay_powergood.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe3_cpll_cal.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe3_cal_freqcnt.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cal_freqcnt.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cal_freqcnt.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_buffbypass_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_buffbypass_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_reset.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userclk_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userclk_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userdata_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userdata_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_reset_sync.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_reset_inv_sync.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../ip/pcie4_uscale_plus_0/source" "+incdir+../../../ip/pcie4_uscale_plus_0/source" \
"../../../ip/pcie4_uscale_plus_0/ip_0/sim/gtwizard_ultrascale_v1_7_gtye4_channel.v" \
"../../../ip/pcie4_uscale_plus_0/ip_0/sim/pcie4_uscale_plus_0_gt_gtye4_channel_wrapper.v" \
"../../../ip/pcie4_uscale_plus_0/ip_0/sim/pcie4_uscale_plus_0_gt_gtwizard_gtye4.v" \
"../../../ip/pcie4_uscale_plus_0/ip_0/sim/pcie4_uscale_plus_0_gt_gtwizard_top.v" \
"../../../ip/pcie4_uscale_plus_0/ip_0/sim/pcie4_uscale_plus_0_gt.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_gtwizard_top.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_phy_ff_chain.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_phy_pipeline.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_bram_16k_int.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_bram_16k.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_bram_32k.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_bram_4k_int.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_bram_msix.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_bram_rep_int.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_bram_rep.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_bram_tph.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_bram.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_gt_gt_channel.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_gt_gt_common.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_gt_phy_clk.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_gt_phy_rst.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_gt_phy_rxeq.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_gt_phy_txeq.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_sync_cell.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_sync.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_gt_cdr_ctrl_on_eidle.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_gt_receiver_detect_rxterm.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_gt_phy_wrapper.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_init_ctrl.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_pl_eq.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_vf_decode.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_pipe.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_phy_top.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_seqnum_fifo.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_sys_clk_gen_ps.v" \
"../../../ip/pcie4_uscale_plus_0/source/pcie4_uscale_plus_0_pcie4_uscale_core_top.v" \
"../../../ip/pcie4_uscale_plus_0/sim/pcie4_uscale_plus_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

