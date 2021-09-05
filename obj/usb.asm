;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module usb
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _EP0_RecData1_PARM_2
	.globl _EP0_RecData0_PARM_2
	.globl _EP0_SendData1_PARM_2
	.globl _EP0_SendData0_PARM_2
	.globl _u8Ver
	.globl _serialDescriptor
	.globl _productDescriptor
	.globl _manufacturerDescriptor
	.globl _stringDescriptor
	.globl _configDescriptor
	.globl _HID_DeviceReportDescriptor
	.globl _deviceDescriptor
	.globl _DAP_Thread
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
	.globl _u8SetupPacket
	.globl _Ep1Buffer
	.globl _u8TransBuff
	.globl _u8ReceiveBuff
	.globl _u8Ep0Buff
	.globl _u8ControlState
	.globl _u8sync
	.globl _u8Config
	.globl _u8Addr
	.globl _u8HidNum
	.globl _u8HidReq
	.globl _u8Total
	.globl _pu8Buff
	.globl _calc
	.globl _EP0_SendData0
	.globl _EP0_SendData1
	.globl _EP0_RecData0
	.globl _EP0_RecData1
	.globl _EP0_Stall
	.globl _EP1_SendData
	.globl _EP1_RecData
	.globl _USB_InitClock
	.globl _USB_Init
	.globl _USB_Task
	.globl _EP1_Out
	.globl _EP1_In
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
_pu8Buff::
	.ds 3
_u8Total::
	.ds 1
_u8HidReq::
	.ds 1
_u8HidNum::
	.ds 1
_u8Addr::
	.ds 1
_u8Config::
	.ds 1
_u8sync::
	.ds 1
_u8ControlState::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_calc_i_65536_47:
	.ds 4
	.area	OSEG    (OVR,DATA)
_EP0_SendData0_PARM_2:
	.ds 1
_EP0_SendData0_buff_65536_89:
	.ds 3
	.area	OSEG    (OVR,DATA)
_EP0_SendData1_PARM_2:
	.ds 1
_EP0_SendData1_buff_65536_97:
	.ds 3
	.area	OSEG    (OVR,DATA)
_EP0_RecData0_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
_EP0_RecData1_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
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
_u8Ep0Buff::
	.ds 64
_u8ReceiveBuff::
	.ds 150
_u8TransBuff::
	.ds 150
_Ep1Buffer::
	.ds 128
_u8SetupPacket::
	.ds 8
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
;	usb.c:224: uint8_t u8HidReq = 0;
	mov	_u8HidReq,#0x00
;	usb.c:225: uint8_t u8HidNum = 0;
	mov	_u8HidNum,#0x00
;	usb.c:227: uint8_t u8Addr = 0;
	mov	_u8Addr,#0x00
;	usb.c:228: uint8_t u8Config = 0;
	mov	_u8Config,#0x00
;	usb.c:230: uint8_t u8sync = 0;
	mov	_u8sync,#0x00
;	usb.c:236: uint8_t u8ControlState = SETUP_STATE;
	mov	_u8ControlState,#0x00
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
;Allocation info for local variables in function 'calc'
;------------------------------------------------------------
;res                       Allocated to registers r4 r5 r6 r7 
;i                         Allocated with name '_calc_i_65536_47'
;------------------------------------------------------------
;	usb.c:179: uint32_t calc(void)
;	-----------------------------------------
;	 function calc
;	-----------------------------------------
_calc:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	usb.c:183: res = 0;
;	usb.c:184: for (i = 0; i < sizeof(deviceDescriptor); ++i) {
	clr	a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	_calc_i_65536_47,a
	mov	(_calc_i_65536_47 + 1),a
	mov	(_calc_i_65536_47 + 2),a
	mov	(_calc_i_65536_47 + 3),a
00108$:
;	usb.c:185: res += deviceDescriptor[i];
	mov	a,_calc_i_65536_47
	add	a,#_deviceDescriptor
	mov	dpl,a
	mov	a,(_calc_i_65536_47 + 1)
	addc	a,#(_deviceDescriptor >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	a,r0
	add	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	mov	a,r2
	addc	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
;	usb.c:184: for (i = 0; i < sizeof(deviceDescriptor); ++i) {
	inc	_calc_i_65536_47
	clr	a
	cjne	a,_calc_i_65536_47,00187$
	inc	(_calc_i_65536_47 + 1)
	cjne	a,(_calc_i_65536_47 + 1),00187$
	inc	(_calc_i_65536_47 + 2)
	cjne	a,(_calc_i_65536_47 + 2),00187$
	inc	(_calc_i_65536_47 + 3)
00187$:
	clr	c
	mov	a,_calc_i_65536_47
	subb	a,#0x12
	mov	a,(_calc_i_65536_47 + 1)
	subb	a,#0x00
	mov	a,(_calc_i_65536_47 + 2)
	subb	a,#0x00
	mov	a,(_calc_i_65536_47 + 3)
	subb	a,#0x00
	jc	00108$
;	usb.c:188: for (i = 0; i < sizeof(HID_DeviceReportDescriptor); ++i) {
	clr	a
	mov	_calc_i_65536_47,a
	mov	(_calc_i_65536_47 + 1),a
	mov	(_calc_i_65536_47 + 2),a
	mov	(_calc_i_65536_47 + 3),a
00110$:
;	usb.c:189: res += HID_DeviceReportDescriptor[i];
	mov	a,_calc_i_65536_47
	add	a,#_HID_DeviceReportDescriptor
	mov	dpl,a
	mov	a,(_calc_i_65536_47 + 1)
	addc	a,#(_HID_DeviceReportDescriptor >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	a,r0
	add	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	mov	a,r2
	addc	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
;	usb.c:188: for (i = 0; i < sizeof(HID_DeviceReportDescriptor); ++i) {
	inc	_calc_i_65536_47
	clr	a
	cjne	a,_calc_i_65536_47,00189$
	inc	(_calc_i_65536_47 + 1)
	cjne	a,(_calc_i_65536_47 + 1),00189$
	inc	(_calc_i_65536_47 + 2)
	cjne	a,(_calc_i_65536_47 + 2),00189$
	inc	(_calc_i_65536_47 + 3)
00189$:
	clr	c
	mov	a,_calc_i_65536_47
	subb	a,#0x1c
	mov	a,(_calc_i_65536_47 + 1)
	subb	a,#0x00
	mov	a,(_calc_i_65536_47 + 2)
	subb	a,#0x00
	mov	a,(_calc_i_65536_47 + 3)
	subb	a,#0x00
	jc	00110$
;	usb.c:192: for (i = 0; i < sizeof(configDescriptor); ++i) {
	clr	a
	mov	_calc_i_65536_47,a
	mov	(_calc_i_65536_47 + 1),a
	mov	(_calc_i_65536_47 + 2),a
	mov	(_calc_i_65536_47 + 3),a
00112$:
;	usb.c:193: res += configDescriptor[i];
	mov	a,_calc_i_65536_47
	add	a,#_configDescriptor
	mov	dpl,a
	mov	a,(_calc_i_65536_47 + 1)
	addc	a,#(_configDescriptor >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	a,r0
	add	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	mov	a,r2
	addc	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
;	usb.c:192: for (i = 0; i < sizeof(configDescriptor); ++i) {
	inc	_calc_i_65536_47
	clr	a
	cjne	a,_calc_i_65536_47,00191$
	inc	(_calc_i_65536_47 + 1)
	cjne	a,(_calc_i_65536_47 + 1),00191$
	inc	(_calc_i_65536_47 + 2)
	cjne	a,(_calc_i_65536_47 + 2),00191$
	inc	(_calc_i_65536_47 + 3)
00191$:
	clr	c
	mov	a,_calc_i_65536_47
	subb	a,#0x29
	mov	a,(_calc_i_65536_47 + 1)
	subb	a,#0x00
	mov	a,(_calc_i_65536_47 + 2)
	subb	a,#0x00
	mov	a,(_calc_i_65536_47 + 3)
	subb	a,#0x00
	jc	00112$
;	usb.c:196: for (i = 0; i < sizeof(stringDescriptor); ++i) {
	clr	a
	mov	_calc_i_65536_47,a
	mov	(_calc_i_65536_47 + 1),a
	mov	(_calc_i_65536_47 + 2),a
	mov	(_calc_i_65536_47 + 3),a
00114$:
;	usb.c:197: res += stringDescriptor[i];
	mov	a,_calc_i_65536_47
	add	a,#_stringDescriptor
	mov	dpl,a
	mov	a,(_calc_i_65536_47 + 1)
	addc	a,#(_stringDescriptor >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	a,r0
	add	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	mov	a,r2
	addc	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
;	usb.c:196: for (i = 0; i < sizeof(stringDescriptor); ++i) {
	inc	_calc_i_65536_47
	clr	a
	cjne	a,_calc_i_65536_47,00193$
	inc	(_calc_i_65536_47 + 1)
	cjne	a,(_calc_i_65536_47 + 1),00193$
	inc	(_calc_i_65536_47 + 2)
	cjne	a,(_calc_i_65536_47 + 2),00193$
	inc	(_calc_i_65536_47 + 3)
00193$:
	clr	c
	mov	a,_calc_i_65536_47
	subb	a,#0x04
	mov	a,(_calc_i_65536_47 + 1)
	subb	a,#0x00
	mov	a,(_calc_i_65536_47 + 2)
	subb	a,#0x00
	mov	a,(_calc_i_65536_47 + 3)
	subb	a,#0x00
	jc	00114$
;	usb.c:200: for (i = 0; i < sizeof(manufacturerDescriptor); ++i) {
	clr	a
	mov	_calc_i_65536_47,a
	mov	(_calc_i_65536_47 + 1),a
	mov	(_calc_i_65536_47 + 2),a
	mov	(_calc_i_65536_47 + 3),a
00116$:
;	usb.c:201: res += manufacturerDescriptor[i];
	mov	a,_calc_i_65536_47
	add	a,#_manufacturerDescriptor
	mov	dpl,a
	mov	a,(_calc_i_65536_47 + 1)
	addc	a,#(_manufacturerDescriptor >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	a,r0
	add	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	mov	a,r2
	addc	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
;	usb.c:200: for (i = 0; i < sizeof(manufacturerDescriptor); ++i) {
	inc	_calc_i_65536_47
	clr	a
	cjne	a,_calc_i_65536_47,00195$
	inc	(_calc_i_65536_47 + 1)
	cjne	a,(_calc_i_65536_47 + 1),00195$
	inc	(_calc_i_65536_47 + 2)
	cjne	a,(_calc_i_65536_47 + 2),00195$
	inc	(_calc_i_65536_47 + 3)
00195$:
	clr	c
	mov	a,_calc_i_65536_47
	subb	a,#0x26
	mov	a,(_calc_i_65536_47 + 1)
	subb	a,#0x00
	mov	a,(_calc_i_65536_47 + 2)
	subb	a,#0x00
	mov	a,(_calc_i_65536_47 + 3)
	subb	a,#0x00
	jc	00116$
;	usb.c:204: for (i = 0; i < sizeof(productDescriptor); ++i) {
	clr	a
	mov	_calc_i_65536_47,a
	mov	(_calc_i_65536_47 + 1),a
	mov	(_calc_i_65536_47 + 2),a
	mov	(_calc_i_65536_47 + 3),a
00118$:
;	usb.c:205: res += productDescriptor[i];
	mov	a,_calc_i_65536_47
	add	a,#_productDescriptor
	mov	dpl,a
	mov	a,(_calc_i_65536_47 + 1)
	addc	a,#(_productDescriptor >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	a,r0
	add	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	mov	a,r2
	addc	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
;	usb.c:204: for (i = 0; i < sizeof(productDescriptor); ++i) {
	inc	_calc_i_65536_47
	clr	a
	cjne	a,_calc_i_65536_47,00197$
	inc	(_calc_i_65536_47 + 1)
	cjne	a,(_calc_i_65536_47 + 1),00197$
	inc	(_calc_i_65536_47 + 2)
	cjne	a,(_calc_i_65536_47 + 2),00197$
	inc	(_calc_i_65536_47 + 3)
00197$:
	clr	c
	mov	a,_calc_i_65536_47
	subb	a,#0x14
	mov	a,(_calc_i_65536_47 + 1)
	subb	a,#0x00
	mov	a,(_calc_i_65536_47 + 2)
	subb	a,#0x00
	mov	a,(_calc_i_65536_47 + 3)
	subb	a,#0x00
	jc	00118$
;	usb.c:208: for (i = 0; i < sizeof(serialDescriptor); ++i) {
	clr	a
	mov	_calc_i_65536_47,a
	mov	(_calc_i_65536_47 + 1),a
	mov	(_calc_i_65536_47 + 2),a
	mov	(_calc_i_65536_47 + 3),a
00120$:
;	usb.c:209: res += serialDescriptor[i];
	mov	a,_calc_i_65536_47
	add	a,#_serialDescriptor
	mov	dpl,a
	mov	a,(_calc_i_65536_47 + 1)
	addc	a,#(_serialDescriptor >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	a,r0
	add	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	mov	a,r2
	addc	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
;	usb.c:208: for (i = 0; i < sizeof(serialDescriptor); ++i) {
	inc	_calc_i_65536_47
	clr	a
	cjne	a,_calc_i_65536_47,00199$
	inc	(_calc_i_65536_47 + 1)
	cjne	a,(_calc_i_65536_47 + 1),00199$
	inc	(_calc_i_65536_47 + 2)
	cjne	a,(_calc_i_65536_47 + 2),00199$
	inc	(_calc_i_65536_47 + 3)
00199$:
	clr	c
	mov	a,_calc_i_65536_47
	subb	a,#0x1a
	mov	a,(_calc_i_65536_47 + 1)
	subb	a,#0x00
	mov	a,(_calc_i_65536_47 + 2)
	subb	a,#0x00
	mov	a,(_calc_i_65536_47 + 3)
	subb	a,#0x00
	jc	00120$
;	usb.c:211: return res;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
;	usb.c:212: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0_SendData0'
;------------------------------------------------------------
;len                       Allocated with name '_EP0_SendData0_PARM_2'
;buff                      Allocated with name '_EP0_SendData0_buff_65536_89'
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	usb.c:272: void EP0_SendData0(uint8_t *buff, uint8_t len)
;	-----------------------------------------
;	 function EP0_SendData0
;	-----------------------------------------
_EP0_SendData0:
	mov	_EP0_SendData0_buff_65536_89,dpl
	mov	(_EP0_SendData0_buff_65536_89 + 1),dph
	mov	(_EP0_SendData0_buff_65536_89 + 2),b
;	usb.c:275: u8Total = len;
	mov	_u8Total,_EP0_SendData0_PARM_2
;	usb.c:276: pu8Buff = buff;
	mov	_pu8Buff,_EP0_SendData0_buff_65536_89
	mov	(_pu8Buff + 1),(_EP0_SendData0_buff_65536_89 + 1)
	mov	(_pu8Buff + 2),(_EP0_SendData0_buff_65536_89 + 2)
;	usb.c:278: if (len <= EP0_SZ) {
	mov	a,_EP0_SendData0_PARM_2
	add	a,#0xff - 0x40
	jc	00116$
;	usb.c:279: for (i = 0; i < len; ++i) {
	mov	r3,#0x00
00107$:
	clr	c
	mov	a,r3
	subb	a,_EP0_SendData0_PARM_2
	jnc	00101$
;	usb.c:280: u8Ep0Buff[i] = buff[i];
	mov	a,r3
	add	a,#_u8Ep0Buff
	mov	r1,a
	clr	a
	addc	a,#(_u8Ep0Buff >> 8)
	mov	r2,a
	mov	a,r3
	add	a,_EP0_SendData0_buff_65536_89
	mov	r0,a
	clr	a
	addc	a,(_EP0_SendData0_buff_65536_89 + 1)
	mov	r4,a
	mov	r7,(_EP0_SendData0_buff_65536_89 + 2)
	mov	dpl,r0
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	mov	dpl,r1
	mov	dph,r2
	movx	@dptr,a
;	usb.c:279: for (i = 0; i < len; ++i) {
	inc	r3
	sjmp	00107$
00101$:
;	usb.c:282: UEP0_T_LEN = len;
	mov	_UEP0_T_LEN,_EP0_SendData0_PARM_2
;	usb.c:284: for (i = 0; i < EP0_SZ; ++i) {
	sjmp	00105$
00116$:
	mov	r7,#0x00
00109$:
;	usb.c:285: u8Ep0Buff[i] = buff[i];
	mov	a,r7
	add	a,#_u8Ep0Buff
	mov	r5,a
	clr	a
	addc	a,#(_u8Ep0Buff >> 8)
	mov	r6,a
	mov	a,r7
	add	a,_EP0_SendData0_buff_65536_89
	mov	r2,a
	clr	a
	addc	a,(_EP0_SendData0_buff_65536_89 + 1)
	mov	r3,a
	mov	r4,(_EP0_SendData0_buff_65536_89 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r5
	mov	dph,r6
	movx	@dptr,a
;	usb.c:284: for (i = 0; i < EP0_SZ; ++i) {
	inc	r7
	cjne	r7,#0x40,00137$
00137$:
	jc	00109$
;	usb.c:287: UEP0_T_LEN = EP0_SZ;
	mov	_UEP0_T_LEN,#0x40
00105$:
;	usb.c:289: u8sync = 0;
	mov	_u8sync,#0x00
;	usb.c:290: UEP0_CTRL = (UEP_T_RES_ACK | UEP_R_RES_ACK);
	mov	_UEP0_CTRL,#0x00
;	usb.c:291: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0_SendData1'
;------------------------------------------------------------
;len                       Allocated with name '_EP0_SendData1_PARM_2'
;buff                      Allocated with name '_EP0_SendData1_buff_65536_97'
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	usb.c:292: void EP0_SendData1(uint8_t *buff, uint8_t len)
;	-----------------------------------------
;	 function EP0_SendData1
;	-----------------------------------------
_EP0_SendData1:
	mov	_EP0_SendData1_buff_65536_97,dpl
	mov	(_EP0_SendData1_buff_65536_97 + 1),dph
	mov	(_EP0_SendData1_buff_65536_97 + 2),b
;	usb.c:295: u8Total = len;
	mov	_u8Total,_EP0_SendData1_PARM_2
;	usb.c:296: pu8Buff = buff;
	mov	_pu8Buff,_EP0_SendData1_buff_65536_97
	mov	(_pu8Buff + 1),(_EP0_SendData1_buff_65536_97 + 1)
	mov	(_pu8Buff + 2),(_EP0_SendData1_buff_65536_97 + 2)
;	usb.c:298: if (len <= EP0_SZ) {
	mov	a,_EP0_SendData1_PARM_2
	add	a,#0xff - 0x40
	jc	00116$
;	usb.c:299: for (i = 0; i < len; ++i) {
	mov	r3,#0x00
00107$:
	clr	c
	mov	a,r3
	subb	a,_EP0_SendData1_PARM_2
	jnc	00101$
;	usb.c:300: u8Ep0Buff[i] = buff[i];
	mov	a,r3
	add	a,#_u8Ep0Buff
	mov	r1,a
	clr	a
	addc	a,#(_u8Ep0Buff >> 8)
	mov	r2,a
	mov	a,r3
	add	a,_EP0_SendData1_buff_65536_97
	mov	r0,a
	clr	a
	addc	a,(_EP0_SendData1_buff_65536_97 + 1)
	mov	r4,a
	mov	r7,(_EP0_SendData1_buff_65536_97 + 2)
	mov	dpl,r0
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	mov	dpl,r1
	mov	dph,r2
	movx	@dptr,a
;	usb.c:299: for (i = 0; i < len; ++i) {
	inc	r3
	sjmp	00107$
00101$:
;	usb.c:302: UEP0_T_LEN = len;
	mov	_UEP0_T_LEN,_EP0_SendData1_PARM_2
;	usb.c:304: for (i = 0; i < EP0_SZ; ++i) {
	sjmp	00105$
00116$:
	mov	r7,#0x00
00109$:
;	usb.c:305: u8Ep0Buff[i] = buff[i];
	mov	a,r7
	add	a,#_u8Ep0Buff
	mov	r5,a
	clr	a
	addc	a,#(_u8Ep0Buff >> 8)
	mov	r6,a
	mov	a,r7
	add	a,_EP0_SendData1_buff_65536_97
	mov	r2,a
	clr	a
	addc	a,(_EP0_SendData1_buff_65536_97 + 1)
	mov	r3,a
	mov	r4,(_EP0_SendData1_buff_65536_97 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r5
	mov	dph,r6
	movx	@dptr,a
;	usb.c:304: for (i = 0; i < EP0_SZ; ++i) {
	inc	r7
	cjne	r7,#0x40,00137$
00137$:
	jc	00109$
;	usb.c:307: UEP0_T_LEN = EP0_SZ;
	mov	_UEP0_T_LEN,#0x40
00105$:
;	usb.c:309: u8sync = 1;
	mov	_u8sync,#0x01
;	usb.c:310: UEP0_CTRL = (0x40 | UEP_T_RES_ACK | UEP_R_RES_ACK);
	mov	_UEP0_CTRL,#0x40
;	usb.c:311: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0_RecData0'
;------------------------------------------------------------
;len                       Allocated with name '_EP0_RecData0_PARM_2'
;buff                      Allocated to registers 
;------------------------------------------------------------
;	usb.c:312: void EP0_RecData0(uint8_t *buff, uint8_t len)
;	-----------------------------------------
;	 function EP0_RecData0
;	-----------------------------------------
_EP0_RecData0:
	mov	_pu8Buff,dpl
	mov	(_pu8Buff + 1),dph
	mov	(_pu8Buff + 2),b
;	usb.c:314: u8Total = len;
	mov	_u8Total,_EP0_RecData0_PARM_2
;	usb.c:317: UEP0_CTRL = (UEP_T_RES_NAK | UEP_R_RES_ACK);
	mov	_UEP0_CTRL,#0x02
;	usb.c:318: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0_RecData1'
;------------------------------------------------------------
;len                       Allocated with name '_EP0_RecData1_PARM_2'
;buff                      Allocated to registers 
;------------------------------------------------------------
;	usb.c:319: void EP0_RecData1(uint8_t *buff, uint8_t len)
;	-----------------------------------------
;	 function EP0_RecData1
;	-----------------------------------------
_EP0_RecData1:
	mov	_pu8Buff,dpl
	mov	(_pu8Buff + 1),dph
	mov	(_pu8Buff + 2),b
;	usb.c:321: u8Total = len;
	mov	_u8Total,_EP0_RecData1_PARM_2
;	usb.c:324: UEP0_CTRL = (0x80 | UEP_T_RES_NAK | UEP_R_RES_ACK);
	mov	_UEP0_CTRL,#0x82
;	usb.c:325: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0_Stall'
;------------------------------------------------------------
;	usb.c:327: void EP0_Stall()
;	-----------------------------------------
;	 function EP0_Stall
;	-----------------------------------------
_EP0_Stall:
;	usb.c:329: UEP0_T_LEN = 0x00;
	mov	_UEP0_T_LEN,#0x00
;	usb.c:330: UEP0_CTRL = 0x03;
	mov	_UEP0_CTRL,#0x03
;	usb.c:331: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP1_SendData'
;------------------------------------------------------------
;t                         Allocated to registers 
;------------------------------------------------------------
;	usb.c:333: void EP1_SendData(void)
;	-----------------------------------------
;	 function EP1_SendData
;	-----------------------------------------
_EP1_SendData:
;	usb.c:336: UEP1_T_LEN = 0x40;
	mov	_UEP1_T_LEN,#0x40
;	usb.c:338: t &= ~(0x03);
	anl	_UEP1_CTRL,#0xfc
;	usb.c:339: UEP1_CTRL = t;
;	usb.c:340: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP1_RecData'
;------------------------------------------------------------
;t                         Allocated to registers 
;------------------------------------------------------------
;	usb.c:342: void EP1_RecData(void)
;	-----------------------------------------
;	 function EP1_RecData
;	-----------------------------------------
_EP1_RecData:
;	usb.c:345: UEP1_T_LEN = 0x40;
	mov	_UEP1_T_LEN,#0x40
;	usb.c:347: t &= ~(0x0C);
	anl	_UEP1_CTRL,#0xf3
;	usb.c:348: UEP1_CTRL = t;
;	usb.c:349: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_InitClock'
;------------------------------------------------------------
;	usb.c:354: void USB_InitClock(void) {
;	-----------------------------------------
;	 function USB_InitClock
;	-----------------------------------------
_USB_InitClock:
;	usb.c:356: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_Init'
;------------------------------------------------------------
;	usb.c:358: void USB_Init(void) {
;	-----------------------------------------
;	 function USB_Init
;	-----------------------------------------
_USB_Init:
;	usb.c:363: USB_CTRL = 0x29;
	mov	_USB_CTRL,#0x29
;	usb.c:364: UDEV_CTRL |= bUD_PORT_EN;
	mov	r6,_UDEV_CTRL
	orl	ar6,#0x01
	mov	_UDEV_CTRL,r6
;	usb.c:368: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_Task'
;------------------------------------------------------------
;	usb.c:370: void USB_Task(void) {
;	-----------------------------------------
;	 function USB_Task
;	-----------------------------------------
_USB_Task:
;	usb.c:373: if (UIF_SUSPEND) {
;	usb.c:374: UIF_SUSPEND = 0;
;	assignBit
	jbc	_UIF_SUSPEND,00163$
	sjmp	00123$
00163$:
	ret
00123$:
;	usb.c:375: } else if (UIF_BUS_RST) {
	jnb	_UIF_BUS_RST,00120$
;	usb.c:377: USB_DEV_AD = 0x00;
	mov	_USB_DEV_AD,#0x00
;	usb.c:378: UEP0_T_LEN = EP0_SZ;
	mov	_UEP0_T_LEN,#0x40
;	usb.c:379: UEP0_CTRL = UEP_R_RES_ACK | UEP_T_RES_NAK;
	mov	_UEP0_CTRL,#0x02
;	usb.c:380: UIF_TRANSFER = 0;
;	assignBit
	clr	_UIF_TRANSFER
;	usb.c:381: UIF_BUS_RST = 0;
;	assignBit
	clr	_UIF_BUS_RST
;	usb.c:382: UEP0_DMA = (uint16_t)u8Ep0Buff;
	mov	((_UEP0_DMA >> 0) & 0xFF),#_u8Ep0Buff
	mov	((_UEP0_DMA >> 8) & 0xFF),#(_u8Ep0Buff >> 8)
;	usb.c:383: u8Addr = 0;
	mov	_u8Addr,#0x00
;	usb.c:384: u8Config = 0;
	mov	_u8Config,#0x00
	ret
00120$:
;	usb.c:385: } else if (UIF_TRANSFER) {
	jb	_UIF_TRANSFER,00165$
	ret
00165$:
;	usb.c:393: UEP0_CTRL = UEP_R_RES_NAK | UEP_T_RES_NAK;
	mov	_UEP0_CTRL,#0x0a
;	usb.c:395: if((USB_INT_ST & 0x0F) == 0x00) {
	mov	a,_USB_INT_ST
	anl	a,#0x0f
	jz	00167$
	sjmp	00115$
00167$:
;	usb.c:397: if((USB_INT_ST & 0x30) == 0x20) {
	mov	r6,_USB_INT_ST
	anl	ar6,#0x30
	mov	r7,#0x00
	cjne	r6,#0x20,00107$
	cjne	r7,#0x00,00107$
;	usb.c:399: EP0_In();
	lcall	_EP0_In
	sjmp	00116$
00107$:
;	usb.c:402: if((USB_INT_ST & 0x30) == 0x30) {
	mov	r6,_USB_INT_ST
	anl	ar6,#0x30
	mov	r7,#0x00
	cjne	r6,#0x30,00104$
	cjne	r7,#0x00,00104$
;	usb.c:404: EP0_Setup();
	lcall	_EP0_Setup
	sjmp	00116$
00104$:
;	usb.c:405: } else if ((USB_INT_ST & 0x30) == 0x00) {
	mov	a,_USB_INT_ST
	anl	a,#0x30
	jz	00173$
	sjmp	00116$
00173$:
;	usb.c:407: EP0_Out();
	lcall	_EP0_Out
	sjmp	00116$
00115$:
;	usb.c:413: if((USB_INT_ST & 0x0F) == 0x01) {
	mov	r6,_USB_INT_ST
	anl	ar6,#0x0f
	mov	r7,#0x00
	cjne	r6,#0x01,00116$
	cjne	r7,#0x00,00116$
;	usb.c:415: if((USB_INT_ST & 0x30) == 0x20) {
	mov	r6,_USB_INT_ST
	anl	ar6,#0x30
	mov	r7,#0x00
	cjne	r6,#0x20,00110$
	cjne	r7,#0x00,00110$
;	usb.c:416: EP1_In();
	lcall	_EP1_In
	sjmp	00116$
00110$:
;	usb.c:418: EP1_Out();
	lcall	_EP1_Out
00116$:
;	usb.c:422: UIF_TRANSFER = 0;
;	assignBit
	clr	_UIF_TRANSFER
;	usb.c:425: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0_Setup'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;u8RequestType             Allocated to registers r7 
;------------------------------------------------------------
;	usb.c:427: static void EP0_Setup(void) {
;	-----------------------------------------
;	 function EP0_Setup
;	-----------------------------------------
_EP0_Setup:
;	usb.c:432: for (i = 0; i < 8; ++i) {
	mov	r7,#0x00
00107$:
;	usb.c:433: u8SetupPacket[i] = u8Ep0Buff[i];
	mov	a,r7
	add	a,#_u8SetupPacket
	mov	r5,a
	clr	a
	addc	a,#(_u8SetupPacket >> 8)
	mov	r6,a
	mov	a,r7
	add	a,#_u8Ep0Buff
	mov	dpl,a
	clr	a
	addc	a,#(_u8Ep0Buff >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	movx	@dptr,a
;	usb.c:432: for (i = 0; i < 8; ++i) {
	inc	r7
	cjne	r7,#0x08,00132$
00132$:
	jc	00107$
;	usb.c:439: u8RequestType = (u8Ep0Buff[0] & 0x60) >> 5;
	mov	dptr,#_u8Ep0Buff
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x60
	clr	a
	swap	a
	rr	a
	xch	a,r7
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,r7
	xch	a,r7
	anl	a,#0x07
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	jnb	acc.2,00134$
	orl	a,#0xf8
00134$:
	mov	r6,a
;	usb.c:440: switch(u8RequestType) {
	cjne	r7,#0x00,00135$
	sjmp	00102$
00135$:
	cjne	r7,#0x01,00136$
	sjmp	00103$
00136$:
;	usb.c:441: case 0x00:
	cjne	r7,#0x02,00105$
	sjmp	00104$
00102$:
;	usb.c:443: StandardRequest();
;	usb.c:444: break;
;	usb.c:445: case 0x01:
	ljmp	_StandardRequest
00103$:
;	usb.c:447: ClassRequest();
;	usb.c:448: break;
;	usb.c:449: case 0x02:
	ljmp	_ClassRequest
00104$:
;	usb.c:451: VendorRequest();
;	usb.c:452: break;
;	usb.c:453: default:
	ljmp	_VendorRequest
00105$:
;	usb.c:456: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
	mov	_EP0_RecData0_PARM_2,#0x40
	mov	dptr,#_u8ReceiveBuff
	mov	b,#0x00
	lcall	_EP0_RecData0
;	usb.c:457: EP0_Stall();
;	usb.c:459: }
;	usb.c:460: }
	ljmp	_EP0_Stall
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0_Out'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	usb.c:462: static void EP0_Out(void) {
;	-----------------------------------------
;	 function EP0_Out
;	-----------------------------------------
_EP0_Out:
;	usb.c:464: if (u8ControlState == DATA_STATE) {
	mov	a,#0x01
	cjne	a,_u8ControlState,00161$
	sjmp	00162$
00161$:
	ljmp	00114$
00162$:
;	usb.c:465: if (u8Total <= EP0_SZ) {
	mov	a,_u8Total
	add	a,#0xff - 0x40
	jc	00128$
;	usb.c:467: for (i = 0; i < u8Total; ++i) {
	mov	r7,#0x00
00117$:
	clr	c
	mov	a,r7
	subb	a,_u8Total
	jnc	00101$
;	usb.c:468: pu8Buff[i] = u8Ep0Buff[i];
	mov	a,r7
	add	a,_pu8Buff
	mov	r4,a
	clr	a
	addc	a,(_pu8Buff + 1)
	mov	r5,a
	mov	r6,(_pu8Buff + 2)
	mov	a,r7
	add	a,#_u8Ep0Buff
	mov	dpl,a
	clr	a
	addc	a,#(_u8Ep0Buff >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrput
;	usb.c:467: for (i = 0; i < u8Total; ++i) {
	inc	r7
	sjmp	00117$
00101$:
;	usb.c:476: if (u8HidReq) {
	mov	a,_u8HidReq
	jz	00103$
;	usb.c:480: u8HidReq = 0;
	mov	_u8HidReq,#0x00
00103$:
;	usb.c:482: u8ControlState = STATUS_STATE;
	mov	_u8ControlState,#0x02
;	usb.c:483: EP0_SendData1(u8TransBuff, 0);
	mov	_EP0_SendData1_PARM_2,#0x00
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
	ljmp	_EP0_SendData1
;	usb.c:485: for (i = 0; i < EP0_SZ; ++i) {
00128$:
	mov	r7,#0x00
00119$:
;	usb.c:486: pu8Buff[i] = u8Ep0Buff[i];
	mov	a,r7
	add	a,_pu8Buff
	mov	r4,a
	clr	a
	addc	a,(_pu8Buff + 1)
	mov	r5,a
	mov	r6,(_pu8Buff + 2)
	mov	a,r7
	add	a,#_u8Ep0Buff
	mov	dpl,a
	clr	a
	addc	a,#(_u8Ep0Buff >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrput
;	usb.c:485: for (i = 0; i < EP0_SZ; ++i) {
	inc	r7
	cjne	r7,#0x40,00166$
00166$:
	jc	00119$
;	usb.c:491: if (UEP0_CTRL & 0x80) {
	mov	a,_UEP0_CTRL
	jnb	acc.7,00106$
;	usb.c:492: EP0_RecData0(pu8Buff + EP0_SZ, u8Total - EP0_SZ);
	mov	a,#0x40
	add	a,_pu8Buff
	mov	r5,a
	clr	a
	addc	a,(_pu8Buff + 1)
	mov	r6,a
	mov	r7,(_pu8Buff + 2)
	mov	a,_u8Total
	add	a,#0xc0
	mov	_EP0_RecData0_PARM_2,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_EP0_RecData0
00106$:
;	usb.c:494: EP0_RecData1(pu8Buff + EP0_SZ, u8Total - EP0_SZ);
	mov	a,#0x40
	add	a,_pu8Buff
	mov	r5,a
	clr	a
	addc	a,(_pu8Buff + 1)
	mov	r6,a
	mov	r7,(_pu8Buff + 2)
	mov	a,_u8Total
	add	a,#0xc0
	mov	_EP0_RecData1_PARM_2,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_EP0_RecData1
00114$:
;	usb.c:497: } else if (u8ControlState == STATUS_STATE) {
	mov	a,#0x02
	cjne	a,_u8ControlState,00121$
;	usb.c:498: u8ControlState = SETUP_STATE;
	mov	_u8ControlState,#0x00
;	usb.c:499: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
	mov	_EP0_RecData0_PARM_2,#0x40
	mov	dptr,#_u8ReceiveBuff
	mov	b,#0x00
;	usb.c:502: }
	ljmp	_EP0_RecData0
00121$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0_In'
;------------------------------------------------------------
;	usb.c:503: static void EP0_In(void) {
;	-----------------------------------------
;	 function EP0_In
;	-----------------------------------------
_EP0_In:
;	usb.c:505: if (u8ControlState == DATA_STATE) {
	mov	a,#0x01
	cjne	a,_u8ControlState,00143$
	sjmp	00144$
00143$:
	ljmp	00115$
00144$:
;	usb.c:506: if (u8Total <= EP0_SZ) {
	mov	a,_u8Total
	add	a,#0xff - 0x40
	jc	00108$
;	usb.c:507: u8Total = 0;
	mov	_u8Total,#0x00
;	usb.c:508: u8ControlState = STATUS_STATE;
	mov	_u8ControlState,#0x02
;	usb.c:509: EP0_RecData1(u8ReceiveBuff, 0);
	mov	_EP0_RecData1_PARM_2,#0x00
	mov	dptr,#_u8ReceiveBuff
	mov	b,#0x00
	lcall	_EP0_RecData1
;	usb.c:510: if (u8sync) {
	mov	a,_u8sync
	jz	00102$
;	usb.c:511: EP0_SendData0(pu8Buff, 0);
	mov	_EP0_SendData0_PARM_2,#0x00
	mov	dpl,_pu8Buff
	mov	dph,(_pu8Buff + 1)
	mov	b,(_pu8Buff + 2)
	ljmp	_EP0_SendData0
00102$:
;	usb.c:513: EP0_SendData1(pu8Buff, 0);
	mov	_EP0_SendData1_PARM_2,#0x00
	mov	dpl,_pu8Buff
	mov	dph,(_pu8Buff + 1)
	mov	b,(_pu8Buff + 2)
	ljmp	_EP0_SendData1
00108$:
;	usb.c:517: if (u8sync) {
	mov	a,_u8sync
	jz	00105$
;	usb.c:518: EP0_SendData0(pu8Buff + EP0_SZ, u8Total - EP0_SZ);
	mov	a,#0x40
	add	a,_pu8Buff
	mov	r5,a
	clr	a
	addc	a,(_pu8Buff + 1)
	mov	r6,a
	mov	r7,(_pu8Buff + 2)
	mov	a,_u8Total
	add	a,#0xc0
	mov	_EP0_SendData0_PARM_2,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_EP0_SendData0
00105$:
;	usb.c:520: EP0_SendData1(pu8Buff + EP0_SZ, u8Total - EP0_SZ);
	mov	a,#0x40
	add	a,_pu8Buff
	mov	r5,a
	clr	a
	addc	a,(_pu8Buff + 1)
	mov	r6,a
	mov	r7,(_pu8Buff + 2)
	mov	a,_u8Total
	add	a,#0xc0
	mov	_EP0_SendData1_PARM_2,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_EP0_SendData1
00115$:
;	usb.c:523: } else if (u8ControlState == STATUS_STATE) {
	mov	a,#0x02
	cjne	a,_u8ControlState,00117$
;	usb.c:524: if (u8Addr) {
	mov	a,_u8Addr
	jz	00111$
;	usb.c:525: USB_DEV_AD = u8Addr;
	mov	_USB_DEV_AD,_u8Addr
;	usb.c:526: u8Addr = 0;
	mov	_u8Addr,#0x00
00111$:
;	usb.c:529: u8ControlState = SETUP_STATE;
	mov	_u8ControlState,#0x00
;	usb.c:530: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
	mov	_EP0_RecData0_PARM_2,#0x40
	mov	dptr,#_u8ReceiveBuff
	mov	b,#0x00
;	usb.c:533: }
	ljmp	_EP0_RecData0
00117$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'StandardRequest'
;------------------------------------------------------------
;	usb.c:535: static void StandardRequest(void) {
;	-----------------------------------------
;	 function StandardRequest
;	-----------------------------------------
_StandardRequest:
;	usb.c:537: switch(u8SetupPacket[1]) {
	mov	dptr,#(_u8SetupPacket + 0x0001)
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x0c
	jnc	00119$
	ret
00119$:
	mov	a,r7
	add	a,#(00120$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00121$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00120$:
	.db	00101$
	.db	00102$
	.db	00113$
	.db	00103$
	.db	00113$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
	.db	00108$
	.db	00109$
	.db	00110$
	.db	00111$
00121$:
	.db	00101$>>8
	.db	00102$>>8
	.db	00113$>>8
	.db	00103$>>8
	.db	00113$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
	.db	00109$>>8
	.db	00110$>>8
	.db	00111$>>8
;	usb.c:538: case 0x00:
00101$:
;	usb.c:540: GetStatus();
;	usb.c:541: break;
;	usb.c:542: case 0x01:
	ljmp	_GetStatus
00102$:
;	usb.c:544: ClearFeature();
;	usb.c:545: break;
;	usb.c:546: case 0x03:
	ljmp	_ClearFeature
00103$:
;	usb.c:548: SetFeature();
;	usb.c:549: break;
;	usb.c:550: case 0x05:
	ljmp	_SetFeature
00104$:
;	usb.c:552: SetAddress();
;	usb.c:553: break;
;	usb.c:554: case 0x06:
	ljmp	_SetAddress
00105$:
;	usb.c:556: GetDescriptor();
;	usb.c:557: break;
;	usb.c:558: case 0x07:
	ljmp	_GetDescriptor
00106$:
;	usb.c:560: SetDescriptor();
;	usb.c:561: break;
;	usb.c:562: case 0x08:
	ljmp	_SetDescriptor
00107$:
;	usb.c:564: GetConfiguration();
;	usb.c:565: break;
;	usb.c:566: case 0x09:
	ljmp	_GetConfiguration
00108$:
;	usb.c:568: SetConfiguration();
;	usb.c:569: break;
;	usb.c:570: case 0x0A:
	ljmp	_SetConfiguration
00109$:
;	usb.c:572: GetInterface();
;	usb.c:573: break;
;	usb.c:574: case 0x0B:
	ljmp	_GetInterface
00110$:
;	usb.c:576: SetInterface();
;	usb.c:577: break;
;	usb.c:578: case 0x0C:
	ljmp	_SetInterface
00111$:
;	usb.c:580: SynchFrame();
;	usb.c:582: }
;	usb.c:583: }
	ljmp	_SynchFrame
00113$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ClassRequest'
;------------------------------------------------------------
;	usb.c:584: static void ClassRequest(void) {
;	-----------------------------------------
;	 function ClassRequest
;	-----------------------------------------
_ClassRequest:
;	usb.c:585: switch(u8SetupPacket[1]) {
	mov	dptr,#(_u8SetupPacket + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00119$
	sjmp	00103$
00119$:
	cjne	r7,#0x09,00120$
	sjmp	00102$
00120$:
	cjne	r7,#0x0a,00105$
;	usb.c:587: HID_SetIdle();
;	usb.c:588: break;
;	usb.c:589: case 0x09:
	ljmp	_HID_SetIdle
00102$:
;	usb.c:590: HID_SetReport();
;	usb.c:591: break;
;	usb.c:592: case 0x01:
	ljmp	_HID_SetReport
00103$:
;	usb.c:593: HID_GetReport();
;	usb.c:595: }
;	usb.c:596: }
	ljmp	_HID_GetReport
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'VendorRequest'
;------------------------------------------------------------
;	usb.c:598: static void VendorRequest(void) {
;	-----------------------------------------
;	 function VendorRequest
;	-----------------------------------------
_VendorRequest:
;	usb.c:600: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GetStatus'
;------------------------------------------------------------
;u8R                       Allocated to registers r7 
;------------------------------------------------------------
;	usb.c:602: static void GetStatus(void) {
;	-----------------------------------------
;	 function GetStatus
;	-----------------------------------------
_GetStatus:
;	usb.c:609: u8R=u8SetupPacket[0] & 0x1F;
	mov	dptr,#_u8SetupPacket
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x1f
;	usb.c:611: switch(u8R) {
	cjne	r7,#0x00,00120$
	sjmp	00101$
00120$:
	cjne	r7,#0x01,00121$
	sjmp	00102$
00121$:
;	usb.c:612: case 0x00:
	cjne	r7,#0x02,00104$
	sjmp	00103$
00101$:
;	usb.c:614: u8TransBuff[0] = 0x00;
	mov	dptr,#_u8TransBuff
	clr	a
	movx	@dptr,a
;	usb.c:615: u8TransBuff[1] = 0x00;
	mov	dptr,#(_u8TransBuff + 0x0001)
	movx	@dptr,a
;	usb.c:617: EP0_SendData1(u8TransBuff, 2);
	mov	_EP0_SendData1_PARM_2,#0x02
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
	lcall	_EP0_SendData1
;	usb.c:619: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:620: break;
;	usb.c:621: case 0x01:
	ret
00102$:
;	usb.c:623: u8TransBuff[0] = 0x00;
	mov	dptr,#_u8TransBuff
	clr	a
	movx	@dptr,a
;	usb.c:624: u8TransBuff[1] = 0x00;
	mov	dptr,#(_u8TransBuff + 0x0001)
	movx	@dptr,a
;	usb.c:625: EP0_SendData1(u8TransBuff, 2);
	mov	_EP0_SendData1_PARM_2,#0x02
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
	lcall	_EP0_SendData1
;	usb.c:626: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:627: break;
;	usb.c:628: case 0x02:
	ret
00103$:
;	usb.c:632: u8TransBuff[0] = 0x00;	
	mov	dptr,#_u8TransBuff
	clr	a
	movx	@dptr,a
;	usb.c:633: u8TransBuff[1] = 0x00;
	mov	dptr,#(_u8TransBuff + 0x0001)
	movx	@dptr,a
;	usb.c:634: EP0_SendData1(u8TransBuff, 2);
	mov	_EP0_SendData1_PARM_2,#0x02
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
	lcall	_EP0_SendData1
;	usb.c:635: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:636: break;
;	usb.c:637: default:
	ret
00104$:
;	usb.c:640: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
	mov	_EP0_RecData0_PARM_2,#0x40
	mov	dptr,#_u8ReceiveBuff
	mov	b,#0x00
	lcall	_EP0_RecData0
;	usb.c:641: u8ControlState = SETUP_STATE;
	mov	_u8ControlState,#0x00
;	usb.c:645: EP0_Stall();
;	usb.c:647: }
;	usb.c:648: }
	ljmp	_EP0_Stall
;------------------------------------------------------------
;Allocation info for local variables in function 'ClearFeature'
;------------------------------------------------------------
;u8R                       Allocated to registers r7 
;------------------------------------------------------------
;	usb.c:649: static void ClearFeature(void) {
;	-----------------------------------------
;	 function ClearFeature
;	-----------------------------------------
_ClearFeature:
;	usb.c:657: u8R=u8SetupPacket[0] & 0x1F;
	mov	dptr,#_u8SetupPacket
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x1f
;	usb.c:659: switch(u8R) {
	cjne	r7,#0x00,00115$
	sjmp	00101$
00115$:
;	usb.c:660: case 0x00:
	cjne	r7,#0x02,00103$
	sjmp	00102$
00101$:
;	usb.c:662: EP0_SendData1(u8TransBuff, 0);
	mov	_EP0_SendData1_PARM_2,#0x00
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
	lcall	_EP0_SendData1
;	usb.c:663: u8ControlState = STATUS_STATE;
	mov	_u8ControlState,#0x02
;	usb.c:671: break;
;	usb.c:675: case 0x02:
	ret
00102$:
;	usb.c:681: EP0_SendData1(u8TransBuff, 0);
	mov	_EP0_SendData1_PARM_2,#0x00
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
	lcall	_EP0_SendData1
;	usb.c:682: u8ControlState = STATUS_STATE;
	mov	_u8ControlState,#0x02
;	usb.c:683: break;
;	usb.c:684: default:
	ret
00103$:
;	usb.c:691: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
	mov	_EP0_RecData0_PARM_2,#0x40
	mov	dptr,#_u8ReceiveBuff
	mov	b,#0x00
	lcall	_EP0_RecData0
;	usb.c:695: EP0_Stall();
	lcall	_EP0_Stall
;	usb.c:696: u8ControlState = SETUP_STATE;
	mov	_u8ControlState,#0x00
;	usb.c:698: }
;	usb.c:700: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetFeature'
;------------------------------------------------------------
;u8R                       Allocated to registers r7 
;------------------------------------------------------------
;	usb.c:701: static void SetFeature(void) {
;	-----------------------------------------
;	 function SetFeature
;	-----------------------------------------
_SetFeature:
;	usb.c:709: u8R=u8Ep0Buff[0] & 0x1F;
	mov	dptr,#_u8Ep0Buff
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x1f
;	usb.c:711: switch(u8R) {
	cjne	r7,#0x00,00115$
	sjmp	00101$
00115$:
;	usb.c:712: case 0x00:
	cjne	r7,#0x02,00103$
	sjmp	00102$
00101$:
;	usb.c:721: EP0_SendData1(u8TransBuff, 0);
	mov	_EP0_SendData1_PARM_2,#0x00
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
	lcall	_EP0_SendData1
;	usb.c:722: u8ControlState = STATUS_STATE;
	mov	_u8ControlState,#0x02
;	usb.c:723: break;
;	usb.c:727: case 0x02:
	ret
00102$:
;	usb.c:732: EP0_SendData1(u8TransBuff, 0);
	mov	_EP0_SendData1_PARM_2,#0x00
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
	lcall	_EP0_SendData1
;	usb.c:733: u8ControlState = STATUS_STATE;
	mov	_u8ControlState,#0x02
;	usb.c:734: break;
;	usb.c:735: default:
	ret
00103$:
;	usb.c:740: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
	mov	_EP0_RecData0_PARM_2,#0x40
	mov	dptr,#_u8ReceiveBuff
	mov	b,#0x00
	lcall	_EP0_RecData0
;	usb.c:744: EP0_Stall();
	lcall	_EP0_Stall
;	usb.c:745: u8ControlState = SETUP_STATE;
	mov	_u8ControlState,#0x00
;	usb.c:747: }
;	usb.c:748: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetAddress'
;------------------------------------------------------------
;	usb.c:749: static void SetAddress(void) {
;	-----------------------------------------
;	 function SetAddress
;	-----------------------------------------
_SetAddress:
;	usb.c:751: u8Addr = u8SetupPacket[2];
	mov	dptr,#(_u8SetupPacket + 0x0002)
	movx	a,@dptr
	mov	_u8Addr,a
;	usb.c:753: EP0_SendData1(u8TransBuff, 0);
	mov	_EP0_SendData1_PARM_2,#0x00
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
	lcall	_EP0_SendData1
;	usb.c:754: u8ControlState = STATUS_STATE;
	mov	_u8ControlState,#0x02
;	usb.c:756: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GetDescriptor'
;------------------------------------------------------------
;i                         Allocated to registers r4 r5 
;u16Len                    Allocated to registers r7 r6 
;------------------------------------------------------------
;	usb.c:757: static void GetDescriptor(void) {
;	-----------------------------------------
;	 function GetDescriptor
;	-----------------------------------------
_GetDescriptor:
;	usb.c:760: u16Len = u8SetupPacket[7];
	mov	dptr,#(_u8SetupPacket + 0x0007)
	movx	a,@dptr
;	usb.c:761: u16Len <<= 8;
	mov	r6,a
	mov	r7,#0x00
;	usb.c:762: u16Len += u8SetupPacket[6];
	mov	dptr,#(_u8SetupPacket + 0x0006)
	movx	a,@dptr
	mov	r4,#0x00
	add	a,r7
	mov	r7,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
;	usb.c:764: P1_MOD_OC &= ~(1 << 5);
	anl	_P1_MOD_OC,#0xdf
;	usb.c:765: P1_DIR_PU |= (1 << 5);
	orl	_P1_DIR_PU,#0x20
;	usb.c:767: P1 |= (1 << 5);
	orl	_P1,#0x20
;	usb.c:768: P1 &= ~(1 << 5);
	anl	_P1,#0xdf
;	usb.c:769: P1 |= (1 << 5);
	orl	_P1,#0x20
;	usb.c:770: P1 &= ~(1 << 5);
	anl	_P1,#0xdf
;	usb.c:771: P1 |= (1 << 5);
	orl	_P1,#0x20
;	usb.c:772: P1 &= ~(1 << 5);
	anl	_P1,#0xdf
;	usb.c:773: P1 |= (1 << 5);
	orl	_P1,#0x20
;	usb.c:774: P1 &= ~(1 << 5);
	anl	_P1,#0xdf
;	usb.c:775: P1 |= (1 << 5);
	orl	_P1,#0x20
;	usb.c:776: P1 &= ~(1 << 5);
	anl	_P1,#0xdf
;	usb.c:778: switch(u8SetupPacket[3]) {
	mov	dptr,#(_u8SetupPacket + 0x0003)
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x01,00301$
	sjmp	00101$
00301$:
	cjne	r5,#0x02,00302$
	sjmp	00105$
00302$:
	cjne	r5,#0x03,00303$
	ljmp	00109$
00303$:
	cjne	r5,#0x22,00304$
	ljmp	00128$
00304$:
	ljmp	00134$
;	usb.c:779: case 0x01:
00101$:
;	usb.c:791: if(u16Len >= 0x12) {
	clr	c
	mov	a,r7
	subb	a,#0x12
	mov	a,r6
	subb	a,#0x00
	jc	00165$
;	usb.c:792: u16Len = 0x12;
	mov	r7,#0x12
	mov	r6,#0x00
;	usb.c:794: for(i = 0; i < u16Len; ++i) {
00165$:
	mov	r4,#0x00
	mov	r5,#0x00
00137$:
	clr	c
	mov	a,r4
	subb	a,r7
	mov	a,r5
	subb	a,r6
	jnc	00104$
;	usb.c:795: u8TransBuff[i] = deviceDescriptor[i];
	mov	a,r4
	add	a,#_u8TransBuff
	mov	r2,a
	mov	a,r5
	addc	a,#(_u8TransBuff >> 8)
	mov	r3,a
	mov	a,r4
	add	a,#_deviceDescriptor
	mov	dpl,a
	mov	a,r5
	addc	a,#(_deviceDescriptor >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
;	usb.c:794: for(i = 0; i < u16Len; ++i) {
	inc	r4
	cjne	r4,#0x00,00137$
	inc	r5
	sjmp	00137$
00104$:
;	usb.c:797: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:798: EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
	mov	_EP0_SendData1_PARM_2,r7
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
;	usb.c:799: break;
	ljmp	_EP0_SendData1
;	usb.c:800: case 0x02:
00105$:
;	usb.c:802: if(u16Len >= 41) {
	clr	c
	mov	a,r7
	subb	a,#0x29
	mov	a,r6
	subb	a,#0x00
	jc	00168$
;	usb.c:803: u16Len = 41;
	mov	r7,#0x29
	mov	r6,#0x00
;	usb.c:805: for(i = 0; i < u16Len; ++i) {
00168$:
	mov	r4,#0x00
	mov	r5,#0x00
00140$:
	clr	c
	mov	a,r4
	subb	a,r7
	mov	a,r5
	subb	a,r6
	jnc	00108$
;	usb.c:806: u8TransBuff[i]=configDescriptor[i];
	mov	a,r4
	add	a,#_u8TransBuff
	mov	r2,a
	mov	a,r5
	addc	a,#(_u8TransBuff >> 8)
	mov	r3,a
	mov	a,r4
	add	a,#_configDescriptor
	mov	dpl,a
	mov	a,r5
	addc	a,#(_configDescriptor >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
;	usb.c:805: for(i = 0; i < u16Len; ++i) {
	inc	r4
	cjne	r4,#0x00,00140$
	inc	r5
	sjmp	00140$
00108$:
;	usb.c:809: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:810: EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
	mov	_EP0_SendData1_PARM_2,r7
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
;	usb.c:811: break;
	ljmp	_EP0_SendData1
;	usb.c:812: case 0x03:
00109$:
;	usb.c:814: switch(u8SetupPacket[2]) {
	mov	dptr,#(_u8SetupPacket + 0x0002)
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x03
	jnc	00311$
	ljmp	00126$
00311$:
	mov	a,r5
	add	a,r5
	add	a,r5
	mov	dptr,#00312$
	jmp	@a+dptr
00312$:
	ljmp	00110$
	ljmp	00114$
	ljmp	00118$
	ljmp	00122$
;	usb.c:815: case 0x00:
00110$:
;	usb.c:817: if(u16Len >= 0x04) {
	clr	c
	mov	a,r7
	subb	a,#0x04
	mov	a,r6
	subb	a,#0x00
	jc	00172$
;	usb.c:818: u16Len = 0x04;
	mov	r7,#0x04
	mov	r6,#0x00
;	usb.c:820: for(i = 0; i < u16Len; ++i) {
00172$:
	mov	r4,#0x00
	mov	r5,#0x00
00143$:
	clr	c
	mov	a,r4
	subb	a,r7
	mov	a,r5
	subb	a,r6
	jnc	00113$
;	usb.c:821: u8TransBuff[i]=stringDescriptor[i];
	mov	a,r4
	add	a,#_u8TransBuff
	mov	r2,a
	mov	a,r5
	addc	a,#(_u8TransBuff >> 8)
	mov	r3,a
	mov	a,r4
	add	a,#_stringDescriptor
	mov	dpl,a
	mov	a,r5
	addc	a,#(_stringDescriptor >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
;	usb.c:820: for(i = 0; i < u16Len; ++i) {
	inc	r4
	cjne	r4,#0x00,00143$
	inc	r5
	sjmp	00143$
00113$:
;	usb.c:824: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:825: EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
	mov	_EP0_SendData1_PARM_2,r7
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
;	usb.c:826: break;
	ljmp	_EP0_SendData1
;	usb.c:827: case 0x01:
00114$:
;	usb.c:829: if(u16Len >= 38) {
	clr	c
	mov	a,r7
	subb	a,#0x26
	mov	a,r6
	subb	a,#0x00
	jc	00175$
;	usb.c:830: u16Len = 38;
	mov	r7,#0x26
	mov	r6,#0x00
;	usb.c:832: for(i = 0; i < u16Len; ++i) {
00175$:
	mov	r4,#0x00
	mov	r5,#0x00
00146$:
	clr	c
	mov	a,r4
	subb	a,r7
	mov	a,r5
	subb	a,r6
	jnc	00117$
;	usb.c:833: u8TransBuff[i]=manufacturerDescriptor[i];
	mov	a,r4
	add	a,#_u8TransBuff
	mov	r2,a
	mov	a,r5
	addc	a,#(_u8TransBuff >> 8)
	mov	r3,a
	mov	a,r4
	add	a,#_manufacturerDescriptor
	mov	dpl,a
	mov	a,r5
	addc	a,#(_manufacturerDescriptor >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
;	usb.c:832: for(i = 0; i < u16Len; ++i) {
	inc	r4
	cjne	r4,#0x00,00146$
	inc	r5
	sjmp	00146$
00117$:
;	usb.c:836: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:837: EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
	mov	_EP0_SendData1_PARM_2,r7
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
;	usb.c:838: break;
	ljmp	_EP0_SendData1
;	usb.c:839: case 0x02:
00118$:
;	usb.c:841: if(u16Len >= 20) {
	clr	c
	mov	a,r7
	subb	a,#0x14
	mov	a,r6
	subb	a,#0x00
	jc	00178$
;	usb.c:842: u16Len = 20;
	mov	r7,#0x14
	mov	r6,#0x00
;	usb.c:844: for(i = 0; i < u16Len; ++i) {
00178$:
	mov	r4,#0x00
	mov	r5,#0x00
00149$:
	clr	c
	mov	a,r4
	subb	a,r7
	mov	a,r5
	subb	a,r6
	jnc	00121$
;	usb.c:845: u8TransBuff[i]=productDescriptor[i];
	mov	a,r4
	add	a,#_u8TransBuff
	mov	r2,a
	mov	a,r5
	addc	a,#(_u8TransBuff >> 8)
	mov	r3,a
	mov	a,r4
	add	a,#_productDescriptor
	mov	dpl,a
	mov	a,r5
	addc	a,#(_productDescriptor >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
;	usb.c:844: for(i = 0; i < u16Len; ++i) {
	inc	r4
	cjne	r4,#0x00,00149$
	inc	r5
	sjmp	00149$
00121$:
;	usb.c:848: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:849: EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
	mov	_EP0_SendData1_PARM_2,r7
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
;	usb.c:850: break;
	ljmp	_EP0_SendData1
;	usb.c:851: case 0x03:
00122$:
;	usb.c:853: if(u16Len >= 26) {
	clr	c
	mov	a,r7
	subb	a,#0x1a
	mov	a,r6
	subb	a,#0x00
	jc	00181$
;	usb.c:854: u16Len = 26;
	mov	r7,#0x1a
	mov	r6,#0x00
;	usb.c:856: for(i = 0; i < u16Len; ++i) {
00181$:
	mov	r4,#0x00
	mov	r5,#0x00
00152$:
	clr	c
	mov	a,r4
	subb	a,r7
	mov	a,r5
	subb	a,r6
	jnc	00125$
;	usb.c:857: u8TransBuff[i]=serialDescriptor[i];
	mov	a,r4
	add	a,#_u8TransBuff
	mov	r2,a
	mov	a,r5
	addc	a,#(_u8TransBuff >> 8)
	mov	r3,a
	mov	a,r4
	add	a,#_serialDescriptor
	mov	dpl,a
	mov	a,r5
	addc	a,#(_serialDescriptor >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
;	usb.c:856: for(i = 0; i < u16Len; ++i) {
	inc	r4
	cjne	r4,#0x00,00152$
	inc	r5
	sjmp	00152$
00125$:
;	usb.c:860: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:861: EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
	mov	_EP0_SendData1_PARM_2,r7
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
;	usb.c:862: break;
	ljmp	_EP0_SendData1
;	usb.c:863: default:
00126$:
;	usb.c:864: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
	mov	_EP0_RecData0_PARM_2,#0x40
	mov	dptr,#_u8ReceiveBuff
	mov	b,#0x00
	lcall	_EP0_RecData0
;	usb.c:866: EP0_Stall();
	lcall	_EP0_Stall
;	usb.c:868: u8ControlState = SETUP_STATE;
	mov	_u8ControlState,#0x00
;	usb.c:872: break;
;	usb.c:873: case 0x22:
	ret
00128$:
;	usb.c:874: switch (u8SetupPacket[2]) {
	mov	dptr,#(_u8SetupPacket + 0x0002)
	movx	a,@dptr
	jz	00326$
	ret
00326$:
;	usb.c:876: if(u16Len >= /*42*/28) {
	clr	c
	mov	a,r7
	subb	a,#0x1c
	mov	a,r6
	subb	a,#0x00
	jc	00185$
;	usb.c:877: u16Len = /*42*/28;
	mov	r7,#0x1c
	mov	r6,#0x00
;	usb.c:880: for(i=0; i<u16Len; ++i) {
00185$:
	mov	r4,#0x00
	mov	r5,#0x00
00155$:
	clr	c
	mov	a,r4
	subb	a,r7
	mov	a,r5
	subb	a,r6
	jnc	00132$
;	usb.c:881: u8TransBuff[i]=HID_DeviceReportDescriptor[i];
	mov	a,r4
	add	a,#_u8TransBuff
	mov	r2,a
	mov	a,r5
	addc	a,#(_u8TransBuff >> 8)
	mov	r3,a
	mov	a,r4
	add	a,#_HID_DeviceReportDescriptor
	mov	dpl,a
	mov	a,r5
	addc	a,#(_HID_DeviceReportDescriptor >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
;	usb.c:880: for(i=0; i<u16Len; ++i) {
	inc	r4
	cjne	r4,#0x00,00155$
	inc	r5
	sjmp	00155$
00132$:
;	usb.c:884: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:885: EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
	mov	_EP0_SendData1_PARM_2,r7
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
;	usb.c:888: break;
;	usb.c:889: default:
	ljmp	_EP0_SendData1
00134$:
;	usb.c:890: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
	mov	_EP0_RecData0_PARM_2,#0x40
	mov	dptr,#_u8ReceiveBuff
	mov	b,#0x00
	lcall	_EP0_RecData0
;	usb.c:892: EP0_Stall();
	lcall	_EP0_Stall
;	usb.c:894: u8ControlState = SETUP_STATE;
	mov	_u8ControlState,#0x00
;	usb.c:897: }
;	usb.c:898: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetDescriptor'
;------------------------------------------------------------
;	usb.c:899: static void SetDescriptor(void) {
;	-----------------------------------------
;	 function SetDescriptor
;	-----------------------------------------
_SetDescriptor:
;	usb.c:900: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
	mov	_EP0_RecData0_PARM_2,#0x40
	mov	dptr,#_u8ReceiveBuff
	mov	b,#0x00
	lcall	_EP0_RecData0
;	usb.c:907: EP0_Stall();
	lcall	_EP0_Stall
;	usb.c:908: u8ControlState = SETUP_STATE;
	mov	_u8ControlState,#0x00
;	usb.c:909: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GetConfiguration'
;------------------------------------------------------------
;	usb.c:910: static void GetConfiguration(void) {
;	-----------------------------------------
;	 function GetConfiguration
;	-----------------------------------------
_GetConfiguration:
;	usb.c:911: u8TransBuff[0] = u8Config;
	mov	dptr,#_u8TransBuff
	mov	a,_u8Config
	movx	@dptr,a
;	usb.c:915: EP0_SendData1(u8TransBuff, 0x01);
	mov	_EP0_SendData1_PARM_2,#0x01
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
	lcall	_EP0_SendData1
;	usb.c:918: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:919: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetConfiguration'
;------------------------------------------------------------
;	usb.c:920: static void SetConfiguration(void) {
;	-----------------------------------------
;	 function SetConfiguration
;	-----------------------------------------
_SetConfiguration:
;	usb.c:921: u8Config=u8SetupPacket[2];
	mov	dptr,#(_u8SetupPacket + 0x0002)
	movx	a,@dptr
	mov	_u8Config,a
;	usb.c:923: UEP4_1_MOD = (1 << 7) | (1 << 6);
	mov	_UEP4_1_MOD,#0xc0
;	usb.c:924: UEP1_CTRL = 0x10 | UEP_R_RES_ACK | UEP_T_RES_NAK;
	mov	_UEP1_CTRL,#0x12
;	usb.c:926: UEP1_DMA = (uint16_t)Ep1Buffer;
	mov	((_UEP1_DMA >> 0) & 0xFF),#_Ep1Buffer
	mov	((_UEP1_DMA >> 8) & 0xFF),#(_Ep1Buffer >> 8)
;	usb.c:928: EP1_RecData();
	lcall	_EP1_RecData
;	usb.c:935: EP0_SendData1(u8TransBuff, 0);
	mov	_EP0_SendData1_PARM_2,#0x00
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
	lcall	_EP0_SendData1
;	usb.c:936: u8ControlState = STATUS_STATE;
	mov	_u8ControlState,#0x02
;	usb.c:937: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GetInterface'
;------------------------------------------------------------
;	usb.c:938: static void GetInterface(void) {
;	-----------------------------------------
;	 function GetInterface
;	-----------------------------------------
_GetInterface:
;	usb.c:939: u8TransBuff[0] = 0x00;
	mov	dptr,#_u8TransBuff
	clr	a
	movx	@dptr,a
;	usb.c:946: EP0_SendData1(u8TransBuff, 0x01);
	mov	_EP0_SendData1_PARM_2,#0x01
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
	lcall	_EP0_SendData1
;	usb.c:947: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:948: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetInterface'
;------------------------------------------------------------
;	usb.c:949: static void SetInterface(void) {
;	-----------------------------------------
;	 function SetInterface
;	-----------------------------------------
_SetInterface:
;	usb.c:957: EP0_SendData1(u8TransBuff, 0);
	mov	_EP0_SendData1_PARM_2,#0x00
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
	lcall	_EP0_SendData1
;	usb.c:958: u8ControlState = STATUS_STATE;
	mov	_u8ControlState,#0x02
;	usb.c:959: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SynchFrame'
;------------------------------------------------------------
;	usb.c:960: static void SynchFrame(void) {
;	-----------------------------------------
;	 function SynchFrame
;	-----------------------------------------
_SynchFrame:
;	usb.c:962: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP1_Out'
;------------------------------------------------------------
;	usb.c:964: void EP1_Out(void) {
;	-----------------------------------------
;	 function EP1_Out
;	-----------------------------------------
_EP1_Out:
;	usb.c:965: DAP_Thread();
	lcall	_DAP_Thread
;	usb.c:966: EP1_SendData();
	lcall	_EP1_SendData
;	usb.c:967: EP1_RecData();
;	usb.c:968: }
	ljmp	_EP1_RecData
;------------------------------------------------------------
;Allocation info for local variables in function 'EP1_In'
;------------------------------------------------------------
;t                         Allocated to registers r7 
;------------------------------------------------------------
;	usb.c:970: void EP1_In(void) {
;	-----------------------------------------
;	 function EP1_In
;	-----------------------------------------
_EP1_In:
;	usb.c:972: UEP1_T_LEN = 0x40;
	mov	_UEP1_T_LEN,#0x40
;	usb.c:973: t = UEP1_CTRL;
	mov	a,_UEP1_CTRL
;	usb.c:974: t &= ~(0x03);
	anl	a,#0xfc
	mov	r7,a
;	usb.c:975: t |= 0x02;
	orl	ar7,#0x02
	mov	_UEP1_CTRL,r7
;	usb.c:976: UEP1_CTRL = t;
;	usb.c:977: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HID_SetIdle'
;------------------------------------------------------------
;	usb.c:979: static void HID_SetIdle(void) {
;	-----------------------------------------
;	 function HID_SetIdle
;	-----------------------------------------
_HID_SetIdle:
;	usb.c:981: u8ControlState = SETUP_STATE;
	mov	_u8ControlState,#0x00
;	usb.c:982: EP0_Stall();
;	usb.c:983: }
	ljmp	_EP0_Stall
;------------------------------------------------------------
;Allocation info for local variables in function 'HID_SetReport'
;------------------------------------------------------------
;	usb.c:985: static void HID_SetReport(void) {
;	-----------------------------------------
;	 function HID_SetReport
;	-----------------------------------------
_HID_SetReport:
;	usb.c:986: switch (u8SetupPacket[2]) {
	mov	dptr,#(_u8SetupPacket + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00119$
	sjmp	00102$
00119$:
	cjne	r7,#0x02,00120$
	sjmp	00102$
00120$:
;	usb.c:988: case 0x02:
	cjne	r7,#0x04,00105$
	sjmp	00103$
00102$:
;	usb.c:989: u8HidReq = 1;
	mov	_u8HidReq,#0x01
;	usb.c:990: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:991: EP0_RecData1(u8ReceiveBuff, u8SetupPacket[6]);
	mov	dptr,#(_u8SetupPacket + 0x0006)
	movx	a,@dptr
	mov	_EP0_RecData1_PARM_2,a
	mov	dptr,#_u8ReceiveBuff
	mov	b,#0x00
;	usb.c:992: break;
;	usb.c:993: case 0x04:
	ljmp	_EP0_RecData1
00103$:
;	usb.c:994: u8HidReq = 1;
	mov	_u8HidReq,#0x01
;	usb.c:995: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:996: EP0_RecData1(u8ReceiveBuff, u8SetupPacket[6]);
	mov	dptr,#(_u8SetupPacket + 0x0006)
	movx	a,@dptr
	mov	_EP0_RecData1_PARM_2,a
	mov	dptr,#_u8ReceiveBuff
	mov	b,#0x00
;	usb.c:998: }
;	usb.c:999: }
	ljmp	_EP0_RecData1
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HID_GetReport'
;------------------------------------------------------------
;	usb.c:1001: static void HID_GetReport(void) {
;	-----------------------------------------
;	 function HID_GetReport
;	-----------------------------------------
_HID_GetReport:
;	usb.c:1004: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:1005: EP0_SendData1(u8TransBuff, u8HidNum);
	mov	_EP0_SendData1_PARM_2,_u8HidNum
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
;	usb.c:1006: }
	ljmp	_EP0_SendData1
	.area CSEG    (CODE)
	.area CONST   (CODE)
_deviceDescriptor:
	.db #0x12	; 18
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x48	; 72	'H'
	.db #0x43	; 67	'C'
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
_HID_DeviceReportDescriptor:
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0xa1	; 161
	.db #0x01	; 1
	.db #0x19	; 25
	.db #0x01	; 1
	.db #0x29	; 41
	.db #0x40	; 64
	.db #0x15	; 21
	.db #0x01	; 1
	.db #0x25	; 37
	.db #0x40	; 64
	.db #0x75	; 117	'u'
	.db #0x08	; 8
	.db #0x95	; 149
	.db #0x40	; 64
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x19	; 25
	.db #0x01	; 1
	.db #0x29	; 41
	.db #0x40	; 64
	.db #0x91	; 145
	.db #0x00	; 0
	.db #0xc0	; 192
_configDescriptor:
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x29	; 41
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x32	; 50	'2'
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x21	; 33
	.db #0x11	; 17
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x81	; 129
	.db #0x03	; 3
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x01	; 1
_stringDescriptor:
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x09	; 9
	.db #0x04	; 4
_manufacturerDescriptor:
	.db #0x26	; 38
	.db #0x03	; 3
	.db #0x77	; 119	'w'
	.db #0x00	; 0
	.db #0x77	; 119	'w'
	.db #0x00	; 0
	.db #0x77	; 119	'w'
	.db #0x00	; 0
	.db #0x2e	; 46
	.db #0x00	; 0
	.db #0x6c	; 108	'l'
	.db #0x00	; 0
	.db #0x69	; 105	'i'
	.db #0x00	; 0
	.db #0x6e	; 110	'n'
	.db #0x00	; 0
	.db #0x68	; 104	'h'
	.db #0x00	; 0
	.db #0x6b	; 107	'k'
	.db #0x00	; 0
	.db #0x69	; 105	'i'
	.db #0x00	; 0
	.db #0x65	; 101	'e'
	.db #0x00	; 0
	.db #0x6e	; 110	'n'
	.db #0x00	; 0
	.db #0x32	; 50	'2'
	.db #0x00	; 0
	.db #0x34	; 52	'4'
	.db #0x00	; 0
	.db #0x37	; 55	'7'
	.db #0x00	; 0
	.db #0x2e	; 46
	.db #0x00	; 0
	.db #0x76	; 118	'v'
	.db #0x00	; 0
	.db #0x6e	; 110	'n'
	.db #0x00	; 0
_productDescriptor:
	.db #0x14	; 20
	.db #0x03	; 3
	.db #0x43	; 67	'C'
	.db #0x00	; 0
	.db #0x4d	; 77	'M'
	.db #0x00	; 0
	.db #0x53	; 83	'S'
	.db #0x00	; 0
	.db #0x49	; 73	'I'
	.db #0x00	; 0
	.db #0x53	; 83	'S'
	.db #0x00	; 0
	.db #0x2d	; 45
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x00	; 0
_serialDescriptor:
	.db #0x1a	; 26
	.db #0x03	; 3
	.db #0x2b	; 43
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x34	; 52	'4'
	.db #0x00	; 0
	.db #0x39	; 57	'9'
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x39	; 57	'9'
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x39	; 57	'9'
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x39	; 57	'9'
	.db #0x00	; 0
	.db #0x37	; 55	'7'
	.db #0x00	; 0
	.db #0x31	; 49	'1'
	.db #0x00	; 0
_u8Ver:
	.ascii "mcuProg v1.0 b181231"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
