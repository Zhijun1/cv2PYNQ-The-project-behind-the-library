// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xdilate_hls.h"

extern XDilate_hls_Config XDilate_hls_ConfigTable[];

XDilate_hls_Config *XDilate_hls_LookupConfig(u16 DeviceId) {
	XDilate_hls_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDILATE_HLS_NUM_INSTANCES; Index++) {
		if (XDilate_hls_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XDilate_hls_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDilate_hls_Initialize(XDilate_hls *InstancePtr, u16 DeviceId) {
	XDilate_hls_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDilate_hls_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDilate_hls_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif
