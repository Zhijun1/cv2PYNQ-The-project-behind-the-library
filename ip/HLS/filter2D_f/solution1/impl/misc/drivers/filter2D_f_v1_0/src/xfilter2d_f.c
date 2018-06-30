// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

/***************************** Include Files *********************************/
#include "xfilter2d_f.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFilter2d_f_CfgInitialize(XFilter2d_f *InstancePtr, XFilter2d_f_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_bus_BaseAddress = ConfigPtr->Control_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFilter2d_f_Start(XFilter2d_f *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter2d_f_ReadReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_AP_CTRL) & 0x80;
    XFilter2d_f_WriteReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XFilter2d_f_IsDone(XFilter2d_f *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter2d_f_ReadReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XFilter2d_f_IsIdle(XFilter2d_f *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter2d_f_ReadReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XFilter2d_f_IsReady(XFilter2d_f *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter2d_f_ReadReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XFilter2d_f_EnableAutoRestart(XFilter2d_f *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter2d_f_WriteReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_AP_CTRL, 0x80);
}

void XFilter2d_f_DisableAutoRestart(XFilter2d_f *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter2d_f_WriteReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_AP_CTRL, 0);
}

void XFilter2d_f_Set_rows_V(XFilter2d_f *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter2d_f_WriteReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_ROWS_V_DATA, Data);
}

u32 XFilter2d_f_Get_rows_V(XFilter2d_f *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter2d_f_ReadReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_ROWS_V_DATA);
    return Data;
}

void XFilter2d_f_Set_cols_V(XFilter2d_f *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter2d_f_WriteReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_COLS_V_DATA, Data);
}

u32 XFilter2d_f_Get_cols_V(XFilter2d_f *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter2d_f_ReadReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_COLS_V_DATA);
    return Data;
}

void XFilter2d_f_Set_channels_V(XFilter2d_f *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter2d_f_WriteReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_CHANNELS_V_DATA, Data);
}

u32 XFilter2d_f_Get_channels_V(XFilter2d_f *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter2d_f_ReadReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_CHANNELS_V_DATA);
    return Data;
}

void XFilter2d_f_Set_mode_V(XFilter2d_f *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter2d_f_WriteReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_MODE_V_DATA, Data);
}

u32 XFilter2d_f_Get_mode_V(XFilter2d_f *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter2d_f_ReadReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_MODE_V_DATA);
    return Data;
}

void XFilter2d_f_Set_r11_V(XFilter2d_f *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter2d_f_WriteReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_R11_V_DATA, Data);
}

u32 XFilter2d_f_Get_r11_V(XFilter2d_f *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter2d_f_ReadReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_R11_V_DATA);
    return Data;
}

void XFilter2d_f_Set_r12_V(XFilter2d_f *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter2d_f_WriteReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_R12_V_DATA, Data);
}

u32 XFilter2d_f_Get_r12_V(XFilter2d_f *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter2d_f_ReadReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_R12_V_DATA);
    return Data;
}

void XFilter2d_f_Set_r13_V(XFilter2d_f *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter2d_f_WriteReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_R13_V_DATA, Data);
}

u32 XFilter2d_f_Get_r13_V(XFilter2d_f *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter2d_f_ReadReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_R13_V_DATA);
    return Data;
}

void XFilter2d_f_Set_r21_V(XFilter2d_f *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter2d_f_WriteReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_R21_V_DATA, Data);
}

u32 XFilter2d_f_Get_r21_V(XFilter2d_f *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter2d_f_ReadReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_R21_V_DATA);
    return Data;
}

void XFilter2d_f_Set_r22_V(XFilter2d_f *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter2d_f_WriteReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_R22_V_DATA, Data);
}

u32 XFilter2d_f_Get_r22_V(XFilter2d_f *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter2d_f_ReadReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_R22_V_DATA);
    return Data;
}

void XFilter2d_f_Set_r23_V(XFilter2d_f *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter2d_f_WriteReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_R23_V_DATA, Data);
}

u32 XFilter2d_f_Get_r23_V(XFilter2d_f *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter2d_f_ReadReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_R23_V_DATA);
    return Data;
}

void XFilter2d_f_Set_r31_V(XFilter2d_f *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter2d_f_WriteReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_R31_V_DATA, Data);
}

u32 XFilter2d_f_Get_r31_V(XFilter2d_f *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter2d_f_ReadReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_R31_V_DATA);
    return Data;
}

void XFilter2d_f_Set_r32_V(XFilter2d_f *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter2d_f_WriteReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_R32_V_DATA, Data);
}

u32 XFilter2d_f_Get_r32_V(XFilter2d_f *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter2d_f_ReadReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_R32_V_DATA);
    return Data;
}

void XFilter2d_f_Set_r33_V(XFilter2d_f *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter2d_f_WriteReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_R33_V_DATA, Data);
}

u32 XFilter2d_f_Get_r33_V(XFilter2d_f *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter2d_f_ReadReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_R33_V_DATA);
    return Data;
}

void XFilter2d_f_InterruptGlobalEnable(XFilter2d_f *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter2d_f_WriteReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_GIE, 1);
}

void XFilter2d_f_InterruptGlobalDisable(XFilter2d_f *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter2d_f_WriteReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_GIE, 0);
}

void XFilter2d_f_InterruptEnable(XFilter2d_f *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFilter2d_f_ReadReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_IER);
    XFilter2d_f_WriteReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_IER, Register | Mask);
}

void XFilter2d_f_InterruptDisable(XFilter2d_f *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFilter2d_f_ReadReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_IER);
    XFilter2d_f_WriteReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_IER, Register & (~Mask));
}

void XFilter2d_f_InterruptClear(XFilter2d_f *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter2d_f_WriteReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_ISR, Mask);
}

u32 XFilter2d_f_InterruptGetEnabled(XFilter2d_f *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFilter2d_f_ReadReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_IER);
}

u32 XFilter2d_f_InterruptGetStatus(XFilter2d_f *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFilter2d_f_ReadReg(InstancePtr->Control_bus_BaseAddress, XFILTER2D_F_CONTROL_BUS_ADDR_ISR);
}
