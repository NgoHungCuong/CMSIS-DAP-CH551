;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module SW_DP
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SWD_Transfer_PARM_2
	.globl _SWD_Sequence_PARM_3
	.globl _SWD_Sequence_PARM_2
	.globl _SWJ_Sequence_PARM_2
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
	.globl _PORT_SWD_SETUP
	.globl _SWJ_Sequence
	.globl _SWD_Sequence
	.globl _SWD_Transfer
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
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_SWJ_Sequence_PARM_2:
	.ds 3
	.area	OSEG    (OVR,DATA)
_SWD_Sequence_PARM_2:
	.ds 3
_SWD_Sequence_PARM_3:
	.ds 3
_SWD_Sequence_bits_65536_48:
	.ds 1
_SWD_Sequence_k_65536_48:
	.ds 1
	.area	OSEG    (OVR,DATA)
_SWD_Transfer_PARM_2:
	.ds 2
_SWD_Transfer_val_65536_59:
	.ds 1
_SWD_Transfer_m_65536_59:
	.ds 1
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
;Allocation info for local variables in function 'PORT_SWD_SETUP'
;------------------------------------------------------------
;	SW_DP.c:49: void PORT_SWD_SETUP(void)
;	-----------------------------------------
;	 function PORT_SWD_SETUP
;	-----------------------------------------
_PORT_SWD_SETUP:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	SW_DP.c:55: P3_MOD_OC = P3_MOD_OC | (1 << 2);
	orl	_P3_MOD_OC,#0x04
;	SW_DP.c:56: P3_DIR_PU = P3_DIR_PU | (1 << 2);
	orl	_P3_DIR_PU,#0x04
;	SW_DP.c:57: SWK = 1;
;	assignBit
	setb	_P3_2
;	SW_DP.c:61: P1_MOD_OC = P1_MOD_OC | (1 << 7);
	orl	_P1_MOD_OC,#0x80
;	SW_DP.c:62: P1_DIR_PU = P1_DIR_PU | (1 << 7);
	orl	_P1_DIR_PU,#0x80
;	SW_DP.c:63: SWD = 1;
;	assignBit
	setb	_P1_7
;	SW_DP.c:67: P1_MOD_OC = P1_MOD_OC | (1 << 5);
	orl	_P1_MOD_OC,#0x20
;	SW_DP.c:68: P1_DIR_PU = P1_DIR_PU | (1 << 5);
	orl	_P1_DIR_PU,#0x20
;	SW_DP.c:69: RST = 1;
;	assignBit
	setb	_P1_5
;	SW_DP.c:70: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SWJ_Sequence'
;------------------------------------------------------------
;datas                     Allocated with name '_SWJ_Sequence_PARM_2'
;count                     Allocated to registers 
;val                       Allocated to registers r6 
;n                         Allocated to registers r5 
;------------------------------------------------------------
;	SW_DP.c:76: void SWJ_Sequence(uint8_t count, const uint8_t *datas)
;	-----------------------------------------
;	 function SWJ_Sequence
;	-----------------------------------------
_SWJ_Sequence:
	mov	r7,dpl
;	SW_DP.c:81: val = 0U;
	mov	r6,#0x00
;	SW_DP.c:82: n = 0U;
	mov	r5,#0x00
;	SW_DP.c:83: while (count--)
	mov	r2,_SWJ_Sequence_PARM_2
	mov	r3,(_SWJ_Sequence_PARM_2 + 1)
	mov	r4,(_SWJ_Sequence_PARM_2 + 2)
00112$:
	mov	ar1,r7
	dec	r7
	mov	a,r1
	jz	00115$
;	SW_DP.c:85: if (n == 0U)
	mov	a,r5
	jnz	00103$
;	SW_DP.c:87: val = *datas++;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
;	SW_DP.c:88: n = 8U;
	mov	r5,#0x08
;	SW_DP.c:90: while(!TF2);
00103$:
	jnb	_TF2,00103$
;	SW_DP.c:91: if (val & 1U)
	mov	a,r6
	jnb	acc.0,00107$
;	SW_DP.c:93: SWD = 1;
;	assignBit
	setb	_P1_7
	sjmp	00108$
00107$:
;	SW_DP.c:97: SWD = 0;
;	assignBit
	clr	_P1_7
00108$:
;	SW_DP.c:100: SWK = 0; TR2=0;TL2=RCAP2L;TH2=RCAP2H;TF2=0;TR2=1;
;	assignBit
	clr	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
;	SW_DP.c:101: while(!TF2); SWK = 1; TR2=0;TL2=RCAP2L;TH2=RCAP2H;TF2=0;TR2=1;
00109$:
	jnb	_TF2,00109$
;	assignBit
	setb	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
;	SW_DP.c:102: val >>= 1;
	mov	a,r6
	clr	c
	rrc	a
	mov	r6,a
;	SW_DP.c:103: n--;
	dec	r5
	sjmp	00112$
00115$:
;	SW_DP.c:105: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SWD_Sequence'
;------------------------------------------------------------
;swdo                      Allocated with name '_SWD_Sequence_PARM_2'
;swdi                      Allocated with name '_SWD_Sequence_PARM_3'
;info                      Allocated to registers r7 
;val                       Allocated to registers r3 
;bits                      Allocated with name '_SWD_Sequence_bits_65536_48'
;n                         Allocated to registers r6 
;k                         Allocated with name '_SWD_Sequence_k_65536_48'
;------------------------------------------------------------
;	SW_DP.c:112: void SWD_Sequence(uint8_t info, const uint8_t *swdo, uint8_t *swdi)
;	-----------------------------------------
;	 function SWD_Sequence
;	-----------------------------------------
_SWD_Sequence:
	mov	r7,dpl
;	SW_DP.c:118: n = info & SWD_SEQUENCE_CLK;
	mov	a,#0x3f
	anl	a,r7
;	SW_DP.c:119: if (n == 0U)
	mov	r6,a
	jnz	00102$
;	SW_DP.c:121: n = 64U;
	mov	r6,#0x40
00102$:
;	SW_DP.c:124: if (info & SWD_SEQUENCE_DIN)
	mov	a,r7
	jnb	acc.7,00146$
;	SW_DP.c:126: while (n)
	mov	r4,_SWD_Sequence_PARM_3
	mov	r5,(_SWD_Sequence_PARM_3 + 1)
	mov	r7,(_SWD_Sequence_PARM_3 + 2)
00110$:
	mov	a,r6
	jnz	00230$
	ret
00230$:
;	SW_DP.c:128: val = 0U;
	mov	r3,#0x00
;	SW_DP.c:129: for (k = 8U; k && n; k--, n--)
	mov	_SWD_Sequence_k_65536_48,#0x08
	mov	ar1,r6
00128$:
	mov	a,_SWD_Sequence_k_65536_48
	jz	00153$
	mov	a,r1
	jz	00153$
;	SW_DP.c:131: SW_READ_BIT(bits);
00103$:
	jnb	_TF2,00103$
;	assignBit
	clr	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
00106$:
	jnb	_TF2,00106$
	mov	c,_P1_7
	clr	a
	rlc	a
	mov	_SWD_Sequence_bits_65536_48,a
;	assignBit
	setb	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
;	SW_DP.c:132: val >>= 1;
	mov	a,r3
	clr	c
	rrc	a
	mov	r0,a
;	SW_DP.c:133: val |= bits << 7;
	mov	a,_SWD_Sequence_bits_65536_48
	rr	a
	anl	a,#0x80
	mov	r2,a
	orl	a,r0
	mov	r3,a
;	SW_DP.c:129: for (k = 8U; k && n; k--, n--)
	dec	_SWD_Sequence_k_65536_48
	dec	r1
	sjmp	00128$
00153$:
	mov	ar6,r1
;	SW_DP.c:135: val >>= k;
	mov	b,_SWD_Sequence_k_65536_48
	inc	b
	mov	a,r3
	sjmp	00236$
00235$:
	clr	c
	rrc	a
00236$:
	djnz	b,00235$
;	SW_DP.c:136: *swdi++ = (uint8_t)val;
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	__gptrput
	inc	dptr
	mov	r4,dpl
	mov	r5,dph
;	SW_DP.c:141: while (n)
	sjmp	00110$
00146$:
	mov	r4,_SWD_Sequence_PARM_2
	mov	r5,(_SWD_Sequence_PARM_2 + 1)
	mov	r7,(_SWD_Sequence_PARM_2 + 2)
00120$:
	mov	a,r6
	jz	00134$
;	SW_DP.c:143: val = *swdo++;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	r4,dpl
	mov	r5,dph
;	SW_DP.c:144: for (k = 8U; k && n; k--, n--)
	mov	r2,#0x08
	mov	ar1,r6
00132$:
	mov	a,r2
	jz	00120$
	mov	a,r1
	jz	00120$
;	SW_DP.c:146: SW_WRITE_BIT(val);
00113$:
	jnb	_TF2,00113$
	mov	a,r3
	anl	a,#0x01
	add	a,#0xff
	mov	_P1_7,c
;	assignBit
	clr	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
00116$:
	jnb	_TF2,00116$
;	assignBit
	setb	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
;	SW_DP.c:147: val >>= 1;
	mov	a,r3
	clr	c
	rrc	a
	mov	r3,a
;	SW_DP.c:144: for (k = 8U; k && n; k--, n--)
	dec	r2
	dec	r1
	mov	ar6,r1
	sjmp	00132$
00134$:
;	SW_DP.c:151: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SWD_Transfer'
;------------------------------------------------------------
;datas                     Allocated with name '_SWD_Transfer_PARM_2'
;req                       Allocated to registers r7 
;ack                       Allocated to registers r6 
;bits                      Allocated to registers r6 
;val                       Allocated with name '_SWD_Transfer_val_65536_59'
;parity                    Allocated to registers r6 
;m                         Allocated with name '_SWD_Transfer_m_65536_59'
;n                         Allocated to registers r5 
;------------------------------------------------------------
;	SW_DP.c:157: uint8_t SWD_Transfer(uint8_t req, uint8_t __xdata *datas)
;	-----------------------------------------
;	 function SWD_Transfer
;	-----------------------------------------
_SWD_Transfer:
	mov	r7,dpl
;	SW_DP.c:168: SW_WRITE_BIT(1U); /* Start Bit */
00101$:
	jnb	_TF2,00101$
;	assignBit
	setb	_P1_7
;	assignBit
	clr	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
00104$:
	jnb	_TF2,00104$
;	assignBit
	setb	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
;	SW_DP.c:169: bits = req >> 0;
	mov	ar6,r7
;	SW_DP.c:170: SW_WRITE_BIT(bits); /* APnDP Bit */
00107$:
	jnb	_TF2,00107$
	mov	a,r6
	anl	a,#0x01
	add	a,#0xff
	mov	_P1_7,c
;	assignBit
	clr	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
00110$:
	jnb	_TF2,00110$
;	assignBit
	setb	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
;	SW_DP.c:171: parity += bits;
;	SW_DP.c:172: bits = req >> 1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r5,a
;	SW_DP.c:173: SW_WRITE_BIT(bits); /* RnW Bit */
00113$:
	jnb	_TF2,00113$
	mov	a,r5
	anl	a,#0x01
	add	a,#0xff
	mov	_P1_7,c
;	assignBit
	clr	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
00116$:
	jnb	_TF2,00116$
;	assignBit
	setb	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
;	SW_DP.c:174: parity += bits;
	mov	a,r5
	add	a,r6
	mov	r6,a
;	SW_DP.c:175: bits = req >> 2;
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r5,a
;	SW_DP.c:176: SW_WRITE_BIT(bits); /* A2 Bit */
00119$:
	jnb	_TF2,00119$
	mov	a,r5
	anl	a,#0x01
	add	a,#0xff
	mov	_P1_7,c
;	assignBit
	clr	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
00122$:
	jnb	_TF2,00122$
;	assignBit
	setb	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
;	SW_DP.c:177: parity += bits;
	mov	a,r5
	add	a,r6
	mov	r6,a
;	SW_DP.c:178: bits = req >> 3;
	mov	a,r7
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r5,a
;	SW_DP.c:179: SW_WRITE_BIT(bits); /* A3 Bit */
00125$:
	jnb	_TF2,00125$
	mov	a,r5
	anl	a,#0x01
	mov	r4,a
	add	a,#0xff
	mov	_P1_7,c
;	assignBit
	clr	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
00128$:
	jnb	_TF2,00128$
;	assignBit
	setb	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
;	SW_DP.c:180: parity += bits;
	mov	a,r5
	add	a,r6
	mov	r6,a
;	SW_DP.c:181: SW_WRITE_BIT(parity); /* Parity Bit */
00131$:
	jnb	_TF2,00131$
	mov	a,r6
	anl	a,#0x01
	add	a,#0xff
	mov	_P1_7,c
;	assignBit
	clr	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
00134$:
	jnb	_TF2,00134$
;	assignBit
	setb	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
;	SW_DP.c:182: SW_WRITE_BIT(0U);     /* Stop Bit */
00137$:
	jnb	_TF2,00137$
;	assignBit
	clr	_P1_7
;	assignBit
	clr	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
00140$:
	jnb	_TF2,00140$
;	assignBit
	setb	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
;	SW_DP.c:183: SW_WRITE_BIT(1U);     /* Park Bit */
00143$:
	jnb	_TF2,00143$
;	assignBit
	setb	_P1_7
;	assignBit
	clr	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
00146$:
	jnb	_TF2,00146$
;	assignBit
	setb	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
;	SW_DP.c:186: SWD = 1;
;	assignBit
	setb	_P1_7
;	SW_DP.c:187: for (n = turnaround; n; n--)
	mov	r0,#_turnaround
	mov	ar6,@r0
00272$:
	mov	a,r6
	jz	00156$
;	SW_DP.c:189: SW_CLOCK_CYCLE();
00149$:
	jnb	_TF2,00149$
;	assignBit
	clr	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
00152$:
	jnb	_TF2,00152$
;	assignBit
	setb	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
;	SW_DP.c:187: for (n = turnaround; n; n--)
	dec	r6
;	SW_DP.c:193: SW_READ_BIT(bits);
	sjmp	00272$
00156$:
	jnb	_TF2,00156$
;	assignBit
	clr	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
00159$:
	jnb	_TF2,00159$
	mov	c,_P1_7
	clr	a
	rlc	a
	mov	r6,a
;	assignBit
	setb	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
;	SW_DP.c:194: ack = bits << 0;
;	SW_DP.c:195: SW_READ_BIT(bits);
00162$:
	jnb	_TF2,00162$
;	assignBit
	clr	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
00165$:
	jnb	_TF2,00165$
	mov	c,_P1_7
	clr	a
	rlc	a
	mov	r5,a
;	assignBit
	setb	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
;	SW_DP.c:196: ack |= bits << 1;
	mov	a,r5
	add	a,r5
	orl	ar6,a
;	SW_DP.c:197: SW_READ_BIT(bits);
00168$:
	jnb	_TF2,00168$
;	assignBit
	clr	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
00171$:
	jnb	_TF2,00171$
	mov	c,_P1_7
	clr	a
	rlc	a
	mov	r5,a
;	assignBit
	setb	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
;	SW_DP.c:198: ack |= bits << 2;
	mov	a,r5
	add	a,r5
	add	a,acc
	mov	r5,a
	orl	ar6,a
;	SW_DP.c:200: if (ack == DAP_TRANSFER_OK)
	cjne	r6,#0x01,00900$
	sjmp	00901$
00900$:
	ljmp	00233$
00901$:
;	SW_DP.c:204: if (req & DAP_TRANSFER_RnW)
	mov	a,r7
	jb	acc.1,00902$
	ljmp	00221$
00902$:
;	SW_DP.c:207: val = 0U;
	mov	r5,#0x00
;	SW_DP.c:208: parity = 0U;
	mov	r4,#0x00
;	SW_DP.c:209: for (m = 0; m < 4; m++)
;	1-genFromRTrack replaced	mov	_SWD_Transfer_m_65536_59,#0x00
	mov	_SWD_Transfer_m_65536_59,r5
;	SW_DP.c:213: SW_READ_BIT(bits); /* Read RDATA[0:31] */
00354$:
	mov	r2,#0x08
00174$:
	jnb	_TF2,00174$
;	assignBit
	clr	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
00177$:
	jnb	_TF2,00177$
	mov	c,_P1_7
	clr	a
	rlc	a
	mov	r3,a
;	assignBit
	setb	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
;	SW_DP.c:214: parity += bits;
	mov	a,r3
	add	a,r4
	mov	r4,a
;	SW_DP.c:215: val >>= 1;
	mov	a,r5
	clr	c
	rrc	a
	mov	_SWD_Transfer_val_65536_59,a
;	SW_DP.c:216: val |= bits << 7;
	mov	a,r3
	rr	a
	anl	a,#0x80
	mov	r3,a
	orl	a,_SWD_Transfer_val_65536_59
	mov	r5,a
;	SW_DP.c:211: for (n = 8U; n; n--)
	djnz	r2,00174$
;	SW_DP.c:218: if (datas)
	mov	a,_SWD_Transfer_PARM_2
	orl	a,(_SWD_Transfer_PARM_2 + 1)
	jz	00277$
;	SW_DP.c:220: datas[m] = val;
	mov	a,_SWD_Transfer_m_65536_59
	add	a,_SWD_Transfer_PARM_2
	mov	dpl,a
	clr	a
	addc	a,(_SWD_Transfer_PARM_2 + 1)
	mov	dph,a
	mov	a,r5
	movx	@dptr,a
00277$:
;	SW_DP.c:209: for (m = 0; m < 4; m++)
	inc	_SWD_Transfer_m_65536_59
	mov	a,#0x100 - 0x04
	add	a,_SWD_Transfer_m_65536_59
	jnc	00354$
;	SW_DP.c:223: SW_READ_BIT(bits); /* Read Parity */
00184$:
	jnb	_TF2,00184$
;	assignBit
	clr	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
00187$:
	jnb	_TF2,00187$
	mov	c,_P1_7
	clr	a
	rlc	a
	mov	r5,a
;	assignBit
	setb	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
;	SW_DP.c:224: if ((parity ^ bits) & 1U)
	mov	a,r5
	xrl	a,r4
	jnb	acc.0,00191$
;	SW_DP.c:226: ack = DAP_TRANSFER_ERROR;
	mov	r6,#0x08
00191$:
;	SW_DP.c:230: for (n = turnaround; n; n--)
	mov	r0,#_turnaround
	mov	ar5,@r0
00279$:
	mov	a,r5
	jz	00198$
;	SW_DP.c:232: SW_CLOCK_CYCLE();
00192$:
	jnb	_TF2,00192$
;	assignBit
	clr	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
00195$:
	jnb	_TF2,00195$
;	assignBit
	setb	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
;	SW_DP.c:230: for (n = turnaround; n; n--)
	dec	r5
	sjmp	00279$
00198$:
;	SW_DP.c:234: SWD = 1;
;	assignBit
	setb	_P1_7
	ljmp	00222$
00221$:
;	SW_DP.c:239: for (n = turnaround; n; n--)
	mov	r0,#_turnaround
	mov	ar5,@r0
00282$:
	mov	a,r5
	jz	00205$
;	SW_DP.c:241: SW_CLOCK_CYCLE();
00199$:
	jnb	_TF2,00199$
;	assignBit
	clr	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
00202$:
	jnb	_TF2,00202$
;	assignBit
	setb	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
;	SW_DP.c:239: for (n = turnaround; n; n--)
	dec	r5
	sjmp	00282$
00205$:
;	SW_DP.c:243: SWD = 1;
;	assignBit
	setb	_P1_7
;	SW_DP.c:245: parity = 0U;
	mov	r5,#0x00
;	SW_DP.c:246: for (m = 0; m < 4; m++)
;	1-genFromRTrack replaced	mov	_SWD_Transfer_m_65536_59,#0x00
	mov	_SWD_Transfer_m_65536_59,r5
00286$:
;	SW_DP.c:248: val = datas[m];
	mov	a,_SWD_Transfer_m_65536_59
	add	a,_SWD_Transfer_PARM_2
	mov	dpl,a
	clr	a
	addc	a,(_SWD_Transfer_PARM_2 + 1)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
;	SW_DP.c:251: SW_WRITE_BIT(val); /* Write WDATA[0:31] */
	mov	r2,#0x08
00206$:
	jnb	_TF2,00206$
	mov	a,r3
	anl	a,#0x01
	mov	r4,a
	add	a,#0xff
	mov	_P1_7,c
;	assignBit
	clr	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
00209$:
	jnb	_TF2,00209$
;	assignBit
	setb	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
;	SW_DP.c:252: parity += val;
	mov	a,r3
	add	a,r5
	mov	r5,a
;	SW_DP.c:253: val >>= 1;
	mov	a,r3
	clr	c
	rrc	a
	mov	r3,a
;	SW_DP.c:249: for (n = 8U; n; n--)
	djnz	r2,00206$
;	SW_DP.c:246: for (m = 0; m < 4; m++)
	inc	_SWD_Transfer_m_65536_59
	mov	a,#0x100 - 0x04
	add	a,_SWD_Transfer_m_65536_59
	jnc	00286$
;	SW_DP.c:256: SW_WRITE_BIT(parity); /* Write Parity Bit */
00214$:
	jnb	_TF2,00214$
	mov	a,r5
	anl	a,#0x01
	mov	r5,a
	add	a,#0xff
	mov	_P1_7,c
;	assignBit
	clr	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
00217$:
	jnb	_TF2,00217$
;	assignBit
	setb	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
00222$:
;	SW_DP.c:259: n = idle_cycles;
	mov	r0,#_idle_cycles
;	SW_DP.c:260: if (n)
	mov	a,@r0
	mov	r5,a
	jz	00231$
;	SW_DP.c:262: SWD = 0;
;	assignBit
	clr	_P1_7
00289$:
;	SW_DP.c:263: for (; n; n--)
	mov	a,r5
	jz	00231$
;	SW_DP.c:265: SW_CLOCK_CYCLE();
00223$:
	jnb	_TF2,00223$
;	assignBit
	clr	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
00226$:
	jnb	_TF2,00226$
;	assignBit
	setb	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
;	SW_DP.c:263: for (; n; n--)
	dec	r5
	sjmp	00289$
00231$:
;	SW_DP.c:268: SWD = 1;
;	assignBit
	setb	_P1_7
;	SW_DP.c:269: return ((uint8_t)ack);
	mov	dpl,r6
	ret
00233$:
;	SW_DP.c:272: if ((ack == DAP_TRANSFER_WAIT) || (ack == DAP_TRANSFER_FAULT))
	cjne	r6,#0x02,00927$
	sjmp	00261$
00927$:
	cjne	r6,#0x04,00928$
	sjmp	00929$
00928$:
	ljmp	00262$
00929$:
00261$:
;	SW_DP.c:275: if (data_phase && ((req & DAP_TRANSFER_RnW) != 0U))
	mov	r0,#_data_phase
	mov	a,@r0
	jz	00242$
	mov	a,r7
	jnb	acc.1,00242$
;	SW_DP.c:279: SW_CLOCK_CYCLE(); /* Dummy Read RDATA[0:31] + Parity */
	mov	r5,#0x21
00234$:
	jnb	_TF2,00234$
;	assignBit
	clr	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
00237$:
	jnb	_TF2,00237$
;	assignBit
	setb	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
;	SW_DP.c:277: for (n = 32U + 1U; n; n--)
	djnz	r5,00234$
00242$:
;	SW_DP.c:283: for (n = turnaround; n; n--)
	mov	r0,#_turnaround
	mov	ar5,@r0
00294$:
	mov	a,r5
	jz	00250$
;	SW_DP.c:285: SW_CLOCK_CYCLE();
00244$:
	jnb	_TF2,00244$
;	assignBit
	clr	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
00247$:
	jnb	_TF2,00247$
;	assignBit
	setb	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
;	SW_DP.c:283: for (n = turnaround; n; n--)
	dec	r5
	sjmp	00294$
00250$:
;	SW_DP.c:287: SWD = 1;
;	assignBit
	setb	_P1_7
;	SW_DP.c:288: if (data_phase && ((req & DAP_TRANSFER_RnW) == 0U))
	mov	r0,#_data_phase
	mov	a,@r0
	jz	00259$
	mov	a,r7
	jb	acc.1,00259$
;	SW_DP.c:290: SWD = 0;
;	assignBit
	clr	_P1_7
;	SW_DP.c:293: SW_CLOCK_CYCLE(); /* Dummy Write WDATA[0:31] + Parity */
	mov	r7,#0x21
00251$:
	jnb	_TF2,00251$
;	assignBit
	clr	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
00254$:
	jnb	_TF2,00254$
;	assignBit
	setb	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
;	SW_DP.c:291: for (n = 32U + 1U; n; n--)
	djnz	r7,00251$
00259$:
;	SW_DP.c:296: SWD = 1;
;	assignBit
	setb	_P1_7
;	SW_DP.c:297: return ((uint8_t)ack);
	mov	dpl,r6
	ret
00262$:
;	SW_DP.c:301: for (n = turnaround + 32U + 1U; n; n--)
	mov	r0,#_turnaround
	mov	a,#0x21
	add	a,@r0
	mov	r7,a
00299$:
	mov	a,r7
	jz	00270$
;	SW_DP.c:303: SW_CLOCK_CYCLE(); /* Back off datas phase */
00264$:
	jnb	_TF2,00264$
;	assignBit
	clr	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
00267$:
	jnb	_TF2,00267$
;	assignBit
	setb	_P3_2
;	assignBit
	clr	_TR2
	mov	_TL2,_RCAP2L
	mov	_TH2,_RCAP2H
;	assignBit
	clr	_TF2
;	assignBit
	setb	_TR2
;	SW_DP.c:301: for (n = turnaround + 32U + 1U; n; n--)
	dec	r7
	sjmp	00299$
00270$:
;	SW_DP.c:305: SWD = 1;
;	assignBit
	setb	_P1_7
;	SW_DP.c:306: return ((uint8_t)ack);
	mov	dpl,r6
;	SW_DP.c:307: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
