;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module DAP
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _calc
	.globl _SWD_Sequence
	.globl _SWJ_Sequence
	.globl _SWD_Transfer
	.globl _PORT_SWD_SETUP
	.globl _memcpy
	.globl _P1_4
	.globl _P1_7
	.globl _P3_2
	.globl _P1_5
	.globl _UIF_BUS_RST
	.globl _UIF_TRANSFER
	.globl _UIF_SUSPEND
	.globl _UIF_FIFO_OV
	.globl _U_SIE_FREE
	.globl _U_TOG_OK
	.globl _U_IS_NAK
	.globl _ADC_CHAN0
	.globl _ADC_CHAN1
	.globl _CMP_CHAN
	.globl _ADC_START
	.globl _ADC_IF
	.globl _CMP_IF
	.globl _CMPO
	.globl _U1RI
	.globl _U1TI
	.globl _U1RB8
	.globl _U1TB8
	.globl _U1REN
	.globl _U1SMOD
	.globl _U1SM0
	.globl _S0_R_FIFO
	.globl _S0_T_FIFO
	.globl _S0_FREE
	.globl _S0_IF_BYTE
	.globl _S0_IF_FIRST
	.globl _S0_IF_OV
	.globl _S0_FST_ACT
	.globl _CP_RL2
	.globl _C_T2
	.globl _TR2
	.globl _EXEN2
	.globl _TCLK
	.globl _RCLK
	.globl _EXF2
	.globl _CAP1F
	.globl _TF2
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _RXD
	.globl _PWM1_
	.globl _TXD
	.globl _PWM2_
	.globl _AIN3
	.globl _VBUS1
	.globl _INT0
	.globl _TXD1_
	.globl _INT1
	.globl _T0
	.globl _RXD1_
	.globl _PWM2
	.globl _T1
	.globl _UDP
	.globl _UDM
	.globl _TIN0
	.globl _CAP1
	.globl _T2
	.globl _AIN0
	.globl _VBUS2
	.globl _TIN1
	.globl _CAP2
	.globl _T2EX
	.globl _RXD_
	.globl _TXD_
	.globl _AIN1
	.globl _UCC1
	.globl _TIN2
	.globl _SCS
	.globl _CAP1_
	.globl _T2_
	.globl _AIN2
	.globl _UCC2
	.globl _TIN3
	.globl _PWM1
	.globl _MOSI
	.globl _TIN4
	.globl _RXD1
	.globl _MISO
	.globl _TIN5
	.globl _TXD1
	.globl _SCK
	.globl _IE_SPI0
	.globl _IE_TKEY
	.globl _IE_USB
	.globl _IE_ADC
	.globl _IE_UART1
	.globl _IE_PWMX
	.globl _IE_GPIO
	.globl _IE_WDOG
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PT2
	.globl _PL_FLAG
	.globl _PH_FLAG
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _ET2
	.globl _E_DIS
	.globl _EA
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _UEP1_DMA_H
	.globl _UEP1_DMA_L
	.globl _UEP1_DMA
	.globl _UEP0_DMA_H
	.globl _UEP0_DMA_L
	.globl _UEP0_DMA
	.globl _UEP2_3_MOD
	.globl _UEP4_1_MOD
	.globl _UEP3_DMA_H
	.globl _UEP3_DMA_L
	.globl _UEP3_DMA
	.globl _UEP2_DMA_H
	.globl _UEP2_DMA_L
	.globl _UEP2_DMA
	.globl _USB_DEV_AD
	.globl _USB_CTRL
	.globl _USB_INT_EN
	.globl _UEP4_T_LEN
	.globl _UEP4_CTRL
	.globl _UEP0_T_LEN
	.globl _UEP0_CTRL
	.globl _USB_RX_LEN
	.globl _USB_MIS_ST
	.globl _USB_INT_ST
	.globl _USB_INT_FG
	.globl _UEP3_T_LEN
	.globl _UEP3_CTRL
	.globl _UEP2_T_LEN
	.globl _UEP2_CTRL
	.globl _UEP1_T_LEN
	.globl _UEP1_CTRL
	.globl _UDEV_CTRL
	.globl _USB_C_CTRL
	.globl _TKEY_DATH
	.globl _TKEY_DATL
	.globl _TKEY_DAT
	.globl _TKEY_CTRL
	.globl _ADC_DATA
	.globl _ADC_CFG
	.globl _ADC_CTRL
	.globl _SBAUD1
	.globl _SBUF1
	.globl _SCON1
	.globl _SPI0_SETUP
	.globl _SPI0_CK_SE
	.globl _SPI0_CTRL
	.globl _SPI0_DATA
	.globl _SPI0_STAT
	.globl _PWM_CK_SE
	.globl _PWM_CTRL
	.globl _PWM_DATA1
	.globl _PWM_DATA2
	.globl _T2CAP1H
	.globl _T2CAP1L
	.globl _T2CAP1
	.globl _TH2
	.globl _TL2
	.globl _T2COUNT
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _RCAP2
	.globl _T2MOD
	.globl _T2CON
	.globl _SBUF
	.globl _SCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _XBUS_AUX
	.globl _PIN_FUNC
	.globl _P3_DIR_PU
	.globl _P3_MOD_OC
	.globl _P3
	.globl _P2
	.globl _P1_DIR_PU
	.globl _P1_MOD_OC
	.globl _P1
	.globl _ROM_CTRL
	.globl _ROM_DATA_H
	.globl _ROM_DATA_L
	.globl _ROM_DATA
	.globl _ROM_ADDR_H
	.globl _ROM_ADDR_L
	.globl _ROM_ADDR
	.globl _GPIO_IE
	.globl _IP_EX
	.globl _IE_EX
	.globl _IP
	.globl _IE
	.globl _WDOG_COUNT
	.globl _RESET_KEEP
	.globl _WAKE_CTRL
	.globl _CLOCK_CFG
	.globl _PCON
	.globl _GLOBAL_CFG
	.globl _SAFE_MOD
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _datas
	.globl _clock_delay
	.globl _fast_clock
	.globl _retry
	.globl _response_value
	.globl _response_count
	.globl _request_value
	.globl _request_count
	.globl _DAP_TransferAbort
	.globl _match_value
	.globl _match_mask
	.globl _match_retry
	.globl _retry_count
	.globl _idle_cycles
	.globl _data_phase
	.globl _turnaround
	.globl _debug_port
	.globl _DAP_Thread
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_SAFE_MOD	=	0x00a1
_GLOBAL_CFG	=	0x00b1
_PCON	=	0x0087
_CLOCK_CFG	=	0x00b9
_WAKE_CTRL	=	0x00a9
_RESET_KEEP	=	0x00fe
_WDOG_COUNT	=	0x00ff
_IE	=	0x00a8
_IP	=	0x00b8
_IE_EX	=	0x00e8
_IP_EX	=	0x00e9
_GPIO_IE	=	0x00c7
_ROM_ADDR	=	0x8584
_ROM_ADDR_L	=	0x0084
_ROM_ADDR_H	=	0x0085
_ROM_DATA	=	0x8f8e
_ROM_DATA_L	=	0x008e
_ROM_DATA_H	=	0x008f
_ROM_CTRL	=	0x0086
_P1	=	0x0090
_P1_MOD_OC	=	0x0092
_P1_DIR_PU	=	0x0093
_P2	=	0x00a0
_P3	=	0x00b0
_P3_MOD_OC	=	0x0096
_P3_DIR_PU	=	0x0097
_PIN_FUNC	=	0x00c6
_XBUS_AUX	=	0x00a2
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_SCON	=	0x0098
_SBUF	=	0x0099
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2	=	0xcbca
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_T2COUNT	=	0xcdcc
_TL2	=	0x00cc
_TH2	=	0x00cd
_T2CAP1	=	0xcfce
_T2CAP1L	=	0x00ce
_T2CAP1H	=	0x00cf
_PWM_DATA2	=	0x009b
_PWM_DATA1	=	0x009c
_PWM_CTRL	=	0x009d
_PWM_CK_SE	=	0x009e
_SPI0_STAT	=	0x00f8
_SPI0_DATA	=	0x00f9
_SPI0_CTRL	=	0x00fa
_SPI0_CK_SE	=	0x00fb
_SPI0_SETUP	=	0x00fc
_SCON1	=	0x00c0
_SBUF1	=	0x00c1
_SBAUD1	=	0x00c2
_ADC_CTRL	=	0x0080
_ADC_CFG	=	0x009a
_ADC_DATA	=	0x009f
_TKEY_CTRL	=	0x00c3
_TKEY_DAT	=	0xc5c4
_TKEY_DATL	=	0x00c4
_TKEY_DATH	=	0x00c5
_USB_C_CTRL	=	0x0091
_UDEV_CTRL	=	0x00d1
_UEP1_CTRL	=	0x00d2
_UEP1_T_LEN	=	0x00d3
_UEP2_CTRL	=	0x00d4
_UEP2_T_LEN	=	0x00d5
_UEP3_CTRL	=	0x00d6
_UEP3_T_LEN	=	0x00d7
_USB_INT_FG	=	0x00d8
_USB_INT_ST	=	0x00d9
_USB_MIS_ST	=	0x00da
_USB_RX_LEN	=	0x00db
_UEP0_CTRL	=	0x00dc
_UEP0_T_LEN	=	0x00dd
_UEP4_CTRL	=	0x00de
_UEP4_T_LEN	=	0x00df
_USB_INT_EN	=	0x00e1
_USB_CTRL	=	0x00e2
_USB_DEV_AD	=	0x00e3
_UEP2_DMA	=	0xe5e4
_UEP2_DMA_L	=	0x00e4
_UEP2_DMA_H	=	0x00e5
_UEP3_DMA	=	0xe7e6
_UEP3_DMA_L	=	0x00e6
_UEP3_DMA_H	=	0x00e7
_UEP4_1_MOD	=	0x00ea
_UEP2_3_MOD	=	0x00eb
_UEP0_DMA	=	0xedec
_UEP0_DMA_L	=	0x00ec
_UEP0_DMA_H	=	0x00ed
_UEP1_DMA	=	0xefee
_UEP1_DMA_L	=	0x00ee
_UEP1_DMA_H	=	0x00ef
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_EA	=	0x00af
_E_DIS	=	0x00ae
_ET2	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_PH_FLAG	=	0x00bf
_PL_FLAG	=	0x00be
_PT2	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_IE_WDOG	=	0x00ef
_IE_GPIO	=	0x00ee
_IE_PWMX	=	0x00ed
_IE_UART1	=	0x00ec
_IE_ADC	=	0x00eb
_IE_USB	=	0x00ea
_IE_TKEY	=	0x00e9
_IE_SPI0	=	0x00e8
_SCK	=	0x0097
_TXD1	=	0x0097
_TIN5	=	0x0097
_MISO	=	0x0096
_RXD1	=	0x0096
_TIN4	=	0x0096
_MOSI	=	0x0095
_PWM1	=	0x0095
_TIN3	=	0x0095
_UCC2	=	0x0095
_AIN2	=	0x0095
_T2_	=	0x0094
_CAP1_	=	0x0094
_SCS	=	0x0094
_TIN2	=	0x0094
_UCC1	=	0x0094
_AIN1	=	0x0094
_TXD_	=	0x0093
_RXD_	=	0x0092
_T2EX	=	0x0091
_CAP2	=	0x0091
_TIN1	=	0x0091
_VBUS2	=	0x0091
_AIN0	=	0x0091
_T2	=	0x0090
_CAP1	=	0x0090
_TIN0	=	0x0090
_UDM	=	0x00b7
_UDP	=	0x00b6
_T1	=	0x00b5
_PWM2	=	0x00b4
_RXD1_	=	0x00b4
_T0	=	0x00b4
_INT1	=	0x00b3
_TXD1_	=	0x00b2
_INT0	=	0x00b2
_VBUS1	=	0x00b2
_AIN3	=	0x00b2
_PWM2_	=	0x00b1
_TXD	=	0x00b1
_PWM1_	=	0x00b0
_RXD	=	0x00b0
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_TF2	=	0x00cf
_CAP1F	=	0x00cf
_EXF2	=	0x00ce
_RCLK	=	0x00cd
_TCLK	=	0x00cc
_EXEN2	=	0x00cb
_TR2	=	0x00ca
_C_T2	=	0x00c9
_CP_RL2	=	0x00c8
_S0_FST_ACT	=	0x00ff
_S0_IF_OV	=	0x00fe
_S0_IF_FIRST	=	0x00fd
_S0_IF_BYTE	=	0x00fc
_S0_FREE	=	0x00fb
_S0_T_FIFO	=	0x00fa
_S0_R_FIFO	=	0x00f8
_U1SM0	=	0x00c7
_U1SMOD	=	0x00c5
_U1REN	=	0x00c4
_U1TB8	=	0x00c3
_U1RB8	=	0x00c2
_U1TI	=	0x00c1
_U1RI	=	0x00c0
_CMPO	=	0x0087
_CMP_IF	=	0x0086
_ADC_IF	=	0x0085
_ADC_START	=	0x0084
_CMP_CHAN	=	0x0083
_ADC_CHAN1	=	0x0081
_ADC_CHAN0	=	0x0080
_U_IS_NAK	=	0x00df
_U_TOG_OK	=	0x00de
_U_SIE_FREE	=	0x00dd
_UIF_FIFO_OV	=	0x00dc
_UIF_SUSPEND	=	0x00da
_UIF_TRANSFER	=	0x00d9
_UIF_BUS_RST	=	0x00d8
_P1_5	=	0x0095
_P3_2	=	0x00b2
_P1_7	=	0x0097
_P1_4	=	0x0094
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_DAP_Info_PARM_2:
	.ds 3
_DAP_Connect_PARM_2:
	.ds 3
_DAP_SWJ_Clock_PARM_2:
	.ds 3
_DAP_SWJ_Sequence_PARM_2:
	.ds 3
_DAP_SWD_Sequence_PARM_2:
	.ds 3
_DAP_SWD_Sequence_response_count_65536_84:
	.ds 1
_DAP_SWD_Transfer_PARM_2:
	.ds 3
_DAP_SWD_Transfer_response_head_65536_95:
	.ds 3
_DAP_SWD_Transfer_post_read_65536_95:
	.ds 1
_DAP_SWD_Transfer_check_write_65536_95:
	.ds 1
_DAP_SWD_Transfer_sloc0_1_0:
	.ds 3
_DAP_Transfer_PARM_2:
	.ds 3
_DAP_SWD_TransferBlock_PARM_2:
	.ds 3
_DAP_SWD_TransferBlock_response_head_65536_145:
	.ds 3
_DAP_SWD_TransferBlock_sloc0_1_0:
	.ds 2
_DAP_SWD_TransferBlock_sloc1_1_0:
	.ds 3
_DAP_TransferBlock_PARM_2:
	.ds 3
_DAP_TransferBlock_sloc0_1_0:
	.ds 3
_DAP_SWD_WriteAbort_PARM_2:
	.ds 3
_DAP_WriteAbort_PARM_2:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_DAP_Delay_PARM_2:
	.ds 3
	.area	OSEG    (OVR,DATA)
_DAP_HostStatus_PARM_2:
	.ds 3
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_DAP_SWJ_Pins_PARM_2:
	.ds 3
_DAP_SWJ_Pins_req_65536_57:
	.ds 3
_DAP_SWJ_Pins_select_65536_58:
	.ds 1
_DAP_SWJ_Pins_sloc0_1_0:
	.ds 1
_DAP_SWJ_Pins_sloc1_1_0:
	.ds 2
_DAP_SWJ_Pins_sloc2_1_0:
	.ds 1
_DAP_SWJ_Pins_sloc3_1_0:
	.ds 1
_DAP_SWJ_Pins_sloc4_1_0:
	.ds 1
	.area	OSEG    (OVR,DATA)
_DAP_SWD_Configure_PARM_2:
	.ds 3
	.area	OSEG    (OVR,DATA)
_DAP_TransferConfigure_PARM_2:
	.ds 3
_DAP_TransferConfigure_req_65536_92:
	.ds 3
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
_debug_port::
	.ds 1
_turnaround::
	.ds 1
_data_phase::
	.ds 1
_idle_cycles::
	.ds 1
_retry_count::
	.ds 2
_match_retry::
	.ds 2
_match_mask::
	.ds 4
_match_value::
	.ds 4
_DAP_TransferAbort::
	.ds 1
_request_count::
	.ds 1
_request_value::
	.ds 1
_response_count::
	.ds 1
_response_value::
	.ds 1
_retry::
	.ds 2
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_fast_clock::
	.ds 4
_clock_delay::
	.ds 1
_datas::
	.ds 4
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;	DAP.c:447: __idata uint8_t DAP_TransferAbort = 0U;
	mov	r0,#_DAP_TransferAbort
	mov	@r0,#0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_Info'
;------------------------------------------------------------
;info                      Allocated with name '_DAP_Info_PARM_2'
;id                        Allocated to registers r7 
;length                    Allocated to registers r6 
;------------------------------------------------------------
;	DAP.c:34: static uint8_t DAP_Info(uint8_t id, uint8_t *info)
;	-----------------------------------------
;	 function DAP_Info
;	-----------------------------------------
_DAP_Info:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	DAP.c:36: uint8_t length = 0U;
	mov	r6,#0x00
;	DAP.c:38: switch (id)
	cjne	r7,#0x01,00160$
	sjmp	00101$
00160$:
	cjne	r7,#0x02,00161$
	sjmp	00102$
00161$:
	cjne	r7,#0x03,00162$
	sjmp	00103$
00162$:
	cjne	r7,#0x04,00163$
	sjmp	00104$
00163$:
	cjne	r7,#0x05,00164$
	ljmp	00113$
00164$:
	cjne	r7,#0x06,00165$
	ljmp	00113$
00165$:
	cjne	r7,#0xf0,00166$
	sjmp	00107$
00166$:
	cjne	r7,#0xf1,00167$
	ljmp	00113$
00167$:
	cjne	r7,#0xfd,00168$
	ljmp	00113$
00168$:
	cjne	r7,#0xfe,00169$
	sjmp	00111$
00169$:
	cjne	r7,#0xff,00170$
	sjmp	00110$
00170$:
	ljmp	00113$
;	DAP.c:40: case DAP_ID_VENDOR:
00101$:
;	DAP.c:41: length = 0;
	mov	r6,#0x00
;	DAP.c:42: break;
	ljmp	00113$
;	DAP.c:43: case DAP_ID_PRODUCT:
00102$:
;	DAP.c:44: length = 0;
	mov	r6,#0x00
;	DAP.c:45: break;
;	DAP.c:46: case DAP_ID_SER_NUM:
	sjmp	00113$
00103$:
;	DAP.c:47: length = 0;
	mov	r6,#0x00
;	DAP.c:48: break;
;	DAP.c:49: case DAP_ID_FW_VER:
	sjmp	00113$
00104$:
;	DAP.c:50: length = (uint8_t)sizeof(DAP_FW_VER);
	mov	r6,#0x05
;	DAP.c:51: memcpy(info, DAP_FW_VER, length);
	mov	r4,_DAP_Info_PARM_2
	mov	r5,(_DAP_Info_PARM_2 + 1)
	mov	r7,(_DAP_Info_PARM_2 + 2)
	mov	_memcpy_PARM_2,#__str_0
	mov	(_memcpy_PARM_2 + 1),#(__str_0 >> 8)
	mov	(_memcpy_PARM_2 + 2),#(__str_0 >> 16)
;	1-genFromRTrack replaced	mov	_memcpy_PARM_3,#0x05
	mov	_memcpy_PARM_3,r6
	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	push	ar6
	lcall	_memcpy
	pop	ar6
;	DAP.c:52: break;
;	DAP.c:59: case DAP_ID_CAPABILITIES:
	sjmp	00113$
00107$:
;	DAP.c:60: info[0] = DAP_PORT_SWD | (1 << 4);
	mov	r4,_DAP_Info_PARM_2
	mov	r5,(_DAP_Info_PARM_2 + 1)
	mov	r7,(_DAP_Info_PARM_2 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	mov	a,#0x11
	lcall	__gptrput
;	DAP.c:61: length = 1U;
	mov	r6,#0x01
;	DAP.c:62: break;
;	DAP.c:69: case DAP_ID_PACKET_SIZE:
	sjmp	00113$
00110$:
;	DAP.c:70: info[0] = (uint8_t)(DAP_PACKET_SIZE >> 0);
	mov	r4,_DAP_Info_PARM_2
	mov	r5,(_DAP_Info_PARM_2 + 1)
	mov	r7,(_DAP_Info_PARM_2 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	mov	a,#0x40
	lcall	__gptrput
;	DAP.c:71: info[1] = (uint8_t)(DAP_PACKET_SIZE >> 8);
	inc	r4
	cjne	r4,#0x00,00171$
	inc	r5
00171$:
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	clr	a
	lcall	__gptrput
;	DAP.c:72: length = 2U;
	mov	r6,#0x02
;	DAP.c:73: break;
;	DAP.c:74: case DAP_ID_PACKET_COUNT:
	sjmp	00113$
00111$:
;	DAP.c:75: info[0] = DAP_PACKET_COUNT;
	mov	r4,_DAP_Info_PARM_2
	mov	r5,(_DAP_Info_PARM_2 + 1)
	mov	r7,(_DAP_Info_PARM_2 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	DAP.c:76: length = 1U;
	mov	r6,#0x01
;	DAP.c:80: }
00113$:
;	DAP.c:82: return (length);
	mov	dpl,r6
;	DAP.c:83: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_Delay'
;------------------------------------------------------------
;res                       Allocated with name '_DAP_Delay_PARM_2'
;req                       Allocated to registers r5 r6 r7 
;delay                     Allocated to registers r6 r7 
;------------------------------------------------------------
;	DAP.c:90: static uint8_t DAP_Delay(const uint8_t *req, uint8_t *res)
;	-----------------------------------------
;	 function DAP_Delay
;	-----------------------------------------
_DAP_Delay:
;	DAP.c:94: delay = (uint16_t)(*(req + 0)) |
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
;	DAP.c:95: (uint16_t)(*(req + 1) << 8);
	inc	r5
	cjne	r5,#0x00,00114$
	inc	r6
00114$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	clr	a
	mov	r5,a
	orl	a,r4
	mov	r6,a
	mov	a,r7
	orl	a,r3
	mov	r7,a
;	DAP.c:97: while (--delay)
00101$:
	mov	a,r6
	add	a,#0xff
	mov	r4,a
	mov	a,r7
	addc	a,#0xff
	mov	r5,a
	mov	ar6,r4
	mov	ar7,r5
	mov	a,r4
	orl	a,r5
	jnz	00101$
;	DAP.c:101: *res = DAP_OK;
	mov	r5,_DAP_Delay_PARM_2
	mov	r6,(_DAP_Delay_PARM_2 + 1)
	mov	r7,(_DAP_Delay_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	DAP.c:102: return 1;
	mov	dpl,#0x01
;	DAP.c:103: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_HostStatus'
;------------------------------------------------------------
;res                       Allocated with name '_DAP_HostStatus_PARM_2'
;req                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	DAP.c:110: static uint8_t DAP_HostStatus(const uint8_t *req, uint8_t *res)
;	-----------------------------------------
;	 function DAP_HostStatus
;	-----------------------------------------
_DAP_HostStatus:
;	DAP.c:113: switch (*req)
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r4,a
	jz	00101$
;	DAP.c:115: case DAP_DEBUGGER_CONNECTED:
	cjne	r4,#0x01,00103$
	sjmp	00102$
00101$:
;	DAP.c:116: LED = ((*(req + 1) & 1U));
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	anl	a,#0x01
	mov	r4,a
	add	a,#0xff
	mov	_P1_4,c
;	DAP.c:117: break;
;	DAP.c:118: case DAP_TARGET_RUNNING:
	sjmp	00104$
00102$:
;	DAP.c:119: LED = ((*(req + 1) & 1U));
	inc	r5
	cjne	r5,#0x00,00117$
	inc	r6
00117$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	anl	a,#0x01
	mov	r7,a
	add	a,#0xff
	mov	_P1_4,c
;	DAP.c:120: break;
;	DAP.c:121: default:
	sjmp	00104$
00103$:
;	DAP.c:122: *res = DAP_ERROR;
	mov	r5,_DAP_HostStatus_PARM_2
	mov	r6,(_DAP_HostStatus_PARM_2 + 1)
	mov	r7,(_DAP_HostStatus_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xff
	lcall	__gptrput
;	DAP.c:123: return 1;
	mov	dpl,#0x01
;	DAP.c:124: }
	ret
00104$:
;	DAP.c:126: *res = DAP_OK;
	mov	r5,_DAP_HostStatus_PARM_2
	mov	r6,(_DAP_HostStatus_PARM_2 + 1)
	mov	r7,(_DAP_HostStatus_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	DAP.c:127: return 1;
	mov	dpl,#0x01
;	DAP.c:128: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_Connect'
;------------------------------------------------------------
;res                       Allocated with name '_DAP_Connect_PARM_2'
;req                       Allocated to registers r5 r6 r7 
;port                      Allocated to registers r6 
;------------------------------------------------------------
;	DAP.c:136: static uint8_t DAP_Connect(const uint8_t *req, uint8_t *res)
;	-----------------------------------------
;	 function DAP_Connect
;	-----------------------------------------
_DAP_Connect:
;	DAP.c:140: if (*req == DAP_PORT_AUTODETECT)
	mov	r5,dpl
	lcall	__gptrget
	mov	r7,a
	jnz	00102$
;	DAP.c:142: port = DAP_DEFAULT_PORT;
	mov	r6,#0x01
	sjmp	00103$
00102$:
;	DAP.c:146: port = *req;
	mov	ar6,r7
00103$:
;	DAP.c:149: switch (port)
	cjne	r6,#0x01,00105$
;	DAP.c:152: debug_port = DAP_PORT_SWD;
	mov	r0,#_debug_port
	mov	@r0,#0x01
;	DAP.c:153: PORT_SWD_SETUP();
	push	ar6
	lcall	_PORT_SWD_SETUP
	pop	ar6
;	DAP.c:154: break;
;	DAP.c:155: default:
	sjmp	00106$
00105$:
;	DAP.c:156: port = DAP_PORT_DISABLED;
	mov	r6,#0x00
;	DAP.c:158: }
00106$:
;	DAP.c:160: *res = (uint8_t)port;
	mov	r4,_DAP_Connect_PARM_2
	mov	r5,(_DAP_Connect_PARM_2 + 1)
	mov	r7,(_DAP_Connect_PARM_2 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	mov	a,r6
	lcall	__gptrput
;	DAP.c:161: return 1;
	mov	dpl,#0x01
;	DAP.c:162: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_Disconnect'
;------------------------------------------------------------
;res                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	DAP.c:168: static uint8_t DAP_Disconnect(uint8_t *res)
;	-----------------------------------------
;	 function DAP_Disconnect
;	-----------------------------------------
_DAP_Disconnect:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	DAP.c:171: debug_port = DAP_PORT_DISABLED;
	mov	r0,#_debug_port
	mov	@r0,#0x00
;	DAP.c:172: PORT_OFF();
	push	ar7
	push	ar6
	push	ar5
	lcall	_PORT_SWD_SETUP
	pop	ar5
	pop	ar6
	pop	ar7
;	DAP.c:174: *res = DAP_OK;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	DAP.c:175: return (1U);
	mov	dpl,#0x01
;	DAP.c:176: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_ResetTarget'
;------------------------------------------------------------
;res                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	DAP.c:181: static uint8_t DAP_ResetTarget(uint8_t *res)
;	-----------------------------------------
;	 function DAP_ResetTarget
;	-----------------------------------------
_DAP_ResetTarget:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	DAP.c:183: *(res + 1) = 0; //RESET_TARGET();
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	DAP.c:184: *(res + 0) = DAP_OK;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	DAP.c:185: return 2;
	mov	dpl,#0x02
;	DAP.c:186: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_SWJ_Pins'
;------------------------------------------------------------
;res                       Allocated with name '_DAP_SWJ_Pins_PARM_2'
;req                       Allocated with name '_DAP_SWJ_Pins_req_65536_57'
;value                     Allocated to registers r7 
;select                    Allocated with name '_DAP_SWJ_Pins_select_65536_58'
;wait                      Allocated to registers r6 r7 
;sloc0                     Allocated with name '_DAP_SWJ_Pins_sloc0_1_0'
;sloc1                     Allocated with name '_DAP_SWJ_Pins_sloc1_1_0'
;sloc2                     Allocated with name '_DAP_SWJ_Pins_sloc2_1_0'
;sloc3                     Allocated with name '_DAP_SWJ_Pins_sloc3_1_0'
;sloc4                     Allocated with name '_DAP_SWJ_Pins_sloc4_1_0'
;------------------------------------------------------------
;	DAP.c:193: static uint8_t DAP_SWJ_Pins(const uint8_t *req, uint8_t *res)
;	-----------------------------------------
;	 function DAP_SWJ_Pins
;	-----------------------------------------
_DAP_SWJ_Pins:
;	DAP.c:199: value = (uint8_t) * (req + 0);
	mov	_DAP_SWJ_Pins_req_65536_57,dpl
	mov	(_DAP_SWJ_Pins_req_65536_57 + 1),dph
	mov	(_DAP_SWJ_Pins_req_65536_57 + 2),b
	lcall	__gptrget
	mov	r4,a
;	DAP.c:200: select = (uint8_t) * (req + 1);
	mov	a,#0x01
	add	a,_DAP_SWJ_Pins_req_65536_57
	mov	r1,a
	clr	a
	addc	a,(_DAP_SWJ_Pins_req_65536_57 + 1)
	mov	r2,a
	mov	r3,(_DAP_SWJ_Pins_req_65536_57 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	_DAP_SWJ_Pins_select_65536_58,a
;	DAP.c:201: wait = (uint16_t)(*(req + 2) << 0) | (uint16_t)(*(req + 3) << 8);
	mov	a,#0x02
	add	a,_DAP_SWJ_Pins_req_65536_57
	mov	r0,a
	clr	a
	addc	a,(_DAP_SWJ_Pins_req_65536_57 + 1)
	mov	r1,a
	mov	r2,(_DAP_SWJ_Pins_req_65536_57 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	mov	r2,#0x00
	mov	a,#0x03
	add	a,_DAP_SWJ_Pins_req_65536_57
	mov	r1,a
	clr	a
	addc	a,(_DAP_SWJ_Pins_req_65536_57 + 1)
	mov	r3,a
	mov	r7,(_DAP_SWJ_Pins_req_65536_57 + 2)
	mov	dpl,r1
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	clr	a
	mov	r1,a
	orl	a,r0
	mov	r6,a
	mov	a,r7
	orl	a,r2
	mov	r7,a
;	DAP.c:202: if ((uint8_t)(*(req + 4)) || (uint8_t)(*(req + 5)))
	mov	a,#0x04
	add	a,_DAP_SWJ_Pins_req_65536_57
	mov	r2,a
	clr	a
	addc	a,(_DAP_SWJ_Pins_req_65536_57 + 1)
	mov	r3,a
	mov	r5,(_DAP_SWJ_Pins_req_65536_57 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	jnz	00101$
	mov	a,#0x05
	add	a,_DAP_SWJ_Pins_req_65536_57
	mov	r2,a
	clr	a
	addc	a,(_DAP_SWJ_Pins_req_65536_57 + 1)
	mov	r3,a
	mov	r5,(_DAP_SWJ_Pins_req_65536_57 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	jz	00102$
00101$:
;	DAP.c:203: wait |= 0x8000;
	orl	ar7,#0x80
00102$:
;	DAP.c:205: if ((select & DAP_SWJ_SWCLK_TCK_BIT) != 0U)
	mov	a,_DAP_SWJ_Pins_select_65536_58
	jnb	acc.0,00108$
;	DAP.c:207: if ((value & DAP_SWJ_SWCLK_TCK_BIT) != 0U)
	mov	a,r4
	jnb	acc.0,00105$
;	DAP.c:209: SWK = 1;
;	assignBit
	setb	_P3_2
	sjmp	00108$
00105$:
;	DAP.c:213: SWK = 0;
;	assignBit
	clr	_P3_2
00108$:
;	DAP.c:216: if ((select & DAP_SWJ_SWDIO_TMS_BIT) != 0U)
	mov	a,_DAP_SWJ_Pins_select_65536_58
	jnb	acc.1,00113$
;	DAP.c:218: if ((value & DAP_SWJ_SWDIO_TMS_BIT) != 0U)
	mov	a,r4
	jnb	acc.1,00110$
;	DAP.c:220: SWD = 1;
;	assignBit
	setb	_P1_7
	sjmp	00113$
00110$:
;	DAP.c:224: SWD = 0;
;	assignBit
	clr	_P1_7
00113$:
;	DAP.c:227: if ((select & DAP_SWJ_nRESET_BIT) != 0U)
	mov	a,_DAP_SWJ_Pins_select_65536_58
	jnb	acc.7,00115$
;	DAP.c:229: RST = value >> DAP_SWJ_nRESET;
	mov	a,r4
	rl	a
	anl	a,#0x01
;	assignBit
	mov	r5,a
	add	a,#0xff
	mov	_P1_5,c
00115$:
;	DAP.c:232: if (wait != 0U)
	mov	a,r6
	orl	a,r7
	jz	00132$
;	DAP.c:235: do
	mov	a,#0x02
	anl	a,_DAP_SWJ_Pins_select_65536_58
	mov	r3,a
	mov	r5,#0x00
	mov	a,#0x80
	anl	a,_DAP_SWJ_Pins_select_65536_58
	mov	r1,a
	mov	r2,#0x00
	mov	a,r4
	rl	a
	anl	a,#0x01
	mov	_DAP_SWJ_Pins_sloc3_1_0,a
	mov	a,r4
	clr	c
	rrc	a
	mov	_DAP_SWJ_Pins_sloc0_1_0,a
	mov	_DAP_SWJ_Pins_sloc4_1_0,r4
	mov	a,#0x01
	anl	a,_DAP_SWJ_Pins_select_65536_58
	mov	_DAP_SWJ_Pins_sloc1_1_0,a
;	1-genFromRTrack replaced	mov	(_DAP_SWJ_Pins_sloc1_1_0 + 1),#0x00
	mov	(_DAP_SWJ_Pins_sloc1_1_0 + 1),r5
00128$:
;	DAP.c:237: if ((select & DAP_SWJ_SWCLK_TCK_BIT) != 0U)
	mov	a,_DAP_SWJ_Pins_sloc1_1_0
	orl	a,(_DAP_SWJ_Pins_sloc1_1_0 + 1)
	jz	00119$
;	DAP.c:239: if ((value >> DAP_SWJ_SWCLK_TCK) ^ SWK)
	mov	_DAP_SWJ_Pins_sloc2_1_0,_DAP_SWJ_Pins_sloc4_1_0
	mov	c,_P3_2
	clr	a
	rlc	a
	mov	r0,a
	xrl	a,_DAP_SWJ_Pins_sloc2_1_0
	jnz	00129$
;	DAP.c:241: continue;
00119$:
;	DAP.c:244: if ((select & DAP_SWJ_SWDIO_TMS_BIT) != 0U)
	mov	a,r3
	orl	a,r5
	jz	00123$
;	DAP.c:246: if ((value >> DAP_SWJ_SWDIO_TMS) ^ SWD)
	mov	_DAP_SWJ_Pins_sloc2_1_0,_DAP_SWJ_Pins_sloc0_1_0
	mov	c,_P1_7
	clr	a
	rlc	a
	mov	r0,a
	xrl	a,_DAP_SWJ_Pins_sloc2_1_0
	jnz	00129$
;	DAP.c:248: continue;
00123$:
;	DAP.c:251: if ((select & DAP_SWJ_nRESET_BIT) != 0U)
	mov	a,r1
	orl	a,r2
	jz	00132$
;	DAP.c:253: if ((value >> DAP_SWJ_nRESET) ^ RST)
	mov	_DAP_SWJ_Pins_sloc2_1_0,_DAP_SWJ_Pins_sloc3_1_0
	mov	c,_P1_5
	clr	a
	rlc	a
	mov	r4,a
	xrl	a,_DAP_SWJ_Pins_sloc2_1_0
	jz	00132$
;	DAP.c:258: break;
00129$:
;	DAP.c:260: while (wait--);
	mov	ar0,r6
	mov	ar4,r7
	dec	r6
	cjne	r6,#0xff,00204$
	dec	r7
00204$:
	mov	a,r0
	orl	a,r4
	jnz	00128$
00132$:
;	DAP.c:263: value = ((uint8_t)SWK << DAP_SWJ_SWCLK_TCK) |
	mov	c,_P3_2
	clr	a
	rlc	a
	mov	r7,a
;	DAP.c:264: ((uint8_t)SWD << DAP_SWJ_SWDIO_TMS) |
	mov	c,_P1_7
	clr	a
	rlc	a
	add	a,acc
	orl	ar7,a
;	DAP.c:268: ((uint8_t)RST << DAP_SWJ_nRESET);
	mov	c,_P1_5
	clr	a
	rlc	a
	rr	a
	anl	a,#0x80
	orl	ar7,a
;	DAP.c:270: *res = (uint8_t)value;
	mov	r4,_DAP_SWJ_Pins_PARM_2
	mov	r5,(_DAP_SWJ_Pins_PARM_2 + 1)
	mov	r6,(_DAP_SWJ_Pins_PARM_2 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__gptrput
;	DAP.c:272: return 1;
	mov	dpl,#0x01
;	DAP.c:273: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_SWJ_Clock'
;------------------------------------------------------------
;res                       Allocated with name '_DAP_SWJ_Clock_PARM_2'
;req                       Allocated to registers r7 r5 r6 
;reloadValueT2             Allocated to registers r4 r5 
;------------------------------------------------------------
;	DAP.c:282: static uint8_t DAP_SWJ_Clock(const uint8_t *req, uint8_t *res)
;	-----------------------------------------
;	 function DAP_SWJ_Clock
;	-----------------------------------------
_DAP_SWJ_Clock:
;	DAP.c:285: fast_clock = *((uint32_t *)req);
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_fast_clock
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	DAP.c:289: TR2=0;
;	assignBit
	clr	_TR2
;	DAP.c:291: RCLK = 0;
;	assignBit
	clr	_RCLK
;	DAP.c:292: TCLK = 0;
;	assignBit
	clr	_TCLK
;	DAP.c:293: C_T2 = 0;
;	assignBit
	clr	_C_T2
;	DAP.c:296: T2MOD |= bTMR_CLK | bT2_CLK; //use Fsys for T2
	orl	_T2MOD,#0xc0
;	DAP.c:298: CP_RL2 = 0;
;	assignBit
	clr	_CP_RL2
;	DAP.c:300: if (fast_clock<(2*F_CPU/65536L)){
	clr	c
	mov	a,r4
	subb	a,#0xdc
	mov	a,r5
	subb	a,#0x02
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jnc	00102$
;	DAP.c:301: RCAP2L=0;
	mov	_RCAP2L,#0x00
;	DAP.c:302: RCAP2H=0;
	mov	_RCAP2H,#0x00
	sjmp	00103$
00102$:
;	DAP.c:304: uint16_t reloadValueT2 = (uint16_t)(65536L-((F_CPU/2)/fast_clock));
	mov	__divulong_PARM_2,r4
	mov	(__divulong_PARM_2 + 1),r5
	mov	(__divulong_PARM_2 + 2),r6
	mov	(__divulong_PARM_2 + 3),r7
	mov	dptr,#0x1b00
	mov	b,#0xb7
	clr	a
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	clr	c
	clr	a
	subb	a,r4
	mov	r4,a
	clr	a
	subb	a,r5
	mov	r5,a
;	DAP.c:305: RCAP2L = reloadValueT2&0xFF;
	mov	_RCAP2L,r4
;	DAP.c:306: RCAP2H = (reloadValueT2>>8)&0xFF;
	mov	_RCAP2H,r5
00103$:
;	DAP.c:308: TL2=RCAP2L;
	mov	_TL2,_RCAP2L
;	DAP.c:309: TH2=RCAP2H;
	mov	_TH2,_RCAP2H
;	DAP.c:311: TF2=0;
;	assignBit
	clr	_TF2
;	DAP.c:312: TR2=1;
;	assignBit
	setb	_TR2
;	DAP.c:314: clock_delay = 0;
	mov	dptr,#_clock_delay
	clr	a
	movx	@dptr,a
;	DAP.c:316: *res = DAP_OK;
	mov	r5,_DAP_SWJ_Clock_PARM_2
	mov	r6,(_DAP_SWJ_Clock_PARM_2 + 1)
	mov	r7,(_DAP_SWJ_Clock_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	DAP.c:317: return 1;
	mov	dpl,#0x01
;	DAP.c:318: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_SWJ_Sequence'
;------------------------------------------------------------
;res                       Allocated with name '_DAP_SWJ_Sequence_PARM_2'
;req                       Allocated to registers r5 r6 r7 
;count                     Allocated to registers r3 
;------------------------------------------------------------
;	DAP.c:325: static uint8_t DAP_SWJ_Sequence(const uint8_t *req, uint8_t *res)
;	-----------------------------------------
;	 function DAP_SWJ_Sequence
;	-----------------------------------------
_DAP_SWJ_Sequence:
;	DAP.c:329: count = *req++;
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r4,a
	inc	r5
	cjne	r5,#0x00,00110$
	inc	r6
00110$:
;	DAP.c:330: if (count == 0U)
	mov	a,r4
	mov	r3,a
	jnz	00102$
;	DAP.c:332: count = 255U;
	mov	r3,#0xff
00102$:
;	DAP.c:335: SWJ_Sequence(count, req);
	mov	_SWJ_Sequence_PARM_2,r5
	mov	(_SWJ_Sequence_PARM_2 + 1),r6
	mov	(_SWJ_Sequence_PARM_2 + 2),r7
	mov	dpl,r3
	lcall	_SWJ_Sequence
;	DAP.c:336: *res = DAP_OK;
	mov	r5,_DAP_SWJ_Sequence_PARM_2
	mov	r6,(_DAP_SWJ_Sequence_PARM_2 + 1)
	mov	r7,(_DAP_SWJ_Sequence_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	DAP.c:338: return 1;
	mov	dpl,#0x01
;	DAP.c:339: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_SWD_Configure'
;------------------------------------------------------------
;res                       Allocated with name '_DAP_SWD_Configure_PARM_2'
;req                       Allocated to registers r5 r6 r7 
;value                     Allocated to registers r5 
;------------------------------------------------------------
;	DAP.c:348: static uint8_t DAP_SWD_Configure(const uint8_t *req, uint8_t *res)
;	-----------------------------------------
;	 function DAP_SWD_Configure
;	-----------------------------------------
_DAP_SWD_Configure:
;	DAP.c:352: value = *req;
	lcall	__gptrget
	mov	r5,a
;	DAP.c:353: turnaround = (value & 0x03U) + 1U;
	mov	a,#0x03
	anl	a,r5
	mov	r0,#_turnaround
	inc	a
	mov	@r0,a
;	DAP.c:354: data_phase = (value & 0x04U) ? 1U : 0U;
	mov	a,r5
	jnb	acc.2,00103$
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00104$
00103$:
	mov	r6,#0x00
	mov	r7,#0x00
00104$:
	mov	r0,#_data_phase
	mov	@r0,ar6
;	DAP.c:356: *res = DAP_OK;
	mov	r5,_DAP_SWD_Configure_PARM_2
	mov	r6,(_DAP_SWD_Configure_PARM_2 + 1)
	mov	r7,(_DAP_SWD_Configure_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	DAP.c:357: return 1;
	mov	dpl,#0x01
;	DAP.c:358: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_SWD_Sequence'
;------------------------------------------------------------
;res                       Allocated with name '_DAP_SWD_Sequence_PARM_2'
;req                       Allocated to registers r5 r6 r7 
;sequence_info             Allocated to registers r1 
;sequence_count            Allocated to registers 
;request_count             Allocated to registers r4 
;response_count            Allocated with name '_DAP_SWD_Sequence_response_count_65536_84'
;count                     Allocated to registers r0 
;------------------------------------------------------------
;	DAP.c:365: static uint8_t DAP_SWD_Sequence(const uint8_t *req, uint8_t *res)
;	-----------------------------------------
;	 function DAP_SWD_Sequence
;	-----------------------------------------
_DAP_SWD_Sequence:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	DAP.c:373: *res++ = DAP_OK;
	mov	r2,_DAP_SWD_Sequence_PARM_2
	mov	r3,(_DAP_SWD_Sequence_PARM_2 + 1)
	mov	r4,(_DAP_SWD_Sequence_PARM_2 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	a
	add	a,r2
	mov	_DAP_SWD_Sequence_PARM_2,a
	clr	a
	addc	a,r3
	mov	(_DAP_SWD_Sequence_PARM_2 + 1),a
	mov	(_DAP_SWD_Sequence_PARM_2 + 2),r4
;	DAP.c:375: request_count = 1U;
	mov	r4,#0x01
;	DAP.c:376: response_count = 1U;
;	1-genFromRTrack replaced	mov	_DAP_SWD_Sequence_response_count_65536_84,#0x01
	mov	_DAP_SWD_Sequence_response_count_65536_84,r4
;	DAP.c:378: sequence_count = *req++;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	r5
	cjne	r5,#0x00,00147$
	inc	r6
00147$:
;	DAP.c:379: while (sequence_count--)
00111$:
	mov	ar1,r2
	dec	r2
	mov	a,r1
	jnz	00148$
	ljmp	00113$
00148$:
;	DAP.c:381: sequence_info = *req++;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	DAP.c:382: count = sequence_info & SWD_SEQUENCE_CLK;
	mov	a,#0x3f
	anl	a,r1
;	DAP.c:383: if (count == 0U)
	mov	r0,a
	jnz	00102$
;	DAP.c:385: count = 64U;
	mov	r0,#0x40
00102$:
;	DAP.c:387: count = (count + 7U) / 8U;
	mov	r3,#0x00
	mov	a,#0x07
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r3
	swap	a
	rl	a
	xch	a,r0
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r0
	xch	a,r0
	anl	a,#0x1f
	xch	a,r0
	xrl	a,r0
	xch	a,r0
;	DAP.c:388: if ((sequence_info & SWD_SEQUENCE_DIN) != 0U)
	mov	a,r1
	jnb	acc.7,00104$
;	DAP.c:390: SWD = 1;
;	assignBit
	setb	_P1_7
	sjmp	00105$
00104$:
;	DAP.c:394: SWD = 1;
;	assignBit
	setb	_P1_7
00105$:
;	DAP.c:396: SWD_Sequence(sequence_info, req, res);
	mov	_SWD_Sequence_PARM_2,r5
	mov	(_SWD_Sequence_PARM_2 + 1),r6
	mov	(_SWD_Sequence_PARM_2 + 2),r7
	mov	_SWD_Sequence_PARM_3,_DAP_SWD_Sequence_PARM_2
	mov	(_SWD_Sequence_PARM_3 + 1),(_DAP_SWD_Sequence_PARM_2 + 1)
	mov	(_SWD_Sequence_PARM_3 + 2),(_DAP_SWD_Sequence_PARM_2 + 2)
	mov	dpl,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	push	ar1
	push	ar0
	lcall	_SWD_Sequence
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	DAP.c:397: if (sequence_count == 0U)
	mov	a,r2
	jnz	00107$
;	DAP.c:399: SWD = 1;
;	assignBit
	setb	_P1_7
00107$:
;	DAP.c:401: if ((sequence_info & SWD_SEQUENCE_DIN) != 0U)
	mov	a,r1
	jnb	acc.7,00109$
;	DAP.c:403: request_count++;
	inc	r4
;	DAP.c:404: res += count;
	mov	a,r0
	add	a,_DAP_SWD_Sequence_PARM_2
	mov	_DAP_SWD_Sequence_PARM_2,a
	clr	a
	addc	a,(_DAP_SWD_Sequence_PARM_2 + 1)
	mov	(_DAP_SWD_Sequence_PARM_2 + 1),a
;	DAP.c:405: response_count += count;
	mov	a,r0
	add	a,_DAP_SWD_Sequence_response_count_65536_84
	mov	_DAP_SWD_Sequence_response_count_65536_84,a
	ljmp	00111$
00109$:
;	DAP.c:409: req += count;
	mov	a,r0
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
;	DAP.c:410: request_count += count + 1U;
	mov	a,r0
	inc	a
	add	a,r4
	mov	r4,a
	ljmp	00111$
00113$:
;	DAP.c:414: return response_count;
	mov	dpl,_DAP_SWD_Sequence_response_count_65536_84
;	DAP.c:415: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_TransferConfigure'
;------------------------------------------------------------
;res                       Allocated with name '_DAP_TransferConfigure_PARM_2'
;req                       Allocated with name '_DAP_TransferConfigure_req_65536_92'
;------------------------------------------------------------
;	DAP.c:425: static uint8_t DAP_TransferConfigure(const uint8_t *req, uint8_t *res)
;	-----------------------------------------
;	 function DAP_TransferConfigure
;	-----------------------------------------
_DAP_TransferConfigure:
;	DAP.c:428: idle_cycles = *(req + 0);
	mov	_DAP_TransferConfigure_req_65536_92,dpl
	mov	(_DAP_TransferConfigure_req_65536_92 + 1),dph
	mov	(_DAP_TransferConfigure_req_65536_92 + 2),b
	mov	r0,#_idle_cycles
	lcall	__gptrget
	mov	@r0,a
;	DAP.c:429: retry_count = (uint16_t) * (req + 1) |
	mov	a,#0x01
	add	a,_DAP_TransferConfigure_req_65536_92
	mov	r2,a
	clr	a
	addc	a,(_DAP_TransferConfigure_req_65536_92 + 1)
	mov	r3,a
	mov	r4,(_DAP_TransferConfigure_req_65536_92 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	r4,#0x00
;	DAP.c:430: (uint16_t)(*(req + 2) << 8);
	mov	a,#0x02
	add	a,_DAP_TransferConfigure_req_65536_92
	mov	r3,a
	clr	a
	addc	a,(_DAP_TransferConfigure_req_65536_92 + 1)
	mov	r6,a
	mov	r7,(_DAP_TransferConfigure_req_65536_92 + 2)
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	clr	a
	orl	ar2,a
	mov	a,r7
	orl	ar4,a
	mov	r0,#_retry_count
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar4
;	DAP.c:431: match_retry = (uint16_t) * (req + 3) |
	mov	a,#0x03
	add	a,_DAP_TransferConfigure_req_65536_92
	mov	r5,a
	clr	a
	addc	a,(_DAP_TransferConfigure_req_65536_92 + 1)
	mov	r6,a
	mov	r7,(_DAP_TransferConfigure_req_65536_92 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
;	DAP.c:432: (uint16_t)(*(req + 4) << 8);
	mov	a,#0x04
	add	a,_DAP_TransferConfigure_req_65536_92
	mov	r3,a
	clr	a
	addc	a,(_DAP_TransferConfigure_req_65536_92 + 1)
	mov	r4,a
	mov	r6,(_DAP_TransferConfigure_req_65536_92 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	lcall	__gptrget
	mov	r6,a
	clr	a
	orl	ar5,a
	mov	a,r6
	orl	ar7,a
	mov	r0,#_match_retry
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar7
;	DAP.c:434: *res = DAP_OK;
	mov	r5,_DAP_TransferConfigure_PARM_2
	mov	r6,(_DAP_TransferConfigure_PARM_2 + 1)
	mov	r7,(_DAP_TransferConfigure_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	DAP.c:435: return 1;
	mov	dpl,#0x01
;	DAP.c:436: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_SWD_Transfer'
;------------------------------------------------------------
;res                       Allocated with name '_DAP_SWD_Transfer_PARM_2'
;req                       Allocated to registers r5 r6 r7 
;request_head              Allocated to registers 
;response_head             Allocated with name '_DAP_SWD_Transfer_response_head_65536_95'
;post_read                 Allocated with name '_DAP_SWD_Transfer_post_read_65536_95'
;check_write               Allocated with name '_DAP_SWD_Transfer_check_write_65536_95'
;sloc0                     Allocated with name '_DAP_SWD_Transfer_sloc0_1_0'
;------------------------------------------------------------
;	DAP.c:453: static uint8_t DAP_SWD_Transfer(const uint8_t *req, uint8_t *res)
;	-----------------------------------------
;	 function DAP_SWD_Transfer
;	-----------------------------------------
_DAP_SWD_Transfer:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	DAP.c:463: response_count = 0U;
	mov	r0,#_response_count
	mov	@r0,#0x00
;	DAP.c:464: response_value = 0U;
	mov	r0,#_response_value
	mov	@r0,#0x00
;	DAP.c:465: response_head = res;
	mov	_DAP_SWD_Transfer_response_head_65536_95,_DAP_SWD_Transfer_PARM_2
	mov	(_DAP_SWD_Transfer_response_head_65536_95 + 1),(_DAP_SWD_Transfer_PARM_2 + 1)
	mov	(_DAP_SWD_Transfer_response_head_65536_95 + 2),(_DAP_SWD_Transfer_PARM_2 + 2)
;	DAP.c:466: res += 2;
	mov	a,#0x02
	add	a,_DAP_SWD_Transfer_response_head_65536_95
	mov	_DAP_SWD_Transfer_PARM_2,a
	clr	a
	addc	a,(_DAP_SWD_Transfer_response_head_65536_95 + 1)
	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
	mov	(_DAP_SWD_Transfer_PARM_2 + 2),(_DAP_SWD_Transfer_response_head_65536_95 + 2)
;	DAP.c:468: DAP_TransferAbort = 0U;
	mov	r0,#_DAP_TransferAbort
	mov	@r0,#0x00
;	DAP.c:470: post_read = 0U;
	mov	_DAP_SWD_Transfer_post_read_65536_95,#0x00
;	DAP.c:471: check_write = 0U;
	mov	_DAP_SWD_Transfer_check_write_65536_95,#0x00
;	DAP.c:473: req++; // Ignore DAP index
	inc	r5
	cjne	r5,#0x00,00550$
	inc	r6
00550$:
;	DAP.c:475: request_count = *req++;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_request_count
	lcall	__gptrget
	mov	@r0,a
	mov	a,#0x01
	add	a,r5
	mov	_DAP_SWD_Transfer_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_DAP_SWD_Transfer_sloc0_1_0 + 1),a
	mov	(_DAP_SWD_Transfer_sloc0_1_0 + 2),r7
00223$:
;	DAP.c:476: for (; request_count != 0U; request_count--)
	mov	r0,#_request_count
	mov	a,@r0
	jnz	00551$
	ljmp	00226$
00551$:
;	DAP.c:478: request_value = *req++;
	mov	dpl,_DAP_SWD_Transfer_sloc0_1_0
	mov	dph,(_DAP_SWD_Transfer_sloc0_1_0 + 1)
	mov	b,(_DAP_SWD_Transfer_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	mov	_DAP_SWD_Transfer_sloc0_1_0,dpl
	mov	(_DAP_SWD_Transfer_sloc0_1_0 + 1),dph
	mov	r0,#_request_value
	mov	@r0,ar2
;	DAP.c:479: if ((request_value & DAP_TRANSFER_RnW) != 0U)
	mov	a,r2
	jb	acc.1,00552$
	ljmp	00191$
00552$:
;	DAP.c:482: if (post_read)
	mov	a,_DAP_SWD_Transfer_post_read_65536_95
	jnz	00553$
	ljmp	00117$
00553$:
;	DAP.c:485: retry = retry_count;
	mov	r0,#_retry_count
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	r0,#_retry
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	DAP.c:486: if ((request_value & (DAP_TRANSFER_APnDP | DAP_TRANSFER_MATCH_VALUE)) == DAP_TRANSFER_APnDP)
	anl	ar2,#0x11
	mov	r4,#0x00
	cjne	r2,#0x01,00108$
	cjne	r4,#0x00,00108$
;	DAP.c:489: do
00103$:
;	DAP.c:491: response_value = SWD_Transfer(request_value, datas);
	mov	_SWD_Transfer_PARM_2,#_datas
	mov	(_SWD_Transfer_PARM_2 + 1),#(_datas >> 8)
	mov	r0,#_request_value
	mov	dpl,@r0
	lcall	_SWD_Transfer
	mov	r4,dpl
	mov	r0,#_response_value
	mov	@r0,ar4
;	DAP.c:493: while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
	cjne	r4,#0x02,00113$
	mov	r0,#_retry
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	r0,#_retry
	mov	a,r3
	add	a,#0xff
	mov	@r0,a
	mov	a,r4
	addc	a,#0xff
	inc	r0
	mov	@r0,a
	mov	a,r3
	orl	a,r4
	jz	00113$
	mov	r0,#_DAP_TransferAbort
	mov	a,@r0
	jz	00103$
;	DAP.c:498: do
	sjmp	00113$
00108$:
;	DAP.c:500: response_value = SWD_Transfer(DP_RDBUFF | DAP_TRANSFER_RnW, datas);
	mov	_SWD_Transfer_PARM_2,#_datas
	mov	(_SWD_Transfer_PARM_2 + 1),#(_datas >> 8)
	mov	dpl,#0x0e
	lcall	_SWD_Transfer
	mov	r4,dpl
	mov	r0,#_response_value
	mov	@r0,ar4
;	DAP.c:502: while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
	cjne	r4,#0x02,00110$
	mov	r0,#_retry
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	r0,#_retry
	mov	a,r3
	add	a,#0xff
	mov	@r0,a
	mov	a,r4
	addc	a,#0xff
	inc	r0
	mov	@r0,a
	mov	a,r3
	orl	a,r4
	jz	00110$
	mov	r0,#_DAP_TransferAbort
	mov	a,@r0
	jz	00108$
00110$:
;	DAP.c:503: post_read = 0U;
	mov	_DAP_SWD_Transfer_post_read_65536_95,#0x00
00113$:
;	DAP.c:505: if (response_value != DAP_TRANSFER_OK)
	mov	r0,#_response_value
	cjne	@r0,#0x01,00564$
	sjmp	00565$
00564$:
	ljmp	00226$
00565$:
;	DAP.c:510: *res++ = (uint8_t)datas[0];
	mov	r2,_DAP_SWD_Transfer_PARM_2
	mov	r3,(_DAP_SWD_Transfer_PARM_2 + 1)
	mov	r4,(_DAP_SWD_Transfer_PARM_2 + 2)
	mov	dptr,#_datas
	movx	a,@dptr
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
	mov	a,#0x01
	add	a,r2
	mov	_DAP_SWD_Transfer_PARM_2,a
	clr	a
	addc	a,r3
	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r4
;	DAP.c:511: *res++ = (uint8_t)datas[1];
	mov	r5,_DAP_SWD_Transfer_PARM_2
	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
	mov	dptr,#(_datas + 0x0001)
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	mov	a,#0x01
	add	a,r5
	mov	_DAP_SWD_Transfer_PARM_2,a
	clr	a
	addc	a,r6
	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
;	DAP.c:512: *res++ = (uint8_t)datas[2];
	mov	r5,_DAP_SWD_Transfer_PARM_2
	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
	mov	dptr,#(_datas + 0x0002)
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	mov	a,#0x01
	add	a,r5
	mov	_DAP_SWD_Transfer_PARM_2,a
	clr	a
	addc	a,r6
	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
;	DAP.c:513: *res++ = (uint8_t)datas[3];
	mov	r5,_DAP_SWD_Transfer_PARM_2
	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
	mov	dptr,#(_datas + 0x0003)
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	mov	a,#0x01
	add	a,r5
	mov	_DAP_SWD_Transfer_PARM_2,a
	clr	a
	addc	a,r6
	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
;	DAP.c:732: return ((uint8_t)(res - response_head));
;	DAP.c:513: *res++ = (uint8_t)datas[3];
00117$:
;	DAP.c:515: if ((request_value & DAP_TRANSFER_MATCH_VALUE) != 0U)
	mov	r0,#_request_value
	mov	a,@r0
	mov	r4,a
	jb	acc.4,00566$
	ljmp	00169$
00566$:
;	DAP.c:518: match_value[0] = (uint8_t)(*(req + 0));
	mov	dpl,_DAP_SWD_Transfer_sloc0_1_0
	mov	dph,(_DAP_SWD_Transfer_sloc0_1_0 + 1)
	mov	b,(_DAP_SWD_Transfer_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	mov	r0,#_match_value
	mov	@r0,ar3
;	DAP.c:519: match_value[1] = (uint8_t)(*(req + 1));
	mov	a,#0x01
	add	a,_DAP_SWD_Transfer_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a,(_DAP_SWD_Transfer_sloc0_1_0 + 1)
	mov	r3,a
	mov	r7,(_DAP_SWD_Transfer_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	r0,#(_match_value + 0x0001)
	mov	@r0,ar2
;	DAP.c:520: match_value[2] = (uint8_t)(*(req + 2));
	mov	a,#0x02
	add	a,_DAP_SWD_Transfer_sloc0_1_0
	mov	r5,a
	clr	a
	addc	a,(_DAP_SWD_Transfer_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(_DAP_SWD_Transfer_sloc0_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r0,#(_match_value + 0x0002)
	mov	@r0,ar5
;	DAP.c:521: match_value[3] = (uint8_t)(*(req + 3));
	mov	a,#0x03
	add	a,_DAP_SWD_Transfer_sloc0_1_0
	mov	r5,a
	clr	a
	addc	a,(_DAP_SWD_Transfer_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(_DAP_SWD_Transfer_sloc0_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r0,#(_match_value + 0x0003)
	mov	@r0,ar5
;	DAP.c:522: req += 4;
	mov	a,#0x04
	add	a,_DAP_SWD_Transfer_sloc0_1_0
	mov	_DAP_SWD_Transfer_sloc0_1_0,a
	clr	a
	addc	a,(_DAP_SWD_Transfer_sloc0_1_0 + 1)
	mov	(_DAP_SWD_Transfer_sloc0_1_0 + 1),a
;	DAP.c:523: match_retry = match_retry;
;	DAP.c:524: if ((request_value & DAP_TRANSFER_APnDP) != 0U)
	mov	r0,#_request_value
	mov	a,@r0
	jnb	acc.0,00139$
;	DAP.c:527: retry = retry_count;
	mov	r0,#_retry_count
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,#_retry
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	DAP.c:528: do
00120$:
;	DAP.c:530: response_value = SWD_Transfer(request_value, NULL);
	clr	a
	mov	_SWD_Transfer_PARM_2,a
	mov	(_SWD_Transfer_PARM_2 + 1),a
	mov	r0,#_request_value
	mov	dpl,@r0
	lcall	_SWD_Transfer
	mov	r7,dpl
	mov	r0,#_response_value
	mov	@r0,ar7
;	DAP.c:532: while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
	cjne	r7,#0x02,00122$
	mov	r0,#_retry
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	r0,#_retry
	mov	a,r5
	add	a,#0xff
	mov	@r0,a
	mov	a,r6
	addc	a,#0xff
	inc	r0
	mov	@r0,a
	mov	a,r5
	orl	a,r6
	jz	00122$
	mov	r0,#_DAP_TransferAbort
	mov	a,@r0
	jz	00120$
00122$:
;	DAP.c:533: if (response_value != DAP_TRANSFER_OK)
	cjne	r7,#0x01,00572$
	sjmp	00573$
00572$:
	ljmp	00226$
00573$:
;	DAP.c:538: do
00139$:
;	DAP.c:541: retry = retry_count;
	mov	r0,#_retry_count
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,#_retry
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	DAP.c:542: do
00129$:
;	DAP.c:544: response_value = SWD_Transfer(request_value, datas);
	mov	_SWD_Transfer_PARM_2,#_datas
	mov	(_SWD_Transfer_PARM_2 + 1),#(_datas >> 8)
	mov	r0,#_request_value
	mov	dpl,@r0
	lcall	_SWD_Transfer
	mov	r7,dpl
	mov	r0,#_response_value
	mov	@r0,ar7
;	DAP.c:546: while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
	cjne	r7,#0x02,00131$
	mov	r0,#_retry
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,#_retry
	mov	a,r6
	add	a,#0xff
	mov	@r0,a
	mov	a,r7
	addc	a,#0xff
	inc	r0
	mov	@r0,a
	mov	a,r6
	orl	a,r7
	jz	00131$
	mov	r0,#_DAP_TransferAbort
	mov	a,@r0
	jz	00129$
00131$:
;	DAP.c:547: if (response_value != DAP_TRANSFER_OK)
	mov	r0,#_response_value
	cjne	@r0,#0x01,00578$
	sjmp	00579$
00578$:
	ljmp	00141$
00579$:
;	DAP.c:552: while (((datas[0] & match_mask[0]) != match_value[0] ||
	mov	dptr,#_datas
	movx	a,@dptr
	mov	r7,a
	mov	r0,#_match_mask
	mov	a,@r0
	anl	ar7,a
	mov	r0,#_match_value
	mov	ar6,@r0
	mov	a,r7
	cjne	a,ar6,00137$
;	DAP.c:553: (datas[1] & match_mask[1]) != match_value[1] ||
	mov	dptr,#(_datas + 0x0001)
	movx	a,@dptr
	mov	r7,a
	mov	r0,#(_match_mask + 0x0001)
	mov	a,@r0
	anl	ar7,a
	mov	r0,#(_match_value + 0x0001)
	mov	ar6,@r0
	mov	a,r7
	cjne	a,ar6,00137$
;	DAP.c:554: (datas[2] & match_mask[2]) != match_value[2] ||
	mov	dptr,#(_datas + 0x0002)
	movx	a,@dptr
	mov	r7,a
	mov	r0,#(_match_mask + 0x0002)
	mov	a,@r0
	anl	ar7,a
	mov	r0,#(_match_value + 0x0002)
	mov	ar6,@r0
	mov	a,r7
	cjne	a,ar6,00137$
;	DAP.c:555: (datas[3] & match_mask[3]) != match_value[3]) &&
	mov	dptr,#(_datas + 0x0003)
	movx	a,@dptr
	mov	r7,a
	mov	r0,#(_match_mask + 0x0003)
	mov	a,@r0
	anl	ar7,a
	mov	r0,#(_match_value + 0x0003)
	mov	ar6,@r0
	mov	a,r7
	cjne	a,ar6,00586$
	sjmp	00141$
00586$:
00137$:
;	DAP.c:556: match_retry-- && !DAP_TransferAbort);
	mov	r0,#_match_retry
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,#_match_retry
	mov	a,r6
	add	a,#0xff
	mov	@r0,a
	mov	a,r7
	addc	a,#0xff
	inc	r0
	mov	@r0,a
	mov	a,r6
	orl	a,r7
	jz	00141$
	mov	r0,#_DAP_TransferAbort
	mov	a,@r0
	jnz	00588$
	ljmp	00139$
00588$:
00141$:
;	DAP.c:557: if ((datas[0] & match_mask[0]) != match_value[0] ||
	mov	dptr,#_datas
	movx	a,@dptr
	mov	r7,a
	mov	r0,#_match_mask
	mov	a,@r0
	anl	ar7,a
	mov	r0,#_match_value
	mov	ar6,@r0
	mov	a,r7
	cjne	a,ar6,00142$
;	DAP.c:558: (datas[1] & match_mask[1]) != match_value[1] ||
	mov	dptr,#(_datas + 0x0001)
	movx	a,@dptr
	mov	r7,a
	mov	r0,#(_match_mask + 0x0001)
	mov	a,@r0
	anl	ar7,a
	mov	r0,#(_match_value + 0x0001)
	mov	ar6,@r0
	mov	a,r7
	cjne	a,ar6,00142$
;	DAP.c:559: (datas[2] & match_mask[2]) != match_value[2] ||
	mov	dptr,#(_datas + 0x0002)
	movx	a,@dptr
	mov	r7,a
	mov	r0,#(_match_mask + 0x0002)
	mov	a,@r0
	anl	ar7,a
	mov	r0,#(_match_value + 0x0002)
	mov	ar6,@r0
	mov	a,r7
	cjne	a,ar6,00142$
;	DAP.c:560: (datas[3] & match_mask[3]) != match_value[3])
	mov	dptr,#(_datas + 0x0003)
	movx	a,@dptr
	mov	r7,a
	mov	r0,#(_match_mask + 0x0003)
	mov	a,@r0
	anl	ar7,a
	mov	r0,#(_match_value + 0x0003)
	mov	ar6,@r0
	mov	a,r7
	cjne	a,ar6,00595$
	sjmp	00143$
00595$:
00142$:
;	DAP.c:562: response_value |= DAP_TRANSFER_MISMATCH;
	mov	r0,#_response_value
	mov	a,@r0
	orl	a,#0x10
	mov	@r0,a
00143$:
;	DAP.c:564: if (response_value != DAP_TRANSFER_OK)
	mov	r0,#_response_value
	cjne	@r0,#0x01,00596$
	ljmp	00170$
00596$:
;	DAP.c:566: break;
	ljmp	00226$
00169$:
;	DAP.c:572: retry = retry_count;
	mov	r0,#_retry_count
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,#_retry
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	DAP.c:573: if ((request_value & DAP_TRANSFER_APnDP) != 0U)
	mov	a,r4
	jnb	acc.0,00160$
;	DAP.c:576: if (post_read == 0U)
	mov	a,_DAP_SWD_Transfer_post_read_65536_95
	jz	00598$
	ljmp	00170$
00598$:
;	DAP.c:579: do
00151$:
;	DAP.c:581: response_value = SWD_Transfer(request_value, NULL);
	clr	a
	mov	_SWD_Transfer_PARM_2,a
	mov	(_SWD_Transfer_PARM_2 + 1),a
	mov	r0,#_request_value
	mov	dpl,@r0
	lcall	_SWD_Transfer
	mov	r7,dpl
	mov	r0,#_response_value
	mov	@r0,ar7
;	DAP.c:583: while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
	cjne	r7,#0x02,00153$
	mov	r0,#_retry
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	r0,#_retry
	mov	a,r5
	add	a,#0xff
	mov	@r0,a
	mov	a,r6
	addc	a,#0xff
	inc	r0
	mov	@r0,a
	mov	a,r5
	orl	a,r6
	jz	00153$
	mov	r0,#_DAP_TransferAbort
	mov	a,@r0
	jz	00151$
00153$:
;	DAP.c:584: if (response_value != DAP_TRANSFER_OK)
	cjne	r7,#0x01,00603$
	sjmp	00604$
00603$:
	ljmp	00226$
00604$:
;	DAP.c:588: post_read = 1U;
	mov	_DAP_SWD_Transfer_post_read_65536_95,#0x01
	ljmp	00170$
;	DAP.c:594: do
00160$:
;	DAP.c:596: response_value = SWD_Transfer(request_value, datas);
	mov	_SWD_Transfer_PARM_2,#_datas
	mov	(_SWD_Transfer_PARM_2 + 1),#(_datas >> 8)
	mov	r0,#_request_value
	mov	dpl,@r0
	lcall	_SWD_Transfer
	mov	r7,dpl
	mov	r0,#_response_value
	mov	@r0,ar7
;	DAP.c:598: while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
	cjne	r7,#0x02,00162$
	mov	r0,#_retry
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,#_retry
	mov	a,r6
	add	a,#0xff
	mov	@r0,a
	mov	a,r7
	addc	a,#0xff
	inc	r0
	mov	@r0,a
	mov	a,r6
	orl	a,r7
	jz	00162$
	mov	r0,#_DAP_TransferAbort
	mov	a,@r0
	jz	00160$
00162$:
;	DAP.c:599: if (response_value != DAP_TRANSFER_OK)
	mov	r0,#_response_value
	cjne	@r0,#0x01,00609$
	sjmp	00610$
00609$:
	ljmp	00226$
00610$:
;	DAP.c:605: *res++ = datas[0];
	mov	r5,_DAP_SWD_Transfer_PARM_2
	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
	mov	dptr,#_datas
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	mov	a,#0x01
	add	a,r5
	mov	_DAP_SWD_Transfer_PARM_2,a
	clr	a
	addc	a,r6
	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
;	DAP.c:606: *res++ = datas[1];
	mov	r5,_DAP_SWD_Transfer_PARM_2
	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
	mov	dptr,#(_datas + 0x0001)
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	mov	a,#0x01
	add	a,r5
	mov	_DAP_SWD_Transfer_PARM_2,a
	clr	a
	addc	a,r6
	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
;	DAP.c:607: *res++ = datas[2];
	mov	r5,_DAP_SWD_Transfer_PARM_2
	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
	mov	dptr,#(_datas + 0x0002)
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	mov	a,#0x01
	add	a,r5
	mov	_DAP_SWD_Transfer_PARM_2,a
	clr	a
	addc	a,r6
	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
;	DAP.c:608: *res++ = datas[3];
	mov	r5,_DAP_SWD_Transfer_PARM_2
	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
	mov	dptr,#(_datas + 0x0003)
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	mov	a,#0x01
	add	a,r5
	mov	_DAP_SWD_Transfer_PARM_2,a
	clr	a
	addc	a,r6
	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
00170$:
;	DAP.c:611: check_write = 0U;
	mov	_DAP_SWD_Transfer_check_write_65536_95,#0x00
	ljmp	00192$
00191$:
;	DAP.c:616: if (post_read)
	mov	a,_DAP_SWD_Transfer_post_read_65536_95
	jnz	00611$
	ljmp	00179$
00611$:
;	DAP.c:619: retry = retry_count;
	mov	r0,#_retry_count
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,#_retry
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	DAP.c:620: do
00173$:
;	DAP.c:622: response_value = SWD_Transfer(DP_RDBUFF | DAP_TRANSFER_RnW, datas);
	mov	_SWD_Transfer_PARM_2,#_datas
	mov	(_SWD_Transfer_PARM_2 + 1),#(_datas >> 8)
	mov	dpl,#0x0e
	lcall	_SWD_Transfer
	mov	r7,dpl
	mov	r0,#_response_value
	mov	@r0,ar7
;	DAP.c:624: while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
	cjne	r7,#0x02,00175$
	mov	r0,#_retry
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,#_retry
	mov	a,r6
	add	a,#0xff
	mov	@r0,a
	mov	a,r7
	addc	a,#0xff
	inc	r0
	mov	@r0,a
	mov	a,r6
	orl	a,r7
	jz	00175$
	mov	r0,#_DAP_TransferAbort
	mov	a,@r0
	jz	00173$
00175$:
;	DAP.c:625: if (response_value != DAP_TRANSFER_OK)
	mov	r0,#_response_value
	cjne	@r0,#0x01,00616$
	sjmp	00617$
00616$:
	ljmp	00226$
00617$:
;	DAP.c:630: *res++ = datas[0];
	mov	r5,_DAP_SWD_Transfer_PARM_2
	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
	mov	dptr,#_datas
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	mov	a,#0x01
	add	a,r5
	mov	_DAP_SWD_Transfer_PARM_2,a
	clr	a
	addc	a,r6
	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
;	DAP.c:631: *res++ = datas[1];
	mov	r5,_DAP_SWD_Transfer_PARM_2
	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
	mov	dptr,#(_datas + 0x0001)
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	mov	a,#0x01
	add	a,r5
	mov	_DAP_SWD_Transfer_PARM_2,a
	clr	a
	addc	a,r6
	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
;	DAP.c:632: *res++ = datas[2];
	mov	r5,_DAP_SWD_Transfer_PARM_2
	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
	mov	dptr,#(_datas + 0x0002)
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	mov	a,#0x01
	add	a,r5
	mov	_DAP_SWD_Transfer_PARM_2,a
	clr	a
	addc	a,r6
	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
;	DAP.c:633: *res++ = datas[3];
	mov	r5,_DAP_SWD_Transfer_PARM_2
	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
	mov	dptr,#(_datas + 0x0003)
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	mov	a,#0x01
	add	a,r5
	mov	_DAP_SWD_Transfer_PARM_2,a
	clr	a
	addc	a,r6
	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
;	DAP.c:634: post_read = 0U;
	mov	_DAP_SWD_Transfer_post_read_65536_95,#0x00
00179$:
;	DAP.c:637: datas[0] = (uint8_t)(*(req + 0));
	mov	dpl,_DAP_SWD_Transfer_sloc0_1_0
	mov	dph,(_DAP_SWD_Transfer_sloc0_1_0 + 1)
	mov	b,(_DAP_SWD_Transfer_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	dptr,#_datas
	movx	@dptr,a
;	DAP.c:638: datas[1] = (uint8_t)(*(req + 1));
	mov	a,#0x01
	add	a,_DAP_SWD_Transfer_sloc0_1_0
	mov	r5,a
	clr	a
	addc	a,(_DAP_SWD_Transfer_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(_DAP_SWD_Transfer_sloc0_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dptr,#(_datas + 0x0001)
	movx	@dptr,a
;	DAP.c:639: datas[2] = (uint8_t)(*(req + 2));
	mov	a,#0x02
	add	a,_DAP_SWD_Transfer_sloc0_1_0
	mov	r5,a
	clr	a
	addc	a,(_DAP_SWD_Transfer_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(_DAP_SWD_Transfer_sloc0_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dptr,#(_datas + 0x0002)
	movx	@dptr,a
;	DAP.c:640: datas[3] = (uint8_t)(*(req + 3));
	mov	a,#0x03
	add	a,_DAP_SWD_Transfer_sloc0_1_0
	mov	r5,a
	clr	a
	addc	a,(_DAP_SWD_Transfer_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(_DAP_SWD_Transfer_sloc0_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#(_datas + 0x0003)
	movx	@dptr,a
;	DAP.c:641: req += 4;
	mov	a,#0x04
	add	a,_DAP_SWD_Transfer_sloc0_1_0
	mov	_DAP_SWD_Transfer_sloc0_1_0,a
	clr	a
	addc	a,(_DAP_SWD_Transfer_sloc0_1_0 + 1)
	mov	(_DAP_SWD_Transfer_sloc0_1_0 + 1),a
;	DAP.c:642: if ((request_value & DAP_TRANSFER_MATCH_MASK) != 0U)
	mov	r0,#_request_value
	mov	a,@r0
	jnb	acc.5,00188$
;	DAP.c:645: match_mask[0] = datas[0];
	mov	dptr,#_datas
	movx	a,@dptr
	mov	r7,a
	mov	r0,#_match_mask
	mov	@r0,ar7
;	DAP.c:646: match_mask[1] = datas[1];
	mov	dptr,#(_datas + 0x0001)
	movx	a,@dptr
	mov	r7,a
	mov	r0,#(_match_mask + 0x0001)
	mov	@r0,ar7
;	DAP.c:647: match_mask[2] = datas[2];
	mov	dptr,#(_datas + 0x0002)
	movx	a,@dptr
	mov	r7,a
	mov	r0,#(_match_mask + 0x0002)
	mov	@r0,ar7
;	DAP.c:648: match_mask[3] = datas[3];
	mov	dptr,#(_datas + 0x0003)
	movx	a,@dptr
	mov	r7,a
	mov	r0,#(_match_mask + 0x0003)
	mov	@r0,ar7
;	DAP.c:649: response_value = DAP_TRANSFER_OK;
	mov	r0,#_response_value
	mov	@r0,#0x01
	sjmp	00192$
00188$:
;	DAP.c:654: retry = retry_count;
	mov	r0,#_retry_count
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,#_retry
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	DAP.c:655: do
00182$:
;	DAP.c:657: response_value = SWD_Transfer(request_value, datas);
	mov	_SWD_Transfer_PARM_2,#_datas
	mov	(_SWD_Transfer_PARM_2 + 1),#(_datas >> 8)
	mov	r0,#_request_value
	mov	dpl,@r0
	lcall	_SWD_Transfer
	mov	r7,dpl
	mov	r0,#_response_value
	mov	@r0,ar7
;	DAP.c:659: while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
	cjne	r7,#0x02,00184$
	mov	r0,#_retry
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	r0,#_retry
	mov	a,r5
	add	a,#0xff
	mov	@r0,a
	mov	a,r6
	addc	a,#0xff
	inc	r0
	mov	@r0,a
	mov	a,r5
	orl	a,r6
	jz	00184$
	mov	r0,#_DAP_TransferAbort
	mov	a,@r0
	jz	00182$
00184$:
;	DAP.c:660: if (response_value != DAP_TRANSFER_OK)
	cjne	r7,#0x01,00226$
;	DAP.c:665: check_write = 1U;
	mov	_DAP_SWD_Transfer_check_write_65536_95,#0x01
00192$:
;	DAP.c:668: response_count++;
	mov	r0,#_response_count
	inc	@r0
;	DAP.c:669: if (DAP_TransferAbort)
	mov	r0,#_DAP_TransferAbort
	mov	a,@r0
	jnz	00226$
;	DAP.c:476: for (; request_count != 0U; request_count--)
	mov	r0,#_request_count
	dec	@r0
	ljmp	00223$
00226$:
;	DAP.c:675: for (; request_count != 0U; request_count--)
	mov	r0,#_request_count
	mov	a,@r0
	jz	00201$
;	DAP.c:678: request_value = *req++;
	mov	dpl,_DAP_SWD_Transfer_sloc0_1_0
	mov	dph,(_DAP_SWD_Transfer_sloc0_1_0 + 1)
	mov	b,(_DAP_SWD_Transfer_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	mov	_DAP_SWD_Transfer_sloc0_1_0,dpl
	mov	(_DAP_SWD_Transfer_sloc0_1_0 + 1),dph
	mov	r0,#_request_value
	mov	@r0,ar7
;	DAP.c:679: if ((request_value & DAP_TRANSFER_RnW) != 0U)
	mov	a,r7
	jnb	acc.1,00199$
;	DAP.c:682: if ((request_value & DAP_TRANSFER_MATCH_VALUE) != 0U)
	mov	a,r7
	jnb	acc.4,00227$
;	DAP.c:685: req += 4;
	mov	a,#0x04
	add	a,_DAP_SWD_Transfer_sloc0_1_0
	mov	_DAP_SWD_Transfer_sloc0_1_0,a
	clr	a
	addc	a,(_DAP_SWD_Transfer_sloc0_1_0 + 1)
	mov	(_DAP_SWD_Transfer_sloc0_1_0 + 1),a
	sjmp	00227$
00199$:
;	DAP.c:691: req += 4;
	mov	a,#0x04
	add	a,_DAP_SWD_Transfer_sloc0_1_0
	mov	_DAP_SWD_Transfer_sloc0_1_0,a
	clr	a
	addc	a,(_DAP_SWD_Transfer_sloc0_1_0 + 1)
	mov	(_DAP_SWD_Transfer_sloc0_1_0 + 1),a
00227$:
;	DAP.c:675: for (; request_count != 0U; request_count--)
	mov	r0,#_request_count
	dec	@r0
	sjmp	00226$
00201$:
;	DAP.c:695: if (response_value == DAP_TRANSFER_OK)
	mov	r0,#_response_value
	cjne	@r0,#0x01,00629$
	sjmp	00630$
00629$:
	ljmp	00221$
00630$:
;	DAP.c:697: if (post_read)
	mov	a,_DAP_SWD_Transfer_post_read_65536_95
	jnz	00631$
	ljmp	00217$
00631$:
;	DAP.c:700: retry = retry_count;
	mov	r0,#_retry_count
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,#_retry
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	DAP.c:701: do
00204$:
;	DAP.c:703: response_value = SWD_Transfer(DP_RDBUFF | DAP_TRANSFER_RnW, datas);
	mov	_SWD_Transfer_PARM_2,#_datas
	mov	(_SWD_Transfer_PARM_2 + 1),#(_datas >> 8)
	mov	dpl,#0x0e
	lcall	_SWD_Transfer
	mov	r7,dpl
	mov	r0,#_response_value
	mov	@r0,ar7
;	DAP.c:705: while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
	cjne	r7,#0x02,00206$
	mov	r0,#_retry
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	r0,#_retry
	mov	a,r5
	add	a,#0xff
	mov	@r0,a
	mov	a,r6
	addc	a,#0xff
	inc	r0
	mov	@r0,a
	mov	a,r5
	orl	a,r6
	jz	00206$
	mov	r0,#_DAP_TransferAbort
	mov	a,@r0
	jz	00204$
00206$:
;	DAP.c:706: if (response_value != DAP_TRANSFER_OK)
	cjne	r7,#0x01,00636$
	sjmp	00637$
00636$:
	ljmp	00221$
00637$:
;	DAP.c:711: *res++ = (uint8_t)datas[0];
	mov	r5,_DAP_SWD_Transfer_PARM_2
	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
	mov	dptr,#_datas
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	mov	a,#0x01
	add	a,r5
	mov	_DAP_SWD_Transfer_PARM_2,a
	clr	a
	addc	a,r6
	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
;	DAP.c:712: *res++ = (uint8_t)datas[1];
	mov	r5,_DAP_SWD_Transfer_PARM_2
	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
	mov	dptr,#(_datas + 0x0001)
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	mov	a,#0x01
	add	a,r5
	mov	_DAP_SWD_Transfer_PARM_2,a
	clr	a
	addc	a,r6
	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
;	DAP.c:713: *res++ = (uint8_t)datas[2];
	mov	r5,_DAP_SWD_Transfer_PARM_2
	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
	mov	dptr,#(_datas + 0x0002)
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	mov	a,#0x01
	add	a,r5
	mov	_DAP_SWD_Transfer_PARM_2,a
	clr	a
	addc	a,r6
	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
;	DAP.c:714: *res++ = (uint8_t)datas[3];
	mov	r5,_DAP_SWD_Transfer_PARM_2
	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
	mov	dptr,#(_datas + 0x0003)
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	mov	a,#0x01
	add	a,r5
	mov	_DAP_SWD_Transfer_PARM_2,a
	clr	a
	addc	a,r6
	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
	sjmp	00221$
00217$:
;	DAP.c:716: else if (check_write)
	mov	a,_DAP_SWD_Transfer_check_write_65536_95
	jz	00221$
;	DAP.c:719: retry = retry_count;
	mov	r0,#_retry_count
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,#_retry
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	DAP.c:720: do
00211$:
;	DAP.c:722: response_value = SWD_Transfer(DP_RDBUFF | DAP_TRANSFER_RnW, NULL);
	clr	a
	mov	_SWD_Transfer_PARM_2,a
	mov	(_SWD_Transfer_PARM_2 + 1),a
	mov	dpl,#0x0e
	lcall	_SWD_Transfer
	mov	r7,dpl
	mov	r0,#_response_value
	mov	@r0,ar7
;	DAP.c:724: while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
	cjne	r7,#0x02,00221$
	mov	r0,#_retry
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,#_retry
	mov	a,r6
	add	a,#0xff
	mov	@r0,a
	mov	a,r7
	addc	a,#0xff
	inc	r0
	mov	@r0,a
	mov	a,r6
	orl	a,r7
	jz	00221$
	mov	r0,#_DAP_TransferAbort
	mov	a,@r0
	jz	00211$
;	DAP.c:728: end:
00221$:
;	DAP.c:729: *(response_head + 0) = (uint8_t)response_count;
	mov	dpl,_DAP_SWD_Transfer_response_head_65536_95
	mov	dph,(_DAP_SWD_Transfer_response_head_65536_95 + 1)
	mov	b,(_DAP_SWD_Transfer_response_head_65536_95 + 2)
	mov	r0,#_response_count
	mov	a,@r0
	lcall	__gptrput
;	DAP.c:730: *(response_head + 1) = (uint8_t)response_value;
	mov	a,#0x01
	add	a,_DAP_SWD_Transfer_response_head_65536_95
	mov	r5,a
	clr	a
	addc	a,(_DAP_SWD_Transfer_response_head_65536_95 + 1)
	mov	r6,a
	mov	r7,(_DAP_SWD_Transfer_response_head_65536_95 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_response_value
	mov	a,@r0
	lcall	__gptrput
;	DAP.c:732: return ((uint8_t)(res - response_head));
	mov	a,_DAP_SWD_Transfer_PARM_2
	clr	c
	subb	a,_DAP_SWD_Transfer_response_head_65536_95
	mov	r6,a
	mov	a,(_DAP_SWD_Transfer_PARM_2 + 1)
	subb	a,(_DAP_SWD_Transfer_response_head_65536_95 + 1)
	mov	dpl,r6
;	DAP.c:733: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_Transfer'
;------------------------------------------------------------
;res                       Allocated with name '_DAP_Transfer_PARM_2'
;req                       Allocated to registers r5 r6 r7 
;num                       Allocated to registers 
;------------------------------------------------------------
;	DAP.c:783: static uint8_t DAP_Transfer(const uint8_t *req, uint8_t *res)
;	-----------------------------------------
;	 function DAP_Transfer
;	-----------------------------------------
_DAP_Transfer:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	DAP.c:790: num = DAP_SWD_Transfer(req, res);
	mov	_DAP_SWD_Transfer_PARM_2,_DAP_Transfer_PARM_2
	mov	(_DAP_SWD_Transfer_PARM_2 + 1),(_DAP_Transfer_PARM_2 + 1)
	mov	(_DAP_SWD_Transfer_PARM_2 + 2),(_DAP_Transfer_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	DAP.c:797: return (num);
;	DAP.c:798: }
	ljmp	_DAP_SWD_Transfer
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_SWD_TransferBlock'
;------------------------------------------------------------
;res                       Allocated with name '_DAP_SWD_TransferBlock_PARM_2'
;req                       Allocated to registers r5 r6 r7 
;response_head             Allocated with name '_DAP_SWD_TransferBlock_response_head_65536_145'
;sloc0                     Allocated with name '_DAP_SWD_TransferBlock_sloc0_1_0'
;sloc1                     Allocated with name '_DAP_SWD_TransferBlock_sloc1_1_0'
;------------------------------------------------------------
;	DAP.c:804: static uint8_t DAP_SWD_TransferBlock(const uint8_t *req, uint8_t *res)
;	-----------------------------------------
;	 function DAP_SWD_TransferBlock
;	-----------------------------------------
_DAP_SWD_TransferBlock:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	DAP.c:808: response_count = 0U;
	mov	r0,#_response_count
	mov	@r0,#0x00
;	DAP.c:809: response_value = 0U;
	mov	r0,#_response_value
	mov	@r0,#0x00
;	DAP.c:810: response_head = res;
	mov	_DAP_SWD_TransferBlock_response_head_65536_145,_DAP_SWD_TransferBlock_PARM_2
	mov	(_DAP_SWD_TransferBlock_response_head_65536_145 + 1),(_DAP_SWD_TransferBlock_PARM_2 + 1)
	mov	(_DAP_SWD_TransferBlock_response_head_65536_145 + 2),(_DAP_SWD_TransferBlock_PARM_2 + 2)
;	DAP.c:811: res += 3;
	mov	a,#0x03
	add	a,_DAP_SWD_TransferBlock_response_head_65536_145
	mov	_DAP_SWD_TransferBlock_PARM_2,a
	clr	a
	addc	a,(_DAP_SWD_TransferBlock_response_head_65536_145 + 1)
	mov	(_DAP_SWD_TransferBlock_PARM_2 + 1),a
	mov	(_DAP_SWD_TransferBlock_PARM_2 + 2),(_DAP_SWD_TransferBlock_response_head_65536_145 + 2)
;	DAP.c:813: DAP_TransferAbort = 0U;
	mov	r0,#_DAP_TransferAbort
	mov	@r0,#0x00
;	DAP.c:815: req++; // Ignore DAP index
	inc	r5
	cjne	r5,#0x00,00261$
	inc	r6
00261$:
;	DAP.c:817: request_count = (uint16_t)(*(req + 0) << 0) |
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
	mov	_DAP_SWD_TransferBlock_sloc0_1_0,r4
	mov	(_DAP_SWD_TransferBlock_sloc0_1_0 + 1),r3
;	DAP.c:818: (uint16_t)(*(req + 1) << 8);
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
	mov	r2,#0x00
	mov	a,_DAP_SWD_TransferBlock_sloc0_1_0
	orl	ar2,a
	mov	a,(_DAP_SWD_TransferBlock_sloc0_1_0 + 1)
	orl	ar4,a
	mov	r0,#_request_count
	mov	@r0,ar2
;	DAP.c:819: req += 2;
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
;	DAP.c:820: if (request_count == 0U)
	mov	r0,#_request_count
	mov	a,@r0
	jnz	00262$
	ljmp	00143$
00262$:
;	DAP.c:825: request_value = *req++;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	r5
	cjne	r5,#0x00,00263$
	inc	r6
00263$:
	mov	r0,#_request_value
	mov	@r0,ar4
;	DAP.c:826: if ((request_value & DAP_TRANSFER_RnW) != 0U)
	mov	a,r4
	jb	acc.1,00264$
	ljmp	00165$
00264$:
;	DAP.c:829: if ((request_value & DAP_TRANSFER_APnDP) != 0U)
	mov	a,r4
	jnb	acc.0,00159$
;	DAP.c:832: retry = retry_count;
	mov	r0,#_retry_count
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	r0,#_retry
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	DAP.c:833: do
00105$:
;	DAP.c:835: response_value = SWD_Transfer(request_value, NULL);
	clr	a
	mov	_SWD_Transfer_PARM_2,a
	mov	(_SWD_Transfer_PARM_2 + 1),a
	mov	r0,#_request_value
	mov	dpl,@r0
	lcall	_SWD_Transfer
	mov	r4,dpl
	mov	r0,#_response_value
	mov	@r0,ar4
;	DAP.c:837: while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
	cjne	r4,#0x02,00107$
	mov	r0,#_retry
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	mov	r0,#_retry
	mov	a,r2
	add	a,#0xff
	mov	@r0,a
	mov	a,r3
	addc	a,#0xff
	inc	r0
	mov	@r0,a
	mov	a,r2
	orl	a,r3
	jz	00107$
	mov	r0,#_DAP_TransferAbort
	mov	a,@r0
	jz	00105$
00107$:
;	DAP.c:838: if (response_value != DAP_TRANSFER_OK)
	cjne	r4,#0x01,00270$
	sjmp	00271$
00270$:
	ljmp	00143$
00271$:
;	DAP.c:843: while (request_count--)
00159$:
00122$:
	mov	r0,#_request_count
	mov	ar4,@r0
	mov	r0,#_request_count
	mov	a,r4
	dec	a
	mov	@r0,a
	mov	a,r4
	jnz	00272$
	ljmp	00143$
00272$:
;	DAP.c:846: if ((request_count == 0U) && ((request_value & DAP_TRANSFER_APnDP) != 0U))
	mov	r0,#_request_count
	mov	a,@r0
	jnz	00113$
	mov	r0,#_request_value
	mov	a,@r0
	jnb	acc.0,00113$
;	DAP.c:849: request_value = DP_RDBUFF | DAP_TRANSFER_RnW;
	mov	r0,#_request_value
	mov	@r0,#0x0e
00113$:
;	DAP.c:851: retry = retry_count;
	mov	r0,#_retry_count
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	r0,#_retry
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	DAP.c:852: do
00117$:
;	DAP.c:854: response_value = SWD_Transfer(request_value, datas);
	mov	_SWD_Transfer_PARM_2,#_datas
	mov	(_SWD_Transfer_PARM_2 + 1),#(_datas >> 8)
	mov	r0,#_request_value
	mov	dpl,@r0
	lcall	_SWD_Transfer
	mov	r4,dpl
	mov	r0,#_response_value
	mov	@r0,ar4
;	DAP.c:856: while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
	cjne	r4,#0x02,00119$
	mov	r0,#_retry
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	r0,#_retry
	mov	a,r3
	add	a,#0xff
	mov	@r0,a
	mov	a,r4
	addc	a,#0xff
	inc	r0
	mov	@r0,a
	mov	a,r3
	orl	a,r4
	jz	00119$
	mov	r0,#_DAP_TransferAbort
	mov	a,@r0
	jz	00117$
00119$:
;	DAP.c:857: if (response_value != DAP_TRANSFER_OK)
	mov	r0,#_response_value
	cjne	@r0,#0x01,00279$
	sjmp	00280$
00279$:
	ljmp	00143$
00280$:
;	DAP.c:862: *res++ = (uint8_t)datas[0];
	mov	_DAP_SWD_TransferBlock_sloc1_1_0,_DAP_SWD_TransferBlock_PARM_2
	mov	(_DAP_SWD_TransferBlock_sloc1_1_0 + 1),(_DAP_SWD_TransferBlock_PARM_2 + 1)
	mov	(_DAP_SWD_TransferBlock_sloc1_1_0 + 2),(_DAP_SWD_TransferBlock_PARM_2 + 2)
	mov	dptr,#_datas
	movx	a,@dptr
	mov	dpl,_DAP_SWD_TransferBlock_sloc1_1_0
	mov	dph,(_DAP_SWD_TransferBlock_sloc1_1_0 + 1)
	mov	b,(_DAP_SWD_TransferBlock_sloc1_1_0 + 2)
	lcall	__gptrput
	mov	a,#0x01
	add	a,_DAP_SWD_TransferBlock_sloc1_1_0
	mov	_DAP_SWD_TransferBlock_PARM_2,a
	clr	a
	addc	a,(_DAP_SWD_TransferBlock_sloc1_1_0 + 1)
	mov	(_DAP_SWD_TransferBlock_PARM_2 + 1),a
	mov	(_DAP_SWD_TransferBlock_PARM_2 + 2),(_DAP_SWD_TransferBlock_sloc1_1_0 + 2)
;	DAP.c:863: *res++ = (uint8_t)datas[1];
	mov	_DAP_SWD_TransferBlock_sloc1_1_0,_DAP_SWD_TransferBlock_PARM_2
	mov	(_DAP_SWD_TransferBlock_sloc1_1_0 + 1),(_DAP_SWD_TransferBlock_PARM_2 + 1)
	mov	(_DAP_SWD_TransferBlock_sloc1_1_0 + 2),(_DAP_SWD_TransferBlock_PARM_2 + 2)
	mov	dptr,#(_datas + 0x0001)
	movx	a,@dptr
	mov	dpl,_DAP_SWD_TransferBlock_sloc1_1_0
	mov	dph,(_DAP_SWD_TransferBlock_sloc1_1_0 + 1)
	mov	b,(_DAP_SWD_TransferBlock_sloc1_1_0 + 2)
	lcall	__gptrput
	mov	a,#0x01
	add	a,_DAP_SWD_TransferBlock_sloc1_1_0
	mov	_DAP_SWD_TransferBlock_PARM_2,a
	clr	a
	addc	a,(_DAP_SWD_TransferBlock_sloc1_1_0 + 1)
	mov	(_DAP_SWD_TransferBlock_PARM_2 + 1),a
	mov	(_DAP_SWD_TransferBlock_PARM_2 + 2),(_DAP_SWD_TransferBlock_sloc1_1_0 + 2)
;	DAP.c:864: *res++ = (uint8_t)datas[2];
	mov	_DAP_SWD_TransferBlock_sloc1_1_0,_DAP_SWD_TransferBlock_PARM_2
	mov	(_DAP_SWD_TransferBlock_sloc1_1_0 + 1),(_DAP_SWD_TransferBlock_PARM_2 + 1)
	mov	(_DAP_SWD_TransferBlock_sloc1_1_0 + 2),(_DAP_SWD_TransferBlock_PARM_2 + 2)
	mov	dptr,#(_datas + 0x0002)
	movx	a,@dptr
	mov	dpl,_DAP_SWD_TransferBlock_sloc1_1_0
	mov	dph,(_DAP_SWD_TransferBlock_sloc1_1_0 + 1)
	mov	b,(_DAP_SWD_TransferBlock_sloc1_1_0 + 2)
	lcall	__gptrput
	mov	a,#0x01
	add	a,_DAP_SWD_TransferBlock_sloc1_1_0
	mov	_DAP_SWD_TransferBlock_PARM_2,a
	clr	a
	addc	a,(_DAP_SWD_TransferBlock_sloc1_1_0 + 1)
	mov	(_DAP_SWD_TransferBlock_PARM_2 + 1),a
	mov	(_DAP_SWD_TransferBlock_PARM_2 + 2),(_DAP_SWD_TransferBlock_sloc1_1_0 + 2)
;	DAP.c:865: *res++ = (uint8_t)datas[3];
	mov	_DAP_SWD_TransferBlock_sloc1_1_0,_DAP_SWD_TransferBlock_PARM_2
	mov	(_DAP_SWD_TransferBlock_sloc1_1_0 + 1),(_DAP_SWD_TransferBlock_PARM_2 + 1)
	mov	(_DAP_SWD_TransferBlock_sloc1_1_0 + 2),(_DAP_SWD_TransferBlock_PARM_2 + 2)
	mov	dptr,#(_datas + 0x0003)
	movx	a,@dptr
	mov	r4,a
	mov	dpl,_DAP_SWD_TransferBlock_sloc1_1_0
	mov	dph,(_DAP_SWD_TransferBlock_sloc1_1_0 + 1)
	mov	b,(_DAP_SWD_TransferBlock_sloc1_1_0 + 2)
	lcall	__gptrput
	mov	a,#0x01
	add	a,_DAP_SWD_TransferBlock_sloc1_1_0
	mov	_DAP_SWD_TransferBlock_PARM_2,a
	clr	a
	addc	a,(_DAP_SWD_TransferBlock_sloc1_1_0 + 1)
	mov	(_DAP_SWD_TransferBlock_PARM_2 + 1),a
	mov	(_DAP_SWD_TransferBlock_PARM_2 + 2),(_DAP_SWD_TransferBlock_sloc1_1_0 + 2)
;	DAP.c:866: response_count++;
	mov	r0,#_response_count
	inc	@r0
	ljmp	00122$
;	DAP.c:872: while (request_count--)
00165$:
00132$:
	mov	r0,#_request_count
	mov	ar4,@r0
	mov	r0,#_request_count
	mov	a,r4
	dec	a
	mov	@r0,a
	mov	a,r4
	jnz	00281$
	ljmp	00134$
00281$:
;	DAP.c:875: datas[0] = (uint8_t)(*(req + 0));
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dptr,#_datas
	movx	@dptr,a
;	DAP.c:876: datas[1] = (uint8_t)(*(req + 1));
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dptr,#(_datas + 0x0001)
	movx	@dptr,a
;	DAP.c:877: datas[2] = (uint8_t)(*(req + 2));
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dptr,#(_datas + 0x0002)
	movx	@dptr,a
;	DAP.c:878: datas[3] = (uint8_t)(*(req + 3));
	mov	a,#0x03
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#(_datas + 0x0003)
	movx	@dptr,a
;	DAP.c:880: req += 4;
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
;	DAP.c:882: retry = retry_count;
	mov	r0,#_retry_count
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	r0,#_retry
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	DAP.c:883: do
00127$:
;	DAP.c:885: response_value = SWD_Transfer(request_value, datas);
	mov	_SWD_Transfer_PARM_2,#_datas
	mov	(_SWD_Transfer_PARM_2 + 1),#(_datas >> 8)
	mov	r0,#_request_value
	mov	dpl,@r0
	push	ar7
	push	ar6
	push	ar5
	lcall	_SWD_Transfer
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,#_response_value
	mov	@r0,ar4
;	DAP.c:887: while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
	cjne	r4,#0x02,00129$
	mov	r0,#_retry
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	mov	r0,#_retry
	mov	a,r2
	add	a,#0xff
	mov	@r0,a
	mov	a,r3
	addc	a,#0xff
	inc	r0
	mov	@r0,a
	mov	a,r2
	orl	a,r3
	jz	00129$
	mov	r0,#_DAP_TransferAbort
	mov	a,@r0
	jz	00127$
00129$:
;	DAP.c:888: if (response_value != DAP_TRANSFER_OK)
	cjne	r4,#0x01,00143$
;	DAP.c:892: response_count++;
	mov	r0,#_response_count
	inc	@r0
	ljmp	00132$
00134$:
;	DAP.c:895: retry = retry_count;
	mov	r0,#_retry_count
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,#_retry
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	DAP.c:896: do
00137$:
;	DAP.c:898: response_value = SWD_Transfer(DP_RDBUFF | DAP_TRANSFER_RnW, NULL);
	clr	a
	mov	_SWD_Transfer_PARM_2,a
	mov	(_SWD_Transfer_PARM_2 + 1),a
	mov	dpl,#0x0e
	lcall	_SWD_Transfer
	mov	r7,dpl
	mov	r0,#_response_value
	mov	@r0,ar7
;	DAP.c:900: while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
	cjne	r7,#0x02,00143$
	mov	r0,#_retry
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,#_retry
	mov	a,r6
	add	a,#0xff
	mov	@r0,a
	mov	a,r7
	addc	a,#0xff
	inc	r0
	mov	@r0,a
	mov	a,r6
	orl	a,r7
	jz	00143$
	mov	r0,#_DAP_TransferAbort
	mov	a,@r0
	jz	00137$
;	DAP.c:903: end:
00143$:
;	DAP.c:904: *(response_head + 0) = (uint8_t)(response_count >> 0);
	mov	r0,#_response_count
	mov	ar7,@r0
	mov	dpl,_DAP_SWD_TransferBlock_response_head_65536_145
	mov	dph,(_DAP_SWD_TransferBlock_response_head_65536_145 + 1)
	mov	b,(_DAP_SWD_TransferBlock_response_head_65536_145 + 2)
	mov	a,r7
	lcall	__gptrput
;	DAP.c:905: *(response_head + 1) = (uint8_t)(response_count >> 8);
	mov	a,#0x01
	add	a,_DAP_SWD_TransferBlock_response_head_65536_145
	mov	r5,a
	clr	a
	addc	a,(_DAP_SWD_TransferBlock_response_head_65536_145 + 1)
	mov	r6,a
	mov	r7,(_DAP_SWD_TransferBlock_response_head_65536_145 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	DAP.c:906: *(response_head + 2) = (uint8_t)response_value;
	mov	a,#0x02
	add	a,_DAP_SWD_TransferBlock_response_head_65536_145
	mov	r5,a
	clr	a
	addc	a,(_DAP_SWD_TransferBlock_response_head_65536_145 + 1)
	mov	r6,a
	mov	r7,(_DAP_SWD_TransferBlock_response_head_65536_145 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_response_value
	mov	a,@r0
	lcall	__gptrput
;	DAP.c:908: return ((uint8_t)(res - response_head));
	mov	a,_DAP_SWD_TransferBlock_PARM_2
	clr	c
	subb	a,_DAP_SWD_TransferBlock_response_head_65536_145
	mov	r6,a
	mov	a,(_DAP_SWD_TransferBlock_PARM_2 + 1)
	subb	a,(_DAP_SWD_TransferBlock_response_head_65536_145 + 1)
	mov	dpl,r6
;	DAP.c:909: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_TransferBlock'
;------------------------------------------------------------
;res                       Allocated with name '_DAP_TransferBlock_PARM_2'
;req                       Allocated to registers r5 r6 r7 
;num                       Allocated to registers r7 
;sloc0                     Allocated with name '_DAP_TransferBlock_sloc0_1_0'
;------------------------------------------------------------
;	DAP.c:916: static uint8_t DAP_TransferBlock(const uint8_t *req, uint8_t *res)
;	-----------------------------------------
;	 function DAP_TransferBlock
;	-----------------------------------------
_DAP_TransferBlock:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	DAP.c:920: switch (debug_port)
	mov	r0,#_debug_port
	cjne	@r0,#0x01,00102$
;	DAP.c:923: num = DAP_SWD_TransferBlock(req, res);
	mov	_DAP_SWD_TransferBlock_PARM_2,_DAP_TransferBlock_PARM_2
	mov	(_DAP_SWD_TransferBlock_PARM_2 + 1),(_DAP_TransferBlock_PARM_2 + 1)
	mov	(_DAP_SWD_TransferBlock_PARM_2 + 2),(_DAP_TransferBlock_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_DAP_SWD_TransferBlock
	mov	r7,dpl
;	DAP.c:924: break;
;	DAP.c:926: default:
	sjmp	00103$
00102$:
;	DAP.c:927: *(res + 0) = 0U; // res count [7:0]
	mov	_DAP_TransferBlock_sloc0_1_0,_DAP_TransferBlock_PARM_2
	mov	(_DAP_TransferBlock_sloc0_1_0 + 1),(_DAP_TransferBlock_PARM_2 + 1)
	mov	(_DAP_TransferBlock_sloc0_1_0 + 2),(_DAP_TransferBlock_PARM_2 + 2)
	mov	dpl,_DAP_TransferBlock_sloc0_1_0
	mov	dph,(_DAP_TransferBlock_sloc0_1_0 + 1)
	mov	b,(_DAP_TransferBlock_sloc0_1_0 + 2)
	clr	a
	lcall	__gptrput
;	DAP.c:928: *(res + 1) = 0U; // res count[15:8]
	inc	a
	add	a,_DAP_TransferBlock_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a,(_DAP_TransferBlock_sloc0_1_0 + 1)
	mov	r3,a
	mov	r6,(_DAP_TransferBlock_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	clr	a
	lcall	__gptrput
;	DAP.c:929: *(res + 2) = 0U; // res value
	mov	a,#0x02
	add	a,_DAP_TransferBlock_sloc0_1_0
	mov	r4,a
	clr	a
	addc	a,(_DAP_TransferBlock_sloc0_1_0 + 1)
	mov	r5,a
	mov	r6,(_DAP_TransferBlock_sloc0_1_0 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	clr	a
	lcall	__gptrput
;	DAP.c:930: num = 3U;
	mov	r7,#0x03
;	DAP.c:932: }
00103$:
;	DAP.c:945: return (num);
	mov	dpl,r7
;	DAP.c:946: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_SWD_WriteAbort'
;------------------------------------------------------------
;res                       Allocated with name '_DAP_SWD_WriteAbort_PARM_2'
;req                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	DAP.c:952: static uint8_t DAP_SWD_WriteAbort(const uint8_t *req, uint8_t *res)
;	-----------------------------------------
;	 function DAP_SWD_WriteAbort
;	-----------------------------------------
_DAP_SWD_WriteAbort:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	DAP.c:955: datas[0] = (uint8_t)(*(req + 1));
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dptr,#_datas
	movx	@dptr,a
;	DAP.c:956: datas[1] = (uint8_t)(*(req + 2));
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dptr,#(_datas + 0x0001)
	movx	@dptr,a
;	DAP.c:957: datas[2] = (uint8_t)(*(req + 3));
	mov	a,#0x03
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dptr,#(_datas + 0x0002)
	movx	@dptr,a
;	DAP.c:958: datas[3] = (uint8_t)(*(req + 4));
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dptr,#(_datas + 0x0003)
	movx	@dptr,a
;	DAP.c:961: SWD_Transfer(DP_ABORT, datas);
	mov	_SWD_Transfer_PARM_2,#_datas
	mov	(_SWD_Transfer_PARM_2 + 1),#(_datas >> 8)
	mov	dpl,#0x00
	lcall	_SWD_Transfer
;	DAP.c:963: *res = DAP_OK;
	mov	r5,_DAP_SWD_WriteAbort_PARM_2
	mov	r6,(_DAP_SWD_WriteAbort_PARM_2 + 1)
	mov	r7,(_DAP_SWD_WriteAbort_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	DAP.c:964: return (1U);
	mov	dpl,#0x01
;	DAP.c:965: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_WriteAbort'
;------------------------------------------------------------
;res                       Allocated with name '_DAP_WriteAbort_PARM_2'
;req                       Allocated to registers r5 r6 r7 
;num                       Allocated to registers r7 
;------------------------------------------------------------
;	DAP.c:972: static uint8_t DAP_WriteAbort(const uint8_t *req, uint8_t *res)
;	-----------------------------------------
;	 function DAP_WriteAbort
;	-----------------------------------------
_DAP_WriteAbort:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	DAP.c:976: switch (debug_port)
	mov	r0,#_debug_port
	cjne	@r0,#0x01,00102$
;	DAP.c:979: num = DAP_SWD_WriteAbort(req, res);
	mov	_DAP_SWD_WriteAbort_PARM_2,_DAP_WriteAbort_PARM_2
	mov	(_DAP_SWD_WriteAbort_PARM_2 + 1),(_DAP_WriteAbort_PARM_2 + 1)
	mov	(_DAP_SWD_WriteAbort_PARM_2 + 2),(_DAP_WriteAbort_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_DAP_SWD_WriteAbort
	mov	r7,dpl
;	DAP.c:980: break;
;	DAP.c:982: default:
	sjmp	00103$
00102$:
;	DAP.c:983: *res = DAP_ERROR;
	mov	r4,_DAP_WriteAbort_PARM_2
	mov	r5,(_DAP_WriteAbort_PARM_2 + 1)
	mov	r6,(_DAP_WriteAbort_PARM_2 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,#0xff
	lcall	__gptrput
;	DAP.c:984: num = 1U;
	mov	r7,#0x01
;	DAP.c:986: }
00103$:
;	DAP.c:987: return num;
	mov	dpl,r7
;	DAP.c:988: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAP_Thread'
;------------------------------------------------------------
;num                       Allocated to registers r6 
;returnVal                 Allocated to registers 
;t                         Allocated to registers r3 r4 r5 r6 
;req                       Allocated to registers 
;res                       Allocated to registers 
;------------------------------------------------------------
;	DAP.c:992: uint8_t DAP_Thread(void)
;	-----------------------------------------
;	 function DAP_Thread
;	-----------------------------------------
_DAP_Thread:
;	DAP.c:1000: uint8_t __xdata *req = &Ep1Buffer[0];
;	DAP.c:1001: uint8_t __xdata *res = &Ep1Buffer[64];
;	DAP.c:1003: *res++ = *req;
	mov	dptr,#_Ep1Buffer
	movx	a,@dptr
	mov	dptr,#(_Ep1Buffer + 0x0040)
	movx	@dptr,a
;	DAP.c:1004: switch (*req++)
	mov	dptr,#_Ep1Buffer
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x00,00215$
	ljmp	00103$
00215$:
	cjne	r7,#0x01,00216$
	ljmp	00104$
00216$:
	cjne	r7,#0x02,00217$
	ljmp	00105$
00217$:
	cjne	r7,#0x03,00218$
	ljmp	00106$
00218$:
	cjne	r7,#0x04,00219$
	ljmp	00114$
00219$:
	cjne	r7,#0x05,00220$
	sjmp	00101$
00220$:
	cjne	r7,#0x06,00221$
	sjmp	00102$
00221$:
	cjne	r7,#0x08,00222$
	ljmp	00115$
00222$:
	cjne	r7,#0x09,00223$
	ljmp	00107$
00223$:
	cjne	r7,#0x0a,00224$
	ljmp	00108$
00224$:
	cjne	r7,#0x10,00225$
	ljmp	00109$
00225$:
	cjne	r7,#0x11,00226$
	ljmp	00110$
00226$:
	cjne	r7,#0x12,00227$
	ljmp	00111$
00227$:
	cjne	r7,#0x13,00228$
	ljmp	00112$
00228$:
	cjne	r7,#0x1d,00229$
	ljmp	00113$
00229$:
	cjne	r7,#0x7e,00230$
	ljmp	00119$
00230$:
	cjne	r7,#0x7f,00231$
	ljmp	00119$
00231$:
	cjne	r7,#0xff,00232$
	ljmp	00116$
00232$:
	ljmp	00119$
;	DAP.c:1006: case ID_DAP_Transfer:
00101$:
;	DAP.c:1007: num = DAP_Transfer(req, res);
	mov	_DAP_Transfer_PARM_2,#(_Ep1Buffer + 0x0041)
	mov	(_DAP_Transfer_PARM_2 + 1),#((_Ep1Buffer + 0x0041) >> 8)
	mov	(_DAP_Transfer_PARM_2 + 2),#0x00
	mov	dptr,#(_Ep1Buffer + 0x0001)
	mov	b,#0x00
	lcall	_DAP_Transfer
	mov	r7,dpl
;	DAP.c:1008: break;
	ljmp	00120$
;	DAP.c:1010: case ID_DAP_TransferBlock:
00102$:
;	DAP.c:1011: num = DAP_TransferBlock(req, res);
	mov	_DAP_TransferBlock_PARM_2,#(_Ep1Buffer + 0x0041)
	mov	(_DAP_TransferBlock_PARM_2 + 1),#((_Ep1Buffer + 0x0041) >> 8)
	mov	(_DAP_TransferBlock_PARM_2 + 2),#0x00
	mov	dptr,#(_Ep1Buffer + 0x0001)
	mov	b,#0x00
	lcall	_DAP_TransferBlock
	mov	r7,dpl
;	DAP.c:1012: break;
	ljmp	00120$
;	DAP.c:1014: case ID_DAP_Info:
00103$:
;	DAP.c:1015: num = DAP_Info(*req, res + 1);
	mov	dptr,#(_Ep1Buffer + 0x0001)
	movx	a,@dptr
	mov	r6,a
	mov	_DAP_Info_PARM_2,#(_Ep1Buffer + 0x0042)
	mov	(_DAP_Info_PARM_2 + 1),#((_Ep1Buffer + 0x0042) >> 8)
	mov	(_DAP_Info_PARM_2 + 2),#0x00
	mov	dpl,r6
	lcall	_DAP_Info
	mov	r6,dpl
;	DAP.c:1016: *res = (uint8_t)num;
	mov	dptr,#(_Ep1Buffer + 0x0041)
	mov	a,r6
	movx	@dptr,a
;	DAP.c:1017: num++;
	mov	a,r6
	inc	a
	mov	r7,a
;	DAP.c:1018: break;
	ljmp	00120$
;	DAP.c:1020: case ID_DAP_HostStatus:
00104$:
;	DAP.c:1021: num = DAP_HostStatus(req, res);
	mov	_DAP_HostStatus_PARM_2,#(_Ep1Buffer + 0x0041)
	mov	(_DAP_HostStatus_PARM_2 + 1),#((_Ep1Buffer + 0x0041) >> 8)
	mov	(_DAP_HostStatus_PARM_2 + 2),#0x00
	mov	dptr,#(_Ep1Buffer + 0x0001)
	mov	b,#0x00
	lcall	_DAP_HostStatus
	mov	r7,dpl
;	DAP.c:1022: break;
	ljmp	00120$
;	DAP.c:1024: case ID_DAP_Connect:
00105$:
;	DAP.c:1025: num = DAP_Connect(req, res);
	mov	_DAP_Connect_PARM_2,#(_Ep1Buffer + 0x0041)
	mov	(_DAP_Connect_PARM_2 + 1),#((_Ep1Buffer + 0x0041) >> 8)
	mov	(_DAP_Connect_PARM_2 + 2),#0x00
	mov	dptr,#(_Ep1Buffer + 0x0001)
	mov	b,#0x00
	lcall	_DAP_Connect
	mov	r7,dpl
;	DAP.c:1026: break;
	ljmp	00120$
;	DAP.c:1028: case ID_DAP_Disconnect:
00106$:
;	DAP.c:1029: num = DAP_Disconnect(res);
	mov	dptr,#(_Ep1Buffer + 0x0041)
	mov	b,#0x00
	lcall	_DAP_Disconnect
	mov	r7,dpl
;	DAP.c:1030: break;
	ljmp	00120$
;	DAP.c:1032: case ID_DAP_Delay:
00107$:
;	DAP.c:1033: num = DAP_Delay(req, res);
	mov	_DAP_Delay_PARM_2,#(_Ep1Buffer + 0x0041)
	mov	(_DAP_Delay_PARM_2 + 1),#((_Ep1Buffer + 0x0041) >> 8)
	mov	(_DAP_Delay_PARM_2 + 2),#0x00
	mov	dptr,#(_Ep1Buffer + 0x0001)
	mov	b,#0x00
	lcall	_DAP_Delay
	mov	r7,dpl
;	DAP.c:1034: break;
	ljmp	00120$
;	DAP.c:1036: case ID_DAP_ResetTarget:
00108$:
;	DAP.c:1037: num = DAP_ResetTarget(res);
	mov	dptr,#(_Ep1Buffer + 0x0041)
	mov	b,#0x00
	lcall	_DAP_ResetTarget
	mov	r7,dpl
;	DAP.c:1038: break;
	ljmp	00120$
;	DAP.c:1040: case ID_DAP_SWJ_Pins:
00109$:
;	DAP.c:1041: num = DAP_SWJ_Pins(req, res);
	mov	_DAP_SWJ_Pins_PARM_2,#(_Ep1Buffer + 0x0041)
	mov	(_DAP_SWJ_Pins_PARM_2 + 1),#((_Ep1Buffer + 0x0041) >> 8)
	mov	(_DAP_SWJ_Pins_PARM_2 + 2),#0x00
	mov	dptr,#(_Ep1Buffer + 0x0001)
	mov	b,#0x00
	lcall	_DAP_SWJ_Pins
	mov	r7,dpl
;	DAP.c:1042: break;
	ljmp	00120$
;	DAP.c:1044: case ID_DAP_SWJ_Clock:
00110$:
;	DAP.c:1045: num = DAP_SWJ_Clock(req, res);
	mov	_DAP_SWJ_Clock_PARM_2,#(_Ep1Buffer + 0x0041)
	mov	(_DAP_SWJ_Clock_PARM_2 + 1),#((_Ep1Buffer + 0x0041) >> 8)
	mov	(_DAP_SWJ_Clock_PARM_2 + 2),#0x00
	mov	dptr,#(_Ep1Buffer + 0x0001)
	mov	b,#0x00
	lcall	_DAP_SWJ_Clock
	mov	r7,dpl
;	DAP.c:1046: break;
	ljmp	00120$
;	DAP.c:1048: case ID_DAP_SWJ_Sequence:
00111$:
;	DAP.c:1049: num = DAP_SWJ_Sequence(req, res);
	mov	_DAP_SWJ_Sequence_PARM_2,#(_Ep1Buffer + 0x0041)
	mov	(_DAP_SWJ_Sequence_PARM_2 + 1),#((_Ep1Buffer + 0x0041) >> 8)
	mov	(_DAP_SWJ_Sequence_PARM_2 + 2),#0x00
	mov	dptr,#(_Ep1Buffer + 0x0001)
	mov	b,#0x00
	lcall	_DAP_SWJ_Sequence
	mov	r7,dpl
;	DAP.c:1050: break;
	ljmp	00120$
;	DAP.c:1052: case ID_DAP_SWD_Configure:
00112$:
;	DAP.c:1053: num = DAP_SWD_Configure(req, res);
	mov	_DAP_SWD_Configure_PARM_2,#(_Ep1Buffer + 0x0041)
	mov	(_DAP_SWD_Configure_PARM_2 + 1),#((_Ep1Buffer + 0x0041) >> 8)
	mov	(_DAP_SWD_Configure_PARM_2 + 2),#0x00
	mov	dptr,#(_Ep1Buffer + 0x0001)
	mov	b,#0x00
	lcall	_DAP_SWD_Configure
	mov	r7,dpl
;	DAP.c:1054: break;
	ljmp	00120$
;	DAP.c:1056: case ID_DAP_SWD_Sequence:
00113$:
;	DAP.c:1057: num = DAP_SWD_Sequence(req, res);
	mov	_DAP_SWD_Sequence_PARM_2,#(_Ep1Buffer + 0x0041)
	mov	(_DAP_SWD_Sequence_PARM_2 + 1),#((_Ep1Buffer + 0x0041) >> 8)
	mov	(_DAP_SWD_Sequence_PARM_2 + 2),#0x00
	mov	dptr,#(_Ep1Buffer + 0x0001)
	mov	b,#0x00
	lcall	_DAP_SWD_Sequence
	mov	r7,dpl
;	DAP.c:1058: break;
;	DAP.c:1060: case ID_DAP_TransferConfigure:
	sjmp	00120$
00114$:
;	DAP.c:1061: num = DAP_TransferConfigure(req, res);
	mov	_DAP_TransferConfigure_PARM_2,#(_Ep1Buffer + 0x0041)
	mov	(_DAP_TransferConfigure_PARM_2 + 1),#((_Ep1Buffer + 0x0041) >> 8)
	mov	(_DAP_TransferConfigure_PARM_2 + 2),#0x00
	mov	dptr,#(_Ep1Buffer + 0x0001)
	mov	b,#0x00
	lcall	_DAP_TransferConfigure
	mov	r7,dpl
;	DAP.c:1062: break;
;	DAP.c:1064: case ID_DAP_WriteABORT:
	sjmp	00120$
00115$:
;	DAP.c:1065: num = DAP_WriteAbort(req, res);
	mov	_DAP_WriteAbort_PARM_2,#(_Ep1Buffer + 0x0041)
	mov	(_DAP_WriteAbort_PARM_2 + 1),#((_Ep1Buffer + 0x0041) >> 8)
	mov	(_DAP_WriteAbort_PARM_2 + 2),#0x00
	mov	dptr,#(_Ep1Buffer + 0x0001)
	mov	b,#0x00
	lcall	_DAP_WriteAbort
	mov	r7,dpl
;	DAP.c:1066: break;
;	DAP.c:1067: case 0xff:
	sjmp	00120$
00116$:
;	DAP.c:1069: t = calc();
	lcall	_calc
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
;	DAP.c:1070: *res = (t >> 0);
	mov	ar2,r3
	mov	dptr,#(_Ep1Buffer + 0x0041)
	mov	a,r2
	movx	@dptr,a
;	DAP.c:1071: ++res;
;	DAP.c:1072: *res = (t >> 8);
	mov	ar2,r4
	mov	dptr,#(_Ep1Buffer + 0x0042)
	mov	a,r2
	movx	@dptr,a
;	DAP.c:1073: ++res;
;	DAP.c:1074: *res = (t >> 16);
	mov	ar2,r5
	mov	dptr,#(_Ep1Buffer + 0x0043)
	mov	a,r2
	movx	@dptr,a
;	DAP.c:1075: ++res;
;	DAP.c:1076: *res = (t >> 24);
	mov	ar3,r6
	mov	dptr,#(_Ep1Buffer + 0x0044)
	mov	a,r3
	movx	@dptr,a
;	DAP.c:1077: break;
;	DAP.c:1080: default:
	sjmp	00120$
00119$:
;	DAP.c:1081: *(res - 1) = ID_DAP_Invalid;
	mov	dptr,#(_Ep1Buffer + 0x0040)
	mov	a,#0xff
	movx	@dptr,a
;	DAP.c:1082: num = 1;
	mov	r7,#0x01
;	DAP.c:1084: }
00120$:
;	DAP.c:1086: returnVal = num + 1;
	mov	a,r7
	inc	a
	mov	dpl,a
;	DAP.c:1089: return returnVal;
;	DAP.c:1090: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.ascii "1.10"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
