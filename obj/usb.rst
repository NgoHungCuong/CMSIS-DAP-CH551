                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module usb
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _EP0_RecData1_PARM_2
                                     12 	.globl _EP0_RecData0_PARM_2
                                     13 	.globl _EP0_SendData1_PARM_2
                                     14 	.globl _EP0_SendData0_PARM_2
                                     15 	.globl _u8Ver
                                     16 	.globl _serialDescriptor
                                     17 	.globl _productDescriptor
                                     18 	.globl _manufacturerDescriptor
                                     19 	.globl _stringDescriptor
                                     20 	.globl _configDescriptor
                                     21 	.globl _HID_DeviceReportDescriptor
                                     22 	.globl _deviceDescriptor
                                     23 	.globl _DAP_Thread
                                     24 	.globl _P1_4
                                     25 	.globl _P1_7
                                     26 	.globl _P3_2
                                     27 	.globl _P1_5
                                     28 	.globl _UIF_BUS_RST
                                     29 	.globl _UIF_TRANSFER
                                     30 	.globl _UIF_SUSPEND
                                     31 	.globl _UIF_FIFO_OV
                                     32 	.globl _U_SIE_FREE
                                     33 	.globl _U_TOG_OK
                                     34 	.globl _U_IS_NAK
                                     35 	.globl _ADC_CHAN0
                                     36 	.globl _ADC_CHAN1
                                     37 	.globl _CMP_CHAN
                                     38 	.globl _ADC_START
                                     39 	.globl _ADC_IF
                                     40 	.globl _CMP_IF
                                     41 	.globl _CMPO
                                     42 	.globl _U1RI
                                     43 	.globl _U1TI
                                     44 	.globl _U1RB8
                                     45 	.globl _U1TB8
                                     46 	.globl _U1REN
                                     47 	.globl _U1SMOD
                                     48 	.globl _U1SM0
                                     49 	.globl _S0_R_FIFO
                                     50 	.globl _S0_T_FIFO
                                     51 	.globl _S0_FREE
                                     52 	.globl _S0_IF_BYTE
                                     53 	.globl _S0_IF_FIRST
                                     54 	.globl _S0_IF_OV
                                     55 	.globl _S0_FST_ACT
                                     56 	.globl _CP_RL2
                                     57 	.globl _C_T2
                                     58 	.globl _TR2
                                     59 	.globl _EXEN2
                                     60 	.globl _TCLK
                                     61 	.globl _RCLK
                                     62 	.globl _EXF2
                                     63 	.globl _CAP1F
                                     64 	.globl _TF2
                                     65 	.globl _RI
                                     66 	.globl _TI
                                     67 	.globl _RB8
                                     68 	.globl _TB8
                                     69 	.globl _REN
                                     70 	.globl _SM2
                                     71 	.globl _SM1
                                     72 	.globl _SM0
                                     73 	.globl _IT0
                                     74 	.globl _IE0
                                     75 	.globl _IT1
                                     76 	.globl _IE1
                                     77 	.globl _TR0
                                     78 	.globl _TF0
                                     79 	.globl _TR1
                                     80 	.globl _TF1
                                     81 	.globl _RXD
                                     82 	.globl _PWM1_
                                     83 	.globl _TXD
                                     84 	.globl _PWM2_
                                     85 	.globl _AIN3
                                     86 	.globl _VBUS1
                                     87 	.globl _INT0
                                     88 	.globl _TXD1_
                                     89 	.globl _INT1
                                     90 	.globl _T0
                                     91 	.globl _RXD1_
                                     92 	.globl _PWM2
                                     93 	.globl _T1
                                     94 	.globl _UDP
                                     95 	.globl _UDM
                                     96 	.globl _TIN0
                                     97 	.globl _CAP1
                                     98 	.globl _T2
                                     99 	.globl _AIN0
                                    100 	.globl _VBUS2
                                    101 	.globl _TIN1
                                    102 	.globl _CAP2
                                    103 	.globl _T2EX
                                    104 	.globl _RXD_
                                    105 	.globl _TXD_
                                    106 	.globl _AIN1
                                    107 	.globl _UCC1
                                    108 	.globl _TIN2
                                    109 	.globl _SCS
                                    110 	.globl _CAP1_
                                    111 	.globl _T2_
                                    112 	.globl _AIN2
                                    113 	.globl _UCC2
                                    114 	.globl _TIN3
                                    115 	.globl _PWM1
                                    116 	.globl _MOSI
                                    117 	.globl _TIN4
                                    118 	.globl _RXD1
                                    119 	.globl _MISO
                                    120 	.globl _TIN5
                                    121 	.globl _TXD1
                                    122 	.globl _SCK
                                    123 	.globl _IE_SPI0
                                    124 	.globl _IE_TKEY
                                    125 	.globl _IE_USB
                                    126 	.globl _IE_ADC
                                    127 	.globl _IE_UART1
                                    128 	.globl _IE_PWMX
                                    129 	.globl _IE_GPIO
                                    130 	.globl _IE_WDOG
                                    131 	.globl _PX0
                                    132 	.globl _PT0
                                    133 	.globl _PX1
                                    134 	.globl _PT1
                                    135 	.globl _PS
                                    136 	.globl _PT2
                                    137 	.globl _PL_FLAG
                                    138 	.globl _PH_FLAG
                                    139 	.globl _EX0
                                    140 	.globl _ET0
                                    141 	.globl _EX1
                                    142 	.globl _ET1
                                    143 	.globl _ES
                                    144 	.globl _ET2
                                    145 	.globl _E_DIS
                                    146 	.globl _EA
                                    147 	.globl _P
                                    148 	.globl _F1
                                    149 	.globl _OV
                                    150 	.globl _RS0
                                    151 	.globl _RS1
                                    152 	.globl _F0
                                    153 	.globl _AC
                                    154 	.globl _CY
                                    155 	.globl _UEP1_DMA_H
                                    156 	.globl _UEP1_DMA_L
                                    157 	.globl _UEP1_DMA
                                    158 	.globl _UEP0_DMA_H
                                    159 	.globl _UEP0_DMA_L
                                    160 	.globl _UEP0_DMA
                                    161 	.globl _UEP2_3_MOD
                                    162 	.globl _UEP4_1_MOD
                                    163 	.globl _UEP3_DMA_H
                                    164 	.globl _UEP3_DMA_L
                                    165 	.globl _UEP3_DMA
                                    166 	.globl _UEP2_DMA_H
                                    167 	.globl _UEP2_DMA_L
                                    168 	.globl _UEP2_DMA
                                    169 	.globl _USB_DEV_AD
                                    170 	.globl _USB_CTRL
                                    171 	.globl _USB_INT_EN
                                    172 	.globl _UEP4_T_LEN
                                    173 	.globl _UEP4_CTRL
                                    174 	.globl _UEP0_T_LEN
                                    175 	.globl _UEP0_CTRL
                                    176 	.globl _USB_RX_LEN
                                    177 	.globl _USB_MIS_ST
                                    178 	.globl _USB_INT_ST
                                    179 	.globl _USB_INT_FG
                                    180 	.globl _UEP3_T_LEN
                                    181 	.globl _UEP3_CTRL
                                    182 	.globl _UEP2_T_LEN
                                    183 	.globl _UEP2_CTRL
                                    184 	.globl _UEP1_T_LEN
                                    185 	.globl _UEP1_CTRL
                                    186 	.globl _UDEV_CTRL
                                    187 	.globl _USB_C_CTRL
                                    188 	.globl _TKEY_DATH
                                    189 	.globl _TKEY_DATL
                                    190 	.globl _TKEY_DAT
                                    191 	.globl _TKEY_CTRL
                                    192 	.globl _ADC_DATA
                                    193 	.globl _ADC_CFG
                                    194 	.globl _ADC_CTRL
                                    195 	.globl _SBAUD1
                                    196 	.globl _SBUF1
                                    197 	.globl _SCON1
                                    198 	.globl _SPI0_SETUP
                                    199 	.globl _SPI0_CK_SE
                                    200 	.globl _SPI0_CTRL
                                    201 	.globl _SPI0_DATA
                                    202 	.globl _SPI0_STAT
                                    203 	.globl _PWM_CK_SE
                                    204 	.globl _PWM_CTRL
                                    205 	.globl _PWM_DATA1
                                    206 	.globl _PWM_DATA2
                                    207 	.globl _T2CAP1H
                                    208 	.globl _T2CAP1L
                                    209 	.globl _T2CAP1
                                    210 	.globl _TH2
                                    211 	.globl _TL2
                                    212 	.globl _T2COUNT
                                    213 	.globl _RCAP2H
                                    214 	.globl _RCAP2L
                                    215 	.globl _RCAP2
                                    216 	.globl _T2MOD
                                    217 	.globl _T2CON
                                    218 	.globl _SBUF
                                    219 	.globl _SCON
                                    220 	.globl _TH1
                                    221 	.globl _TH0
                                    222 	.globl _TL1
                                    223 	.globl _TL0
                                    224 	.globl _TMOD
                                    225 	.globl _TCON
                                    226 	.globl _XBUS_AUX
                                    227 	.globl _PIN_FUNC
                                    228 	.globl _P3_DIR_PU
                                    229 	.globl _P3_MOD_OC
                                    230 	.globl _P3
                                    231 	.globl _P2
                                    232 	.globl _P1_DIR_PU
                                    233 	.globl _P1_MOD_OC
                                    234 	.globl _P1
                                    235 	.globl _ROM_CTRL
                                    236 	.globl _ROM_DATA_H
                                    237 	.globl _ROM_DATA_L
                                    238 	.globl _ROM_DATA
                                    239 	.globl _ROM_ADDR_H
                                    240 	.globl _ROM_ADDR_L
                                    241 	.globl _ROM_ADDR
                                    242 	.globl _GPIO_IE
                                    243 	.globl _IP_EX
                                    244 	.globl _IE_EX
                                    245 	.globl _IP
                                    246 	.globl _IE
                                    247 	.globl _WDOG_COUNT
                                    248 	.globl _RESET_KEEP
                                    249 	.globl _WAKE_CTRL
                                    250 	.globl _CLOCK_CFG
                                    251 	.globl _PCON
                                    252 	.globl _GLOBAL_CFG
                                    253 	.globl _SAFE_MOD
                                    254 	.globl _DPH
                                    255 	.globl _DPL
                                    256 	.globl _SP
                                    257 	.globl _B
                                    258 	.globl _ACC
                                    259 	.globl _PSW
                                    260 	.globl _u8SetupPacket
                                    261 	.globl _Ep1Buffer
                                    262 	.globl _u8TransBuff
                                    263 	.globl _u8ReceiveBuff
                                    264 	.globl _u8Ep0Buff
                                    265 	.globl _u8ControlState
                                    266 	.globl _u8sync
                                    267 	.globl _u8Config
                                    268 	.globl _u8Addr
                                    269 	.globl _u8HidNum
                                    270 	.globl _u8HidReq
                                    271 	.globl _u8Total
                                    272 	.globl _pu8Buff
                                    273 	.globl _calc
                                    274 	.globl _EP0_SendData0
                                    275 	.globl _EP0_SendData1
                                    276 	.globl _EP0_RecData0
                                    277 	.globl _EP0_RecData1
                                    278 	.globl _EP0_Stall
                                    279 	.globl _EP1_SendData
                                    280 	.globl _EP1_RecData
                                    281 	.globl _USB_InitClock
                                    282 	.globl _USB_Init
                                    283 	.globl _USB_Task
                                    284 	.globl _EP1_Out
                                    285 	.globl _EP1_In
                                    286 ;--------------------------------------------------------
                                    287 ; special function registers
                                    288 ;--------------------------------------------------------
                                    289 	.area RSEG    (ABS,DATA)
      000000                        290 	.org 0x0000
                           0000D0   291 _PSW	=	0x00d0
                           0000E0   292 _ACC	=	0x00e0
                           0000F0   293 _B	=	0x00f0
                           000081   294 _SP	=	0x0081
                           000082   295 _DPL	=	0x0082
                           000083   296 _DPH	=	0x0083
                           0000A1   297 _SAFE_MOD	=	0x00a1
                           0000B1   298 _GLOBAL_CFG	=	0x00b1
                           000087   299 _PCON	=	0x0087
                           0000B9   300 _CLOCK_CFG	=	0x00b9
                           0000A9   301 _WAKE_CTRL	=	0x00a9
                           0000FE   302 _RESET_KEEP	=	0x00fe
                           0000FF   303 _WDOG_COUNT	=	0x00ff
                           0000A8   304 _IE	=	0x00a8
                           0000B8   305 _IP	=	0x00b8
                           0000E8   306 _IE_EX	=	0x00e8
                           0000E9   307 _IP_EX	=	0x00e9
                           0000C7   308 _GPIO_IE	=	0x00c7
                           008584   309 _ROM_ADDR	=	0x8584
                           000084   310 _ROM_ADDR_L	=	0x0084
                           000085   311 _ROM_ADDR_H	=	0x0085
                           008F8E   312 _ROM_DATA	=	0x8f8e
                           00008E   313 _ROM_DATA_L	=	0x008e
                           00008F   314 _ROM_DATA_H	=	0x008f
                           000086   315 _ROM_CTRL	=	0x0086
                           000090   316 _P1	=	0x0090
                           000092   317 _P1_MOD_OC	=	0x0092
                           000093   318 _P1_DIR_PU	=	0x0093
                           0000A0   319 _P2	=	0x00a0
                           0000B0   320 _P3	=	0x00b0
                           000096   321 _P3_MOD_OC	=	0x0096
                           000097   322 _P3_DIR_PU	=	0x0097
                           0000C6   323 _PIN_FUNC	=	0x00c6
                           0000A2   324 _XBUS_AUX	=	0x00a2
                           000088   325 _TCON	=	0x0088
                           000089   326 _TMOD	=	0x0089
                           00008A   327 _TL0	=	0x008a
                           00008B   328 _TL1	=	0x008b
                           00008C   329 _TH0	=	0x008c
                           00008D   330 _TH1	=	0x008d
                           000098   331 _SCON	=	0x0098
                           000099   332 _SBUF	=	0x0099
                           0000C8   333 _T2CON	=	0x00c8
                           0000C9   334 _T2MOD	=	0x00c9
                           00CBCA   335 _RCAP2	=	0xcbca
                           0000CA   336 _RCAP2L	=	0x00ca
                           0000CB   337 _RCAP2H	=	0x00cb
                           00CDCC   338 _T2COUNT	=	0xcdcc
                           0000CC   339 _TL2	=	0x00cc
                           0000CD   340 _TH2	=	0x00cd
                           00CFCE   341 _T2CAP1	=	0xcfce
                           0000CE   342 _T2CAP1L	=	0x00ce
                           0000CF   343 _T2CAP1H	=	0x00cf
                           00009B   344 _PWM_DATA2	=	0x009b
                           00009C   345 _PWM_DATA1	=	0x009c
                           00009D   346 _PWM_CTRL	=	0x009d
                           00009E   347 _PWM_CK_SE	=	0x009e
                           0000F8   348 _SPI0_STAT	=	0x00f8
                           0000F9   349 _SPI0_DATA	=	0x00f9
                           0000FA   350 _SPI0_CTRL	=	0x00fa
                           0000FB   351 _SPI0_CK_SE	=	0x00fb
                           0000FC   352 _SPI0_SETUP	=	0x00fc
                           0000C0   353 _SCON1	=	0x00c0
                           0000C1   354 _SBUF1	=	0x00c1
                           0000C2   355 _SBAUD1	=	0x00c2
                           000080   356 _ADC_CTRL	=	0x0080
                           00009A   357 _ADC_CFG	=	0x009a
                           00009F   358 _ADC_DATA	=	0x009f
                           0000C3   359 _TKEY_CTRL	=	0x00c3
                           00C5C4   360 _TKEY_DAT	=	0xc5c4
                           0000C4   361 _TKEY_DATL	=	0x00c4
                           0000C5   362 _TKEY_DATH	=	0x00c5
                           000091   363 _USB_C_CTRL	=	0x0091
                           0000D1   364 _UDEV_CTRL	=	0x00d1
                           0000D2   365 _UEP1_CTRL	=	0x00d2
                           0000D3   366 _UEP1_T_LEN	=	0x00d3
                           0000D4   367 _UEP2_CTRL	=	0x00d4
                           0000D5   368 _UEP2_T_LEN	=	0x00d5
                           0000D6   369 _UEP3_CTRL	=	0x00d6
                           0000D7   370 _UEP3_T_LEN	=	0x00d7
                           0000D8   371 _USB_INT_FG	=	0x00d8
                           0000D9   372 _USB_INT_ST	=	0x00d9
                           0000DA   373 _USB_MIS_ST	=	0x00da
                           0000DB   374 _USB_RX_LEN	=	0x00db
                           0000DC   375 _UEP0_CTRL	=	0x00dc
                           0000DD   376 _UEP0_T_LEN	=	0x00dd
                           0000DE   377 _UEP4_CTRL	=	0x00de
                           0000DF   378 _UEP4_T_LEN	=	0x00df
                           0000E1   379 _USB_INT_EN	=	0x00e1
                           0000E2   380 _USB_CTRL	=	0x00e2
                           0000E3   381 _USB_DEV_AD	=	0x00e3
                           00E5E4   382 _UEP2_DMA	=	0xe5e4
                           0000E4   383 _UEP2_DMA_L	=	0x00e4
                           0000E5   384 _UEP2_DMA_H	=	0x00e5
                           00E7E6   385 _UEP3_DMA	=	0xe7e6
                           0000E6   386 _UEP3_DMA_L	=	0x00e6
                           0000E7   387 _UEP3_DMA_H	=	0x00e7
                           0000EA   388 _UEP4_1_MOD	=	0x00ea
                           0000EB   389 _UEP2_3_MOD	=	0x00eb
                           00EDEC   390 _UEP0_DMA	=	0xedec
                           0000EC   391 _UEP0_DMA_L	=	0x00ec
                           0000ED   392 _UEP0_DMA_H	=	0x00ed
                           00EFEE   393 _UEP1_DMA	=	0xefee
                           0000EE   394 _UEP1_DMA_L	=	0x00ee
                           0000EF   395 _UEP1_DMA_H	=	0x00ef
                                    396 ;--------------------------------------------------------
                                    397 ; special function bits
                                    398 ;--------------------------------------------------------
                                    399 	.area RSEG    (ABS,DATA)
      000000                        400 	.org 0x0000
                           0000D7   401 _CY	=	0x00d7
                           0000D6   402 _AC	=	0x00d6
                           0000D5   403 _F0	=	0x00d5
                           0000D4   404 _RS1	=	0x00d4
                           0000D3   405 _RS0	=	0x00d3
                           0000D2   406 _OV	=	0x00d2
                           0000D1   407 _F1	=	0x00d1
                           0000D0   408 _P	=	0x00d0
                           0000AF   409 _EA	=	0x00af
                           0000AE   410 _E_DIS	=	0x00ae
                           0000AD   411 _ET2	=	0x00ad
                           0000AC   412 _ES	=	0x00ac
                           0000AB   413 _ET1	=	0x00ab
                           0000AA   414 _EX1	=	0x00aa
                           0000A9   415 _ET0	=	0x00a9
                           0000A8   416 _EX0	=	0x00a8
                           0000BF   417 _PH_FLAG	=	0x00bf
                           0000BE   418 _PL_FLAG	=	0x00be
                           0000BD   419 _PT2	=	0x00bd
                           0000BC   420 _PS	=	0x00bc
                           0000BB   421 _PT1	=	0x00bb
                           0000BA   422 _PX1	=	0x00ba
                           0000B9   423 _PT0	=	0x00b9
                           0000B8   424 _PX0	=	0x00b8
                           0000EF   425 _IE_WDOG	=	0x00ef
                           0000EE   426 _IE_GPIO	=	0x00ee
                           0000ED   427 _IE_PWMX	=	0x00ed
                           0000EC   428 _IE_UART1	=	0x00ec
                           0000EB   429 _IE_ADC	=	0x00eb
                           0000EA   430 _IE_USB	=	0x00ea
                           0000E9   431 _IE_TKEY	=	0x00e9
                           0000E8   432 _IE_SPI0	=	0x00e8
                           000097   433 _SCK	=	0x0097
                           000097   434 _TXD1	=	0x0097
                           000097   435 _TIN5	=	0x0097
                           000096   436 _MISO	=	0x0096
                           000096   437 _RXD1	=	0x0096
                           000096   438 _TIN4	=	0x0096
                           000095   439 _MOSI	=	0x0095
                           000095   440 _PWM1	=	0x0095
                           000095   441 _TIN3	=	0x0095
                           000095   442 _UCC2	=	0x0095
                           000095   443 _AIN2	=	0x0095
                           000094   444 _T2_	=	0x0094
                           000094   445 _CAP1_	=	0x0094
                           000094   446 _SCS	=	0x0094
                           000094   447 _TIN2	=	0x0094
                           000094   448 _UCC1	=	0x0094
                           000094   449 _AIN1	=	0x0094
                           000093   450 _TXD_	=	0x0093
                           000092   451 _RXD_	=	0x0092
                           000091   452 _T2EX	=	0x0091
                           000091   453 _CAP2	=	0x0091
                           000091   454 _TIN1	=	0x0091
                           000091   455 _VBUS2	=	0x0091
                           000091   456 _AIN0	=	0x0091
                           000090   457 _T2	=	0x0090
                           000090   458 _CAP1	=	0x0090
                           000090   459 _TIN0	=	0x0090
                           0000B7   460 _UDM	=	0x00b7
                           0000B6   461 _UDP	=	0x00b6
                           0000B5   462 _T1	=	0x00b5
                           0000B4   463 _PWM2	=	0x00b4
                           0000B4   464 _RXD1_	=	0x00b4
                           0000B4   465 _T0	=	0x00b4
                           0000B3   466 _INT1	=	0x00b3
                           0000B2   467 _TXD1_	=	0x00b2
                           0000B2   468 _INT0	=	0x00b2
                           0000B2   469 _VBUS1	=	0x00b2
                           0000B2   470 _AIN3	=	0x00b2
                           0000B1   471 _PWM2_	=	0x00b1
                           0000B1   472 _TXD	=	0x00b1
                           0000B0   473 _PWM1_	=	0x00b0
                           0000B0   474 _RXD	=	0x00b0
                           00008F   475 _TF1	=	0x008f
                           00008E   476 _TR1	=	0x008e
                           00008D   477 _TF0	=	0x008d
                           00008C   478 _TR0	=	0x008c
                           00008B   479 _IE1	=	0x008b
                           00008A   480 _IT1	=	0x008a
                           000089   481 _IE0	=	0x0089
                           000088   482 _IT0	=	0x0088
                           00009F   483 _SM0	=	0x009f
                           00009E   484 _SM1	=	0x009e
                           00009D   485 _SM2	=	0x009d
                           00009C   486 _REN	=	0x009c
                           00009B   487 _TB8	=	0x009b
                           00009A   488 _RB8	=	0x009a
                           000099   489 _TI	=	0x0099
                           000098   490 _RI	=	0x0098
                           0000CF   491 _TF2	=	0x00cf
                           0000CF   492 _CAP1F	=	0x00cf
                           0000CE   493 _EXF2	=	0x00ce
                           0000CD   494 _RCLK	=	0x00cd
                           0000CC   495 _TCLK	=	0x00cc
                           0000CB   496 _EXEN2	=	0x00cb
                           0000CA   497 _TR2	=	0x00ca
                           0000C9   498 _C_T2	=	0x00c9
                           0000C8   499 _CP_RL2	=	0x00c8
                           0000FF   500 _S0_FST_ACT	=	0x00ff
                           0000FE   501 _S0_IF_OV	=	0x00fe
                           0000FD   502 _S0_IF_FIRST	=	0x00fd
                           0000FC   503 _S0_IF_BYTE	=	0x00fc
                           0000FB   504 _S0_FREE	=	0x00fb
                           0000FA   505 _S0_T_FIFO	=	0x00fa
                           0000F8   506 _S0_R_FIFO	=	0x00f8
                           0000C7   507 _U1SM0	=	0x00c7
                           0000C5   508 _U1SMOD	=	0x00c5
                           0000C4   509 _U1REN	=	0x00c4
                           0000C3   510 _U1TB8	=	0x00c3
                           0000C2   511 _U1RB8	=	0x00c2
                           0000C1   512 _U1TI	=	0x00c1
                           0000C0   513 _U1RI	=	0x00c0
                           000087   514 _CMPO	=	0x0087
                           000086   515 _CMP_IF	=	0x0086
                           000085   516 _ADC_IF	=	0x0085
                           000084   517 _ADC_START	=	0x0084
                           000083   518 _CMP_CHAN	=	0x0083
                           000081   519 _ADC_CHAN1	=	0x0081
                           000080   520 _ADC_CHAN0	=	0x0080
                           0000DF   521 _U_IS_NAK	=	0x00df
                           0000DE   522 _U_TOG_OK	=	0x00de
                           0000DD   523 _U_SIE_FREE	=	0x00dd
                           0000DC   524 _UIF_FIFO_OV	=	0x00dc
                           0000DA   525 _UIF_SUSPEND	=	0x00da
                           0000D9   526 _UIF_TRANSFER	=	0x00d9
                           0000D8   527 _UIF_BUS_RST	=	0x00d8
                           000095   528 _P1_5	=	0x0095
                           0000B2   529 _P3_2	=	0x00b2
                           000097   530 _P1_7	=	0x0097
                           000094   531 _P1_4	=	0x0094
                                    532 ;--------------------------------------------------------
                                    533 ; overlayable register banks
                                    534 ;--------------------------------------------------------
                                    535 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        536 	.ds 8
                                    537 ;--------------------------------------------------------
                                    538 ; internal ram data
                                    539 ;--------------------------------------------------------
                                    540 	.area DSEG    (DATA)
      00003E                        541 _pu8Buff::
      00003E                        542 	.ds 3
      000041                        543 _u8Total::
      000041                        544 	.ds 1
      000042                        545 _u8HidReq::
      000042                        546 	.ds 1
      000043                        547 _u8HidNum::
      000043                        548 	.ds 1
      000044                        549 _u8Addr::
      000044                        550 	.ds 1
      000045                        551 _u8Config::
      000045                        552 	.ds 1
      000046                        553 _u8sync::
      000046                        554 	.ds 1
      000047                        555 _u8ControlState::
      000047                        556 	.ds 1
                                    557 ;--------------------------------------------------------
                                    558 ; overlayable items in internal ram 
                                    559 ;--------------------------------------------------------
                                    560 	.area	OSEG    (OVR,DATA)
      000048                        561 _calc_i_65536_47:
      000048                        562 	.ds 4
                                    563 	.area	OSEG    (OVR,DATA)
      000048                        564 _EP0_SendData0_PARM_2:
      000048                        565 	.ds 1
      000049                        566 _EP0_SendData0_buff_65536_89:
      000049                        567 	.ds 3
                                    568 	.area	OSEG    (OVR,DATA)
      000048                        569 _EP0_SendData1_PARM_2:
      000048                        570 	.ds 1
      000049                        571 _EP0_SendData1_buff_65536_97:
      000049                        572 	.ds 3
                                    573 	.area	OSEG    (OVR,DATA)
      000048                        574 _EP0_RecData0_PARM_2:
      000048                        575 	.ds 1
                                    576 	.area	OSEG    (OVR,DATA)
      000048                        577 _EP0_RecData1_PARM_2:
      000048                        578 	.ds 1
                                    579 	.area	OSEG    (OVR,DATA)
                                    580 	.area	OSEG    (OVR,DATA)
                                    581 	.area	OSEG    (OVR,DATA)
                                    582 ;--------------------------------------------------------
                                    583 ; indirectly addressable internal ram data
                                    584 ;--------------------------------------------------------
                                    585 	.area ISEG    (DATA)
                                    586 ;--------------------------------------------------------
                                    587 ; absolute internal ram data
                                    588 ;--------------------------------------------------------
                                    589 	.area IABS    (ABS,DATA)
                                    590 	.area IABS    (ABS,DATA)
                                    591 ;--------------------------------------------------------
                                    592 ; bit data
                                    593 ;--------------------------------------------------------
                                    594 	.area BSEG    (BIT)
                                    595 ;--------------------------------------------------------
                                    596 ; paged external ram data
                                    597 ;--------------------------------------------------------
                                    598 	.area PSEG    (PAG,XDATA)
                                    599 ;--------------------------------------------------------
                                    600 ; external ram data
                                    601 ;--------------------------------------------------------
                                    602 	.area XSEG    (XDATA)
      000009                        603 _u8Ep0Buff::
      000009                        604 	.ds 64
      000049                        605 _u8ReceiveBuff::
      000049                        606 	.ds 150
      0000DF                        607 _u8TransBuff::
      0000DF                        608 	.ds 150
      000175                        609 _Ep1Buffer::
      000175                        610 	.ds 128
      0001F5                        611 _u8SetupPacket::
      0001F5                        612 	.ds 8
                                    613 ;--------------------------------------------------------
                                    614 ; absolute external ram data
                                    615 ;--------------------------------------------------------
                                    616 	.area XABS    (ABS,XDATA)
                                    617 ;--------------------------------------------------------
                                    618 ; external initialized ram data
                                    619 ;--------------------------------------------------------
                                    620 	.area XISEG   (XDATA)
                                    621 	.area HOME    (CODE)
                                    622 	.area GSINIT0 (CODE)
                                    623 	.area GSINIT1 (CODE)
                                    624 	.area GSINIT2 (CODE)
                                    625 	.area GSINIT3 (CODE)
                                    626 	.area GSINIT4 (CODE)
                                    627 	.area GSINIT5 (CODE)
                                    628 	.area GSINIT  (CODE)
                                    629 	.area GSFINAL (CODE)
                                    630 	.area CSEG    (CODE)
                                    631 ;--------------------------------------------------------
                                    632 ; global & static initialisations
                                    633 ;--------------------------------------------------------
                                    634 	.area HOME    (CODE)
                                    635 	.area GSINIT  (CODE)
                                    636 	.area GSFINAL (CODE)
                                    637 	.area GSINIT  (CODE)
                                    638 ;	usb.c:224: uint8_t u8HidReq = 0;
      000063 75 42 00         [24]  639 	mov	_u8HidReq,#0x00
                                    640 ;	usb.c:225: uint8_t u8HidNum = 0;
      000066 75 43 00         [24]  641 	mov	_u8HidNum,#0x00
                                    642 ;	usb.c:227: uint8_t u8Addr = 0;
      000069 75 44 00         [24]  643 	mov	_u8Addr,#0x00
                                    644 ;	usb.c:228: uint8_t u8Config = 0;
      00006C 75 45 00         [24]  645 	mov	_u8Config,#0x00
                                    646 ;	usb.c:230: uint8_t u8sync = 0;
      00006F 75 46 00         [24]  647 	mov	_u8sync,#0x00
                                    648 ;	usb.c:236: uint8_t u8ControlState = SETUP_STATE;
      000072 75 47 00         [24]  649 	mov	_u8ControlState,#0x00
                                    650 ;--------------------------------------------------------
                                    651 ; Home
                                    652 ;--------------------------------------------------------
                                    653 	.area HOME    (CODE)
                                    654 	.area HOME    (CODE)
                                    655 ;--------------------------------------------------------
                                    656 ; code
                                    657 ;--------------------------------------------------------
                                    658 	.area CSEG    (CODE)
                                    659 ;------------------------------------------------------------
                                    660 ;Allocation info for local variables in function 'calc'
                                    661 ;------------------------------------------------------------
                                    662 ;res                       Allocated to registers r4 r5 r6 r7 
                                    663 ;i                         Allocated with name '_calc_i_65536_47'
                                    664 ;------------------------------------------------------------
                                    665 ;	usb.c:179: uint32_t calc(void)
                                    666 ;	-----------------------------------------
                                    667 ;	 function calc
                                    668 ;	-----------------------------------------
      001A67                        669 _calc:
                           000007   670 	ar7 = 0x07
                           000006   671 	ar6 = 0x06
                           000005   672 	ar5 = 0x05
                           000004   673 	ar4 = 0x04
                           000003   674 	ar3 = 0x03
                           000002   675 	ar2 = 0x02
                           000001   676 	ar1 = 0x01
                           000000   677 	ar0 = 0x00
                                    678 ;	usb.c:183: res = 0;
                                    679 ;	usb.c:184: for (i = 0; i < sizeof(deviceDescriptor); ++i) {
      001A67 E4               [12]  680 	clr	a
      001A68 FC               [12]  681 	mov	r4,a
      001A69 FD               [12]  682 	mov	r5,a
      001A6A FE               [12]  683 	mov	r6,a
      001A6B FF               [12]  684 	mov	r7,a
      001A6C F5 48            [12]  685 	mov	_calc_i_65536_47,a
      001A6E F5 49            [12]  686 	mov	(_calc_i_65536_47 + 1),a
      001A70 F5 4A            [12]  687 	mov	(_calc_i_65536_47 + 2),a
      001A72 F5 4B            [12]  688 	mov	(_calc_i_65536_47 + 3),a
      001A74                        689 00108$:
                                    690 ;	usb.c:185: res += deviceDescriptor[i];
      001A74 E5 48            [12]  691 	mov	a,_calc_i_65536_47
      001A76 24 01            [12]  692 	add	a,#_deviceDescriptor
      001A78 F5 82            [12]  693 	mov	dpl,a
      001A7A E5 49            [12]  694 	mov	a,(_calc_i_65536_47 + 1)
      001A7C 34 26            [12]  695 	addc	a,#(_deviceDescriptor >> 8)
      001A7E F5 83            [12]  696 	mov	dph,a
      001A80 E4               [12]  697 	clr	a
      001A81 93               [24]  698 	movc	a,@a+dptr
      001A82 F8               [12]  699 	mov	r0,a
      001A83 E4               [12]  700 	clr	a
      001A84 F9               [12]  701 	mov	r1,a
      001A85 FA               [12]  702 	mov	r2,a
      001A86 FB               [12]  703 	mov	r3,a
      001A87 E8               [12]  704 	mov	a,r0
      001A88 2C               [12]  705 	add	a,r4
      001A89 FC               [12]  706 	mov	r4,a
      001A8A E9               [12]  707 	mov	a,r1
      001A8B 3D               [12]  708 	addc	a,r5
      001A8C FD               [12]  709 	mov	r5,a
      001A8D EA               [12]  710 	mov	a,r2
      001A8E 3E               [12]  711 	addc	a,r6
      001A8F FE               [12]  712 	mov	r6,a
      001A90 EB               [12]  713 	mov	a,r3
      001A91 3F               [12]  714 	addc	a,r7
      001A92 FF               [12]  715 	mov	r7,a
                                    716 ;	usb.c:184: for (i = 0; i < sizeof(deviceDescriptor); ++i) {
      001A93 05 48            [12]  717 	inc	_calc_i_65536_47
      001A95 E4               [12]  718 	clr	a
      001A96 B5 48 0C         [24]  719 	cjne	a,_calc_i_65536_47,00187$
      001A99 05 49            [12]  720 	inc	(_calc_i_65536_47 + 1)
      001A9B B5 49 07         [24]  721 	cjne	a,(_calc_i_65536_47 + 1),00187$
      001A9E 05 4A            [12]  722 	inc	(_calc_i_65536_47 + 2)
      001AA0 B5 4A 02         [24]  723 	cjne	a,(_calc_i_65536_47 + 2),00187$
      001AA3 05 4B            [12]  724 	inc	(_calc_i_65536_47 + 3)
      001AA5                        725 00187$:
      001AA5 C3               [12]  726 	clr	c
      001AA6 E5 48            [12]  727 	mov	a,_calc_i_65536_47
      001AA8 94 12            [12]  728 	subb	a,#0x12
      001AAA E5 49            [12]  729 	mov	a,(_calc_i_65536_47 + 1)
      001AAC 94 00            [12]  730 	subb	a,#0x00
      001AAE E5 4A            [12]  731 	mov	a,(_calc_i_65536_47 + 2)
      001AB0 94 00            [12]  732 	subb	a,#0x00
      001AB2 E5 4B            [12]  733 	mov	a,(_calc_i_65536_47 + 3)
      001AB4 94 00            [12]  734 	subb	a,#0x00
      001AB6 40 BC            [24]  735 	jc	00108$
                                    736 ;	usb.c:188: for (i = 0; i < sizeof(HID_DeviceReportDescriptor); ++i) {
      001AB8 E4               [12]  737 	clr	a
      001AB9 F5 48            [12]  738 	mov	_calc_i_65536_47,a
      001ABB F5 49            [12]  739 	mov	(_calc_i_65536_47 + 1),a
      001ABD F5 4A            [12]  740 	mov	(_calc_i_65536_47 + 2),a
      001ABF F5 4B            [12]  741 	mov	(_calc_i_65536_47 + 3),a
      001AC1                        742 00110$:
                                    743 ;	usb.c:189: res += HID_DeviceReportDescriptor[i];
      001AC1 E5 48            [12]  744 	mov	a,_calc_i_65536_47
      001AC3 24 13            [12]  745 	add	a,#_HID_DeviceReportDescriptor
      001AC5 F5 82            [12]  746 	mov	dpl,a
      001AC7 E5 49            [12]  747 	mov	a,(_calc_i_65536_47 + 1)
      001AC9 34 26            [12]  748 	addc	a,#(_HID_DeviceReportDescriptor >> 8)
      001ACB F5 83            [12]  749 	mov	dph,a
      001ACD E4               [12]  750 	clr	a
      001ACE 93               [24]  751 	movc	a,@a+dptr
      001ACF F8               [12]  752 	mov	r0,a
      001AD0 E4               [12]  753 	clr	a
      001AD1 F9               [12]  754 	mov	r1,a
      001AD2 FA               [12]  755 	mov	r2,a
      001AD3 FB               [12]  756 	mov	r3,a
      001AD4 E8               [12]  757 	mov	a,r0
      001AD5 2C               [12]  758 	add	a,r4
      001AD6 FC               [12]  759 	mov	r4,a
      001AD7 E9               [12]  760 	mov	a,r1
      001AD8 3D               [12]  761 	addc	a,r5
      001AD9 FD               [12]  762 	mov	r5,a
      001ADA EA               [12]  763 	mov	a,r2
      001ADB 3E               [12]  764 	addc	a,r6
      001ADC FE               [12]  765 	mov	r6,a
      001ADD EB               [12]  766 	mov	a,r3
      001ADE 3F               [12]  767 	addc	a,r7
      001ADF FF               [12]  768 	mov	r7,a
                                    769 ;	usb.c:188: for (i = 0; i < sizeof(HID_DeviceReportDescriptor); ++i) {
      001AE0 05 48            [12]  770 	inc	_calc_i_65536_47
      001AE2 E4               [12]  771 	clr	a
      001AE3 B5 48 0C         [24]  772 	cjne	a,_calc_i_65536_47,00189$
      001AE6 05 49            [12]  773 	inc	(_calc_i_65536_47 + 1)
      001AE8 B5 49 07         [24]  774 	cjne	a,(_calc_i_65536_47 + 1),00189$
      001AEB 05 4A            [12]  775 	inc	(_calc_i_65536_47 + 2)
      001AED B5 4A 02         [24]  776 	cjne	a,(_calc_i_65536_47 + 2),00189$
      001AF0 05 4B            [12]  777 	inc	(_calc_i_65536_47 + 3)
      001AF2                        778 00189$:
      001AF2 C3               [12]  779 	clr	c
      001AF3 E5 48            [12]  780 	mov	a,_calc_i_65536_47
      001AF5 94 1C            [12]  781 	subb	a,#0x1c
      001AF7 E5 49            [12]  782 	mov	a,(_calc_i_65536_47 + 1)
      001AF9 94 00            [12]  783 	subb	a,#0x00
      001AFB E5 4A            [12]  784 	mov	a,(_calc_i_65536_47 + 2)
      001AFD 94 00            [12]  785 	subb	a,#0x00
      001AFF E5 4B            [12]  786 	mov	a,(_calc_i_65536_47 + 3)
      001B01 94 00            [12]  787 	subb	a,#0x00
      001B03 40 BC            [24]  788 	jc	00110$
                                    789 ;	usb.c:192: for (i = 0; i < sizeof(configDescriptor); ++i) {
      001B05 E4               [12]  790 	clr	a
      001B06 F5 48            [12]  791 	mov	_calc_i_65536_47,a
      001B08 F5 49            [12]  792 	mov	(_calc_i_65536_47 + 1),a
      001B0A F5 4A            [12]  793 	mov	(_calc_i_65536_47 + 2),a
      001B0C F5 4B            [12]  794 	mov	(_calc_i_65536_47 + 3),a
      001B0E                        795 00112$:
                                    796 ;	usb.c:193: res += configDescriptor[i];
      001B0E E5 48            [12]  797 	mov	a,_calc_i_65536_47
      001B10 24 2F            [12]  798 	add	a,#_configDescriptor
      001B12 F5 82            [12]  799 	mov	dpl,a
      001B14 E5 49            [12]  800 	mov	a,(_calc_i_65536_47 + 1)
      001B16 34 26            [12]  801 	addc	a,#(_configDescriptor >> 8)
      001B18 F5 83            [12]  802 	mov	dph,a
      001B1A E4               [12]  803 	clr	a
      001B1B 93               [24]  804 	movc	a,@a+dptr
      001B1C F8               [12]  805 	mov	r0,a
      001B1D E4               [12]  806 	clr	a
      001B1E F9               [12]  807 	mov	r1,a
      001B1F FA               [12]  808 	mov	r2,a
      001B20 FB               [12]  809 	mov	r3,a
      001B21 E8               [12]  810 	mov	a,r0
      001B22 2C               [12]  811 	add	a,r4
      001B23 FC               [12]  812 	mov	r4,a
      001B24 E9               [12]  813 	mov	a,r1
      001B25 3D               [12]  814 	addc	a,r5
      001B26 FD               [12]  815 	mov	r5,a
      001B27 EA               [12]  816 	mov	a,r2
      001B28 3E               [12]  817 	addc	a,r6
      001B29 FE               [12]  818 	mov	r6,a
      001B2A EB               [12]  819 	mov	a,r3
      001B2B 3F               [12]  820 	addc	a,r7
      001B2C FF               [12]  821 	mov	r7,a
                                    822 ;	usb.c:192: for (i = 0; i < sizeof(configDescriptor); ++i) {
      001B2D 05 48            [12]  823 	inc	_calc_i_65536_47
      001B2F E4               [12]  824 	clr	a
      001B30 B5 48 0C         [24]  825 	cjne	a,_calc_i_65536_47,00191$
      001B33 05 49            [12]  826 	inc	(_calc_i_65536_47 + 1)
      001B35 B5 49 07         [24]  827 	cjne	a,(_calc_i_65536_47 + 1),00191$
      001B38 05 4A            [12]  828 	inc	(_calc_i_65536_47 + 2)
      001B3A B5 4A 02         [24]  829 	cjne	a,(_calc_i_65536_47 + 2),00191$
      001B3D 05 4B            [12]  830 	inc	(_calc_i_65536_47 + 3)
      001B3F                        831 00191$:
      001B3F C3               [12]  832 	clr	c
      001B40 E5 48            [12]  833 	mov	a,_calc_i_65536_47
      001B42 94 29            [12]  834 	subb	a,#0x29
      001B44 E5 49            [12]  835 	mov	a,(_calc_i_65536_47 + 1)
      001B46 94 00            [12]  836 	subb	a,#0x00
      001B48 E5 4A            [12]  837 	mov	a,(_calc_i_65536_47 + 2)
      001B4A 94 00            [12]  838 	subb	a,#0x00
      001B4C E5 4B            [12]  839 	mov	a,(_calc_i_65536_47 + 3)
      001B4E 94 00            [12]  840 	subb	a,#0x00
      001B50 40 BC            [24]  841 	jc	00112$
                                    842 ;	usb.c:196: for (i = 0; i < sizeof(stringDescriptor); ++i) {
      001B52 E4               [12]  843 	clr	a
      001B53 F5 48            [12]  844 	mov	_calc_i_65536_47,a
      001B55 F5 49            [12]  845 	mov	(_calc_i_65536_47 + 1),a
      001B57 F5 4A            [12]  846 	mov	(_calc_i_65536_47 + 2),a
      001B59 F5 4B            [12]  847 	mov	(_calc_i_65536_47 + 3),a
      001B5B                        848 00114$:
                                    849 ;	usb.c:197: res += stringDescriptor[i];
      001B5B E5 48            [12]  850 	mov	a,_calc_i_65536_47
      001B5D 24 58            [12]  851 	add	a,#_stringDescriptor
      001B5F F5 82            [12]  852 	mov	dpl,a
      001B61 E5 49            [12]  853 	mov	a,(_calc_i_65536_47 + 1)
      001B63 34 26            [12]  854 	addc	a,#(_stringDescriptor >> 8)
      001B65 F5 83            [12]  855 	mov	dph,a
      001B67 E4               [12]  856 	clr	a
      001B68 93               [24]  857 	movc	a,@a+dptr
      001B69 F8               [12]  858 	mov	r0,a
      001B6A E4               [12]  859 	clr	a
      001B6B F9               [12]  860 	mov	r1,a
      001B6C FA               [12]  861 	mov	r2,a
      001B6D FB               [12]  862 	mov	r3,a
      001B6E E8               [12]  863 	mov	a,r0
      001B6F 2C               [12]  864 	add	a,r4
      001B70 FC               [12]  865 	mov	r4,a
      001B71 E9               [12]  866 	mov	a,r1
      001B72 3D               [12]  867 	addc	a,r5
      001B73 FD               [12]  868 	mov	r5,a
      001B74 EA               [12]  869 	mov	a,r2
      001B75 3E               [12]  870 	addc	a,r6
      001B76 FE               [12]  871 	mov	r6,a
      001B77 EB               [12]  872 	mov	a,r3
      001B78 3F               [12]  873 	addc	a,r7
      001B79 FF               [12]  874 	mov	r7,a
                                    875 ;	usb.c:196: for (i = 0; i < sizeof(stringDescriptor); ++i) {
      001B7A 05 48            [12]  876 	inc	_calc_i_65536_47
      001B7C E4               [12]  877 	clr	a
      001B7D B5 48 0C         [24]  878 	cjne	a,_calc_i_65536_47,00193$
      001B80 05 49            [12]  879 	inc	(_calc_i_65536_47 + 1)
      001B82 B5 49 07         [24]  880 	cjne	a,(_calc_i_65536_47 + 1),00193$
      001B85 05 4A            [12]  881 	inc	(_calc_i_65536_47 + 2)
      001B87 B5 4A 02         [24]  882 	cjne	a,(_calc_i_65536_47 + 2),00193$
      001B8A 05 4B            [12]  883 	inc	(_calc_i_65536_47 + 3)
      001B8C                        884 00193$:
      001B8C C3               [12]  885 	clr	c
      001B8D E5 48            [12]  886 	mov	a,_calc_i_65536_47
      001B8F 94 04            [12]  887 	subb	a,#0x04
      001B91 E5 49            [12]  888 	mov	a,(_calc_i_65536_47 + 1)
      001B93 94 00            [12]  889 	subb	a,#0x00
      001B95 E5 4A            [12]  890 	mov	a,(_calc_i_65536_47 + 2)
      001B97 94 00            [12]  891 	subb	a,#0x00
      001B99 E5 4B            [12]  892 	mov	a,(_calc_i_65536_47 + 3)
      001B9B 94 00            [12]  893 	subb	a,#0x00
      001B9D 40 BC            [24]  894 	jc	00114$
                                    895 ;	usb.c:200: for (i = 0; i < sizeof(manufacturerDescriptor); ++i) {
      001B9F E4               [12]  896 	clr	a
      001BA0 F5 48            [12]  897 	mov	_calc_i_65536_47,a
      001BA2 F5 49            [12]  898 	mov	(_calc_i_65536_47 + 1),a
      001BA4 F5 4A            [12]  899 	mov	(_calc_i_65536_47 + 2),a
      001BA6 F5 4B            [12]  900 	mov	(_calc_i_65536_47 + 3),a
      001BA8                        901 00116$:
                                    902 ;	usb.c:201: res += manufacturerDescriptor[i];
      001BA8 E5 48            [12]  903 	mov	a,_calc_i_65536_47
      001BAA 24 5C            [12]  904 	add	a,#_manufacturerDescriptor
      001BAC F5 82            [12]  905 	mov	dpl,a
      001BAE E5 49            [12]  906 	mov	a,(_calc_i_65536_47 + 1)
      001BB0 34 26            [12]  907 	addc	a,#(_manufacturerDescriptor >> 8)
      001BB2 F5 83            [12]  908 	mov	dph,a
      001BB4 E4               [12]  909 	clr	a
      001BB5 93               [24]  910 	movc	a,@a+dptr
      001BB6 F8               [12]  911 	mov	r0,a
      001BB7 E4               [12]  912 	clr	a
      001BB8 F9               [12]  913 	mov	r1,a
      001BB9 FA               [12]  914 	mov	r2,a
      001BBA FB               [12]  915 	mov	r3,a
      001BBB E8               [12]  916 	mov	a,r0
      001BBC 2C               [12]  917 	add	a,r4
      001BBD FC               [12]  918 	mov	r4,a
      001BBE E9               [12]  919 	mov	a,r1
      001BBF 3D               [12]  920 	addc	a,r5
      001BC0 FD               [12]  921 	mov	r5,a
      001BC1 EA               [12]  922 	mov	a,r2
      001BC2 3E               [12]  923 	addc	a,r6
      001BC3 FE               [12]  924 	mov	r6,a
      001BC4 EB               [12]  925 	mov	a,r3
      001BC5 3F               [12]  926 	addc	a,r7
      001BC6 FF               [12]  927 	mov	r7,a
                                    928 ;	usb.c:200: for (i = 0; i < sizeof(manufacturerDescriptor); ++i) {
      001BC7 05 48            [12]  929 	inc	_calc_i_65536_47
      001BC9 E4               [12]  930 	clr	a
      001BCA B5 48 0C         [24]  931 	cjne	a,_calc_i_65536_47,00195$
      001BCD 05 49            [12]  932 	inc	(_calc_i_65536_47 + 1)
      001BCF B5 49 07         [24]  933 	cjne	a,(_calc_i_65536_47 + 1),00195$
      001BD2 05 4A            [12]  934 	inc	(_calc_i_65536_47 + 2)
      001BD4 B5 4A 02         [24]  935 	cjne	a,(_calc_i_65536_47 + 2),00195$
      001BD7 05 4B            [12]  936 	inc	(_calc_i_65536_47 + 3)
      001BD9                        937 00195$:
      001BD9 C3               [12]  938 	clr	c
      001BDA E5 48            [12]  939 	mov	a,_calc_i_65536_47
      001BDC 94 26            [12]  940 	subb	a,#0x26
      001BDE E5 49            [12]  941 	mov	a,(_calc_i_65536_47 + 1)
      001BE0 94 00            [12]  942 	subb	a,#0x00
      001BE2 E5 4A            [12]  943 	mov	a,(_calc_i_65536_47 + 2)
      001BE4 94 00            [12]  944 	subb	a,#0x00
      001BE6 E5 4B            [12]  945 	mov	a,(_calc_i_65536_47 + 3)
      001BE8 94 00            [12]  946 	subb	a,#0x00
      001BEA 40 BC            [24]  947 	jc	00116$
                                    948 ;	usb.c:204: for (i = 0; i < sizeof(productDescriptor); ++i) {
      001BEC E4               [12]  949 	clr	a
      001BED F5 48            [12]  950 	mov	_calc_i_65536_47,a
      001BEF F5 49            [12]  951 	mov	(_calc_i_65536_47 + 1),a
      001BF1 F5 4A            [12]  952 	mov	(_calc_i_65536_47 + 2),a
      001BF3 F5 4B            [12]  953 	mov	(_calc_i_65536_47 + 3),a
      001BF5                        954 00118$:
                                    955 ;	usb.c:205: res += productDescriptor[i];
      001BF5 E5 48            [12]  956 	mov	a,_calc_i_65536_47
      001BF7 24 82            [12]  957 	add	a,#_productDescriptor
      001BF9 F5 82            [12]  958 	mov	dpl,a
      001BFB E5 49            [12]  959 	mov	a,(_calc_i_65536_47 + 1)
      001BFD 34 26            [12]  960 	addc	a,#(_productDescriptor >> 8)
      001BFF F5 83            [12]  961 	mov	dph,a
      001C01 E4               [12]  962 	clr	a
      001C02 93               [24]  963 	movc	a,@a+dptr
      001C03 F8               [12]  964 	mov	r0,a
      001C04 E4               [12]  965 	clr	a
      001C05 F9               [12]  966 	mov	r1,a
      001C06 FA               [12]  967 	mov	r2,a
      001C07 FB               [12]  968 	mov	r3,a
      001C08 E8               [12]  969 	mov	a,r0
      001C09 2C               [12]  970 	add	a,r4
      001C0A FC               [12]  971 	mov	r4,a
      001C0B E9               [12]  972 	mov	a,r1
      001C0C 3D               [12]  973 	addc	a,r5
      001C0D FD               [12]  974 	mov	r5,a
      001C0E EA               [12]  975 	mov	a,r2
      001C0F 3E               [12]  976 	addc	a,r6
      001C10 FE               [12]  977 	mov	r6,a
      001C11 EB               [12]  978 	mov	a,r3
      001C12 3F               [12]  979 	addc	a,r7
      001C13 FF               [12]  980 	mov	r7,a
                                    981 ;	usb.c:204: for (i = 0; i < sizeof(productDescriptor); ++i) {
      001C14 05 48            [12]  982 	inc	_calc_i_65536_47
      001C16 E4               [12]  983 	clr	a
      001C17 B5 48 0C         [24]  984 	cjne	a,_calc_i_65536_47,00197$
      001C1A 05 49            [12]  985 	inc	(_calc_i_65536_47 + 1)
      001C1C B5 49 07         [24]  986 	cjne	a,(_calc_i_65536_47 + 1),00197$
      001C1F 05 4A            [12]  987 	inc	(_calc_i_65536_47 + 2)
      001C21 B5 4A 02         [24]  988 	cjne	a,(_calc_i_65536_47 + 2),00197$
      001C24 05 4B            [12]  989 	inc	(_calc_i_65536_47 + 3)
      001C26                        990 00197$:
      001C26 C3               [12]  991 	clr	c
      001C27 E5 48            [12]  992 	mov	a,_calc_i_65536_47
      001C29 94 14            [12]  993 	subb	a,#0x14
      001C2B E5 49            [12]  994 	mov	a,(_calc_i_65536_47 + 1)
      001C2D 94 00            [12]  995 	subb	a,#0x00
      001C2F E5 4A            [12]  996 	mov	a,(_calc_i_65536_47 + 2)
      001C31 94 00            [12]  997 	subb	a,#0x00
      001C33 E5 4B            [12]  998 	mov	a,(_calc_i_65536_47 + 3)
      001C35 94 00            [12]  999 	subb	a,#0x00
      001C37 40 BC            [24] 1000 	jc	00118$
                                   1001 ;	usb.c:208: for (i = 0; i < sizeof(serialDescriptor); ++i) {
      001C39 E4               [12] 1002 	clr	a
      001C3A F5 48            [12] 1003 	mov	_calc_i_65536_47,a
      001C3C F5 49            [12] 1004 	mov	(_calc_i_65536_47 + 1),a
      001C3E F5 4A            [12] 1005 	mov	(_calc_i_65536_47 + 2),a
      001C40 F5 4B            [12] 1006 	mov	(_calc_i_65536_47 + 3),a
      001C42                       1007 00120$:
                                   1008 ;	usb.c:209: res += serialDescriptor[i];
      001C42 E5 48            [12] 1009 	mov	a,_calc_i_65536_47
      001C44 24 96            [12] 1010 	add	a,#_serialDescriptor
      001C46 F5 82            [12] 1011 	mov	dpl,a
      001C48 E5 49            [12] 1012 	mov	a,(_calc_i_65536_47 + 1)
      001C4A 34 26            [12] 1013 	addc	a,#(_serialDescriptor >> 8)
      001C4C F5 83            [12] 1014 	mov	dph,a
      001C4E E4               [12] 1015 	clr	a
      001C4F 93               [24] 1016 	movc	a,@a+dptr
      001C50 F8               [12] 1017 	mov	r0,a
      001C51 E4               [12] 1018 	clr	a
      001C52 F9               [12] 1019 	mov	r1,a
      001C53 FA               [12] 1020 	mov	r2,a
      001C54 FB               [12] 1021 	mov	r3,a
      001C55 E8               [12] 1022 	mov	a,r0
      001C56 2C               [12] 1023 	add	a,r4
      001C57 FC               [12] 1024 	mov	r4,a
      001C58 E9               [12] 1025 	mov	a,r1
      001C59 3D               [12] 1026 	addc	a,r5
      001C5A FD               [12] 1027 	mov	r5,a
      001C5B EA               [12] 1028 	mov	a,r2
      001C5C 3E               [12] 1029 	addc	a,r6
      001C5D FE               [12] 1030 	mov	r6,a
      001C5E EB               [12] 1031 	mov	a,r3
      001C5F 3F               [12] 1032 	addc	a,r7
      001C60 FF               [12] 1033 	mov	r7,a
                                   1034 ;	usb.c:208: for (i = 0; i < sizeof(serialDescriptor); ++i) {
      001C61 05 48            [12] 1035 	inc	_calc_i_65536_47
      001C63 E4               [12] 1036 	clr	a
      001C64 B5 48 0C         [24] 1037 	cjne	a,_calc_i_65536_47,00199$
      001C67 05 49            [12] 1038 	inc	(_calc_i_65536_47 + 1)
      001C69 B5 49 07         [24] 1039 	cjne	a,(_calc_i_65536_47 + 1),00199$
      001C6C 05 4A            [12] 1040 	inc	(_calc_i_65536_47 + 2)
      001C6E B5 4A 02         [24] 1041 	cjne	a,(_calc_i_65536_47 + 2),00199$
      001C71 05 4B            [12] 1042 	inc	(_calc_i_65536_47 + 3)
      001C73                       1043 00199$:
      001C73 C3               [12] 1044 	clr	c
      001C74 E5 48            [12] 1045 	mov	a,_calc_i_65536_47
      001C76 94 1A            [12] 1046 	subb	a,#0x1a
      001C78 E5 49            [12] 1047 	mov	a,(_calc_i_65536_47 + 1)
      001C7A 94 00            [12] 1048 	subb	a,#0x00
      001C7C E5 4A            [12] 1049 	mov	a,(_calc_i_65536_47 + 2)
      001C7E 94 00            [12] 1050 	subb	a,#0x00
      001C80 E5 4B            [12] 1051 	mov	a,(_calc_i_65536_47 + 3)
      001C82 94 00            [12] 1052 	subb	a,#0x00
      001C84 40 BC            [24] 1053 	jc	00120$
                                   1054 ;	usb.c:211: return res;
      001C86 8C 82            [24] 1055 	mov	dpl,r4
      001C88 8D 83            [24] 1056 	mov	dph,r5
      001C8A 8E F0            [24] 1057 	mov	b,r6
      001C8C EF               [12] 1058 	mov	a,r7
                                   1059 ;	usb.c:212: }
      001C8D 22               [24] 1060 	ret
                                   1061 ;------------------------------------------------------------
                                   1062 ;Allocation info for local variables in function 'EP0_SendData0'
                                   1063 ;------------------------------------------------------------
                                   1064 ;len                       Allocated with name '_EP0_SendData0_PARM_2'
                                   1065 ;buff                      Allocated with name '_EP0_SendData0_buff_65536_89'
                                   1066 ;i                         Allocated to registers r3 
                                   1067 ;------------------------------------------------------------
                                   1068 ;	usb.c:272: void EP0_SendData0(uint8_t *buff, uint8_t len)
                                   1069 ;	-----------------------------------------
                                   1070 ;	 function EP0_SendData0
                                   1071 ;	-----------------------------------------
      001C8E                       1072 _EP0_SendData0:
      001C8E 85 82 49         [24] 1073 	mov	_EP0_SendData0_buff_65536_89,dpl
      001C91 85 83 4A         [24] 1074 	mov	(_EP0_SendData0_buff_65536_89 + 1),dph
      001C94 85 F0 4B         [24] 1075 	mov	(_EP0_SendData0_buff_65536_89 + 2),b
                                   1076 ;	usb.c:275: u8Total = len;
      001C97 85 48 41         [24] 1077 	mov	_u8Total,_EP0_SendData0_PARM_2
                                   1078 ;	usb.c:276: pu8Buff = buff;
      001C9A 85 49 3E         [24] 1079 	mov	_pu8Buff,_EP0_SendData0_buff_65536_89
      001C9D 85 4A 3F         [24] 1080 	mov	(_pu8Buff + 1),(_EP0_SendData0_buff_65536_89 + 1)
      001CA0 85 4B 40         [24] 1081 	mov	(_pu8Buff + 2),(_EP0_SendData0_buff_65536_89 + 2)
                                   1082 ;	usb.c:278: if (len <= EP0_SZ) {
      001CA3 E5 48            [12] 1083 	mov	a,_EP0_SendData0_PARM_2
      001CA5 24 BF            [12] 1084 	add	a,#0xff - 0x40
      001CA7 40 31            [24] 1085 	jc	00116$
                                   1086 ;	usb.c:279: for (i = 0; i < len; ++i) {
      001CA9 7B 00            [12] 1087 	mov	r3,#0x00
      001CAB                       1088 00107$:
      001CAB C3               [12] 1089 	clr	c
      001CAC EB               [12] 1090 	mov	a,r3
      001CAD 95 48            [12] 1091 	subb	a,_EP0_SendData0_PARM_2
      001CAF 50 24            [24] 1092 	jnc	00101$
                                   1093 ;	usb.c:280: u8Ep0Buff[i] = buff[i];
      001CB1 EB               [12] 1094 	mov	a,r3
      001CB2 24 09            [12] 1095 	add	a,#_u8Ep0Buff
      001CB4 F9               [12] 1096 	mov	r1,a
      001CB5 E4               [12] 1097 	clr	a
      001CB6 34 00            [12] 1098 	addc	a,#(_u8Ep0Buff >> 8)
      001CB8 FA               [12] 1099 	mov	r2,a
      001CB9 EB               [12] 1100 	mov	a,r3
      001CBA 25 49            [12] 1101 	add	a,_EP0_SendData0_buff_65536_89
      001CBC F8               [12] 1102 	mov	r0,a
      001CBD E4               [12] 1103 	clr	a
      001CBE 35 4A            [12] 1104 	addc	a,(_EP0_SendData0_buff_65536_89 + 1)
      001CC0 FC               [12] 1105 	mov	r4,a
      001CC1 AF 4B            [24] 1106 	mov	r7,(_EP0_SendData0_buff_65536_89 + 2)
      001CC3 88 82            [24] 1107 	mov	dpl,r0
      001CC5 8C 83            [24] 1108 	mov	dph,r4
      001CC7 8F F0            [24] 1109 	mov	b,r7
      001CC9 12 25 DC         [24] 1110 	lcall	__gptrget
      001CCC F8               [12] 1111 	mov	r0,a
      001CCD 89 82            [24] 1112 	mov	dpl,r1
      001CCF 8A 83            [24] 1113 	mov	dph,r2
      001CD1 F0               [24] 1114 	movx	@dptr,a
                                   1115 ;	usb.c:279: for (i = 0; i < len; ++i) {
      001CD2 0B               [12] 1116 	inc	r3
      001CD3 80 D6            [24] 1117 	sjmp	00107$
      001CD5                       1118 00101$:
                                   1119 ;	usb.c:282: UEP0_T_LEN = len;
      001CD5 85 48 DD         [24] 1120 	mov	_UEP0_T_LEN,_EP0_SendData0_PARM_2
                                   1121 ;	usb.c:284: for (i = 0; i < EP0_SZ; ++i) {
      001CD8 80 2C            [24] 1122 	sjmp	00105$
      001CDA                       1123 00116$:
      001CDA 7F 00            [12] 1124 	mov	r7,#0x00
      001CDC                       1125 00109$:
                                   1126 ;	usb.c:285: u8Ep0Buff[i] = buff[i];
      001CDC EF               [12] 1127 	mov	a,r7
      001CDD 24 09            [12] 1128 	add	a,#_u8Ep0Buff
      001CDF FD               [12] 1129 	mov	r5,a
      001CE0 E4               [12] 1130 	clr	a
      001CE1 34 00            [12] 1131 	addc	a,#(_u8Ep0Buff >> 8)
      001CE3 FE               [12] 1132 	mov	r6,a
      001CE4 EF               [12] 1133 	mov	a,r7
      001CE5 25 49            [12] 1134 	add	a,_EP0_SendData0_buff_65536_89
      001CE7 FA               [12] 1135 	mov	r2,a
      001CE8 E4               [12] 1136 	clr	a
      001CE9 35 4A            [12] 1137 	addc	a,(_EP0_SendData0_buff_65536_89 + 1)
      001CEB FB               [12] 1138 	mov	r3,a
      001CEC AC 4B            [24] 1139 	mov	r4,(_EP0_SendData0_buff_65536_89 + 2)
      001CEE 8A 82            [24] 1140 	mov	dpl,r2
      001CF0 8B 83            [24] 1141 	mov	dph,r3
      001CF2 8C F0            [24] 1142 	mov	b,r4
      001CF4 12 25 DC         [24] 1143 	lcall	__gptrget
      001CF7 FA               [12] 1144 	mov	r2,a
      001CF8 8D 82            [24] 1145 	mov	dpl,r5
      001CFA 8E 83            [24] 1146 	mov	dph,r6
      001CFC F0               [24] 1147 	movx	@dptr,a
                                   1148 ;	usb.c:284: for (i = 0; i < EP0_SZ; ++i) {
      001CFD 0F               [12] 1149 	inc	r7
      001CFE BF 40 00         [24] 1150 	cjne	r7,#0x40,00137$
      001D01                       1151 00137$:
      001D01 40 D9            [24] 1152 	jc	00109$
                                   1153 ;	usb.c:287: UEP0_T_LEN = EP0_SZ;
      001D03 75 DD 40         [24] 1154 	mov	_UEP0_T_LEN,#0x40
      001D06                       1155 00105$:
                                   1156 ;	usb.c:289: u8sync = 0;
      001D06 75 46 00         [24] 1157 	mov	_u8sync,#0x00
                                   1158 ;	usb.c:290: UEP0_CTRL = (UEP_T_RES_ACK | UEP_R_RES_ACK);
      001D09 75 DC 00         [24] 1159 	mov	_UEP0_CTRL,#0x00
                                   1160 ;	usb.c:291: }
      001D0C 22               [24] 1161 	ret
                                   1162 ;------------------------------------------------------------
                                   1163 ;Allocation info for local variables in function 'EP0_SendData1'
                                   1164 ;------------------------------------------------------------
                                   1165 ;len                       Allocated with name '_EP0_SendData1_PARM_2'
                                   1166 ;buff                      Allocated with name '_EP0_SendData1_buff_65536_97'
                                   1167 ;i                         Allocated to registers r3 
                                   1168 ;------------------------------------------------------------
                                   1169 ;	usb.c:292: void EP0_SendData1(uint8_t *buff, uint8_t len)
                                   1170 ;	-----------------------------------------
                                   1171 ;	 function EP0_SendData1
                                   1172 ;	-----------------------------------------
      001D0D                       1173 _EP0_SendData1:
      001D0D 85 82 49         [24] 1174 	mov	_EP0_SendData1_buff_65536_97,dpl
      001D10 85 83 4A         [24] 1175 	mov	(_EP0_SendData1_buff_65536_97 + 1),dph
      001D13 85 F0 4B         [24] 1176 	mov	(_EP0_SendData1_buff_65536_97 + 2),b
                                   1177 ;	usb.c:295: u8Total = len;
      001D16 85 48 41         [24] 1178 	mov	_u8Total,_EP0_SendData1_PARM_2
                                   1179 ;	usb.c:296: pu8Buff = buff;
      001D19 85 49 3E         [24] 1180 	mov	_pu8Buff,_EP0_SendData1_buff_65536_97
      001D1C 85 4A 3F         [24] 1181 	mov	(_pu8Buff + 1),(_EP0_SendData1_buff_65536_97 + 1)
      001D1F 85 4B 40         [24] 1182 	mov	(_pu8Buff + 2),(_EP0_SendData1_buff_65536_97 + 2)
                                   1183 ;	usb.c:298: if (len <= EP0_SZ) {
      001D22 E5 48            [12] 1184 	mov	a,_EP0_SendData1_PARM_2
      001D24 24 BF            [12] 1185 	add	a,#0xff - 0x40
      001D26 40 31            [24] 1186 	jc	00116$
                                   1187 ;	usb.c:299: for (i = 0; i < len; ++i) {
      001D28 7B 00            [12] 1188 	mov	r3,#0x00
      001D2A                       1189 00107$:
      001D2A C3               [12] 1190 	clr	c
      001D2B EB               [12] 1191 	mov	a,r3
      001D2C 95 48            [12] 1192 	subb	a,_EP0_SendData1_PARM_2
      001D2E 50 24            [24] 1193 	jnc	00101$
                                   1194 ;	usb.c:300: u8Ep0Buff[i] = buff[i];
      001D30 EB               [12] 1195 	mov	a,r3
      001D31 24 09            [12] 1196 	add	a,#_u8Ep0Buff
      001D33 F9               [12] 1197 	mov	r1,a
      001D34 E4               [12] 1198 	clr	a
      001D35 34 00            [12] 1199 	addc	a,#(_u8Ep0Buff >> 8)
      001D37 FA               [12] 1200 	mov	r2,a
      001D38 EB               [12] 1201 	mov	a,r3
      001D39 25 49            [12] 1202 	add	a,_EP0_SendData1_buff_65536_97
      001D3B F8               [12] 1203 	mov	r0,a
      001D3C E4               [12] 1204 	clr	a
      001D3D 35 4A            [12] 1205 	addc	a,(_EP0_SendData1_buff_65536_97 + 1)
      001D3F FC               [12] 1206 	mov	r4,a
      001D40 AF 4B            [24] 1207 	mov	r7,(_EP0_SendData1_buff_65536_97 + 2)
      001D42 88 82            [24] 1208 	mov	dpl,r0
      001D44 8C 83            [24] 1209 	mov	dph,r4
      001D46 8F F0            [24] 1210 	mov	b,r7
      001D48 12 25 DC         [24] 1211 	lcall	__gptrget
      001D4B F8               [12] 1212 	mov	r0,a
      001D4C 89 82            [24] 1213 	mov	dpl,r1
      001D4E 8A 83            [24] 1214 	mov	dph,r2
      001D50 F0               [24] 1215 	movx	@dptr,a
                                   1216 ;	usb.c:299: for (i = 0; i < len; ++i) {
      001D51 0B               [12] 1217 	inc	r3
      001D52 80 D6            [24] 1218 	sjmp	00107$
      001D54                       1219 00101$:
                                   1220 ;	usb.c:302: UEP0_T_LEN = len;
      001D54 85 48 DD         [24] 1221 	mov	_UEP0_T_LEN,_EP0_SendData1_PARM_2
                                   1222 ;	usb.c:304: for (i = 0; i < EP0_SZ; ++i) {
      001D57 80 2C            [24] 1223 	sjmp	00105$
      001D59                       1224 00116$:
      001D59 7F 00            [12] 1225 	mov	r7,#0x00
      001D5B                       1226 00109$:
                                   1227 ;	usb.c:305: u8Ep0Buff[i] = buff[i];
      001D5B EF               [12] 1228 	mov	a,r7
      001D5C 24 09            [12] 1229 	add	a,#_u8Ep0Buff
      001D5E FD               [12] 1230 	mov	r5,a
      001D5F E4               [12] 1231 	clr	a
      001D60 34 00            [12] 1232 	addc	a,#(_u8Ep0Buff >> 8)
      001D62 FE               [12] 1233 	mov	r6,a
      001D63 EF               [12] 1234 	mov	a,r7
      001D64 25 49            [12] 1235 	add	a,_EP0_SendData1_buff_65536_97
      001D66 FA               [12] 1236 	mov	r2,a
      001D67 E4               [12] 1237 	clr	a
      001D68 35 4A            [12] 1238 	addc	a,(_EP0_SendData1_buff_65536_97 + 1)
      001D6A FB               [12] 1239 	mov	r3,a
      001D6B AC 4B            [24] 1240 	mov	r4,(_EP0_SendData1_buff_65536_97 + 2)
      001D6D 8A 82            [24] 1241 	mov	dpl,r2
      001D6F 8B 83            [24] 1242 	mov	dph,r3
      001D71 8C F0            [24] 1243 	mov	b,r4
      001D73 12 25 DC         [24] 1244 	lcall	__gptrget
      001D76 FA               [12] 1245 	mov	r2,a
      001D77 8D 82            [24] 1246 	mov	dpl,r5
      001D79 8E 83            [24] 1247 	mov	dph,r6
      001D7B F0               [24] 1248 	movx	@dptr,a
                                   1249 ;	usb.c:304: for (i = 0; i < EP0_SZ; ++i) {
      001D7C 0F               [12] 1250 	inc	r7
      001D7D BF 40 00         [24] 1251 	cjne	r7,#0x40,00137$
      001D80                       1252 00137$:
      001D80 40 D9            [24] 1253 	jc	00109$
                                   1254 ;	usb.c:307: UEP0_T_LEN = EP0_SZ;
      001D82 75 DD 40         [24] 1255 	mov	_UEP0_T_LEN,#0x40
      001D85                       1256 00105$:
                                   1257 ;	usb.c:309: u8sync = 1;
      001D85 75 46 01         [24] 1258 	mov	_u8sync,#0x01
                                   1259 ;	usb.c:310: UEP0_CTRL = (0x40 | UEP_T_RES_ACK | UEP_R_RES_ACK);
      001D88 75 DC 40         [24] 1260 	mov	_UEP0_CTRL,#0x40
                                   1261 ;	usb.c:311: }
      001D8B 22               [24] 1262 	ret
                                   1263 ;------------------------------------------------------------
                                   1264 ;Allocation info for local variables in function 'EP0_RecData0'
                                   1265 ;------------------------------------------------------------
                                   1266 ;len                       Allocated with name '_EP0_RecData0_PARM_2'
                                   1267 ;buff                      Allocated to registers 
                                   1268 ;------------------------------------------------------------
                                   1269 ;	usb.c:312: void EP0_RecData0(uint8_t *buff, uint8_t len)
                                   1270 ;	-----------------------------------------
                                   1271 ;	 function EP0_RecData0
                                   1272 ;	-----------------------------------------
      001D8C                       1273 _EP0_RecData0:
      001D8C 85 82 3E         [24] 1274 	mov	_pu8Buff,dpl
      001D8F 85 83 3F         [24] 1275 	mov	(_pu8Buff + 1),dph
      001D92 85 F0 40         [24] 1276 	mov	(_pu8Buff + 2),b
                                   1277 ;	usb.c:314: u8Total = len;
      001D95 85 48 41         [24] 1278 	mov	_u8Total,_EP0_RecData0_PARM_2
                                   1279 ;	usb.c:317: UEP0_CTRL = (UEP_T_RES_NAK | UEP_R_RES_ACK);
      001D98 75 DC 02         [24] 1280 	mov	_UEP0_CTRL,#0x02
                                   1281 ;	usb.c:318: }
      001D9B 22               [24] 1282 	ret
                                   1283 ;------------------------------------------------------------
                                   1284 ;Allocation info for local variables in function 'EP0_RecData1'
                                   1285 ;------------------------------------------------------------
                                   1286 ;len                       Allocated with name '_EP0_RecData1_PARM_2'
                                   1287 ;buff                      Allocated to registers 
                                   1288 ;------------------------------------------------------------
                                   1289 ;	usb.c:319: void EP0_RecData1(uint8_t *buff, uint8_t len)
                                   1290 ;	-----------------------------------------
                                   1291 ;	 function EP0_RecData1
                                   1292 ;	-----------------------------------------
      001D9C                       1293 _EP0_RecData1:
      001D9C 85 82 3E         [24] 1294 	mov	_pu8Buff,dpl
      001D9F 85 83 3F         [24] 1295 	mov	(_pu8Buff + 1),dph
      001DA2 85 F0 40         [24] 1296 	mov	(_pu8Buff + 2),b
                                   1297 ;	usb.c:321: u8Total = len;
      001DA5 85 48 41         [24] 1298 	mov	_u8Total,_EP0_RecData1_PARM_2
                                   1299 ;	usb.c:324: UEP0_CTRL = (0x80 | UEP_T_RES_NAK | UEP_R_RES_ACK);
      001DA8 75 DC 82         [24] 1300 	mov	_UEP0_CTRL,#0x82
                                   1301 ;	usb.c:325: }
      001DAB 22               [24] 1302 	ret
                                   1303 ;------------------------------------------------------------
                                   1304 ;Allocation info for local variables in function 'EP0_Stall'
                                   1305 ;------------------------------------------------------------
                                   1306 ;	usb.c:327: void EP0_Stall()
                                   1307 ;	-----------------------------------------
                                   1308 ;	 function EP0_Stall
                                   1309 ;	-----------------------------------------
      001DAC                       1310 _EP0_Stall:
                                   1311 ;	usb.c:329: UEP0_T_LEN = 0x00;
      001DAC 75 DD 00         [24] 1312 	mov	_UEP0_T_LEN,#0x00
                                   1313 ;	usb.c:330: UEP0_CTRL = 0x03;
      001DAF 75 DC 03         [24] 1314 	mov	_UEP0_CTRL,#0x03
                                   1315 ;	usb.c:331: }
      001DB2 22               [24] 1316 	ret
                                   1317 ;------------------------------------------------------------
                                   1318 ;Allocation info for local variables in function 'EP1_SendData'
                                   1319 ;------------------------------------------------------------
                                   1320 ;t                         Allocated to registers 
                                   1321 ;------------------------------------------------------------
                                   1322 ;	usb.c:333: void EP1_SendData(void)
                                   1323 ;	-----------------------------------------
                                   1324 ;	 function EP1_SendData
                                   1325 ;	-----------------------------------------
      001DB3                       1326 _EP1_SendData:
                                   1327 ;	usb.c:336: UEP1_T_LEN = 0x40;
      001DB3 75 D3 40         [24] 1328 	mov	_UEP1_T_LEN,#0x40
                                   1329 ;	usb.c:338: t &= ~(0x03);
      001DB6 53 D2 FC         [24] 1330 	anl	_UEP1_CTRL,#0xfc
                                   1331 ;	usb.c:339: UEP1_CTRL = t;
                                   1332 ;	usb.c:340: }
      001DB9 22               [24] 1333 	ret
                                   1334 ;------------------------------------------------------------
                                   1335 ;Allocation info for local variables in function 'EP1_RecData'
                                   1336 ;------------------------------------------------------------
                                   1337 ;t                         Allocated to registers 
                                   1338 ;------------------------------------------------------------
                                   1339 ;	usb.c:342: void EP1_RecData(void)
                                   1340 ;	-----------------------------------------
                                   1341 ;	 function EP1_RecData
                                   1342 ;	-----------------------------------------
      001DBA                       1343 _EP1_RecData:
                                   1344 ;	usb.c:345: UEP1_T_LEN = 0x40;
      001DBA 75 D3 40         [24] 1345 	mov	_UEP1_T_LEN,#0x40
                                   1346 ;	usb.c:347: t &= ~(0x0C);
      001DBD 53 D2 F3         [24] 1347 	anl	_UEP1_CTRL,#0xf3
                                   1348 ;	usb.c:348: UEP1_CTRL = t;
                                   1349 ;	usb.c:349: }
      001DC0 22               [24] 1350 	ret
                                   1351 ;------------------------------------------------------------
                                   1352 ;Allocation info for local variables in function 'USB_InitClock'
                                   1353 ;------------------------------------------------------------
                                   1354 ;	usb.c:354: void USB_InitClock(void) {
                                   1355 ;	-----------------------------------------
                                   1356 ;	 function USB_InitClock
                                   1357 ;	-----------------------------------------
      001DC1                       1358 _USB_InitClock:
                                   1359 ;	usb.c:356: }
      001DC1 22               [24] 1360 	ret
                                   1361 ;------------------------------------------------------------
                                   1362 ;Allocation info for local variables in function 'USB_Init'
                                   1363 ;------------------------------------------------------------
                                   1364 ;	usb.c:358: void USB_Init(void) {
                                   1365 ;	-----------------------------------------
                                   1366 ;	 function USB_Init
                                   1367 ;	-----------------------------------------
      001DC2                       1368 _USB_Init:
                                   1369 ;	usb.c:363: USB_CTRL = 0x29;
      001DC2 75 E2 29         [24] 1370 	mov	_USB_CTRL,#0x29
                                   1371 ;	usb.c:364: UDEV_CTRL |= bUD_PORT_EN;
      001DC5 AE D1            [24] 1372 	mov	r6,_UDEV_CTRL
      001DC7 43 06 01         [24] 1373 	orl	ar6,#0x01
      001DCA 8E D1            [24] 1374 	mov	_UDEV_CTRL,r6
                                   1375 ;	usb.c:368: }
      001DCC 22               [24] 1376 	ret
                                   1377 ;------------------------------------------------------------
                                   1378 ;Allocation info for local variables in function 'USB_Task'
                                   1379 ;------------------------------------------------------------
                                   1380 ;	usb.c:370: void USB_Task(void) {
                                   1381 ;	-----------------------------------------
                                   1382 ;	 function USB_Task
                                   1383 ;	-----------------------------------------
      001DCD                       1384 _USB_Task:
                                   1385 ;	usb.c:373: if (UIF_SUSPEND) {
                                   1386 ;	usb.c:374: UIF_SUSPEND = 0;
                                   1387 ;	assignBit
      001DCD 10 DA 02         [24] 1388 	jbc	_UIF_SUSPEND,00163$
      001DD0 80 01            [24] 1389 	sjmp	00123$
      001DD2                       1390 00163$:
      001DD2 22               [24] 1391 	ret
      001DD3                       1392 00123$:
                                   1393 ;	usb.c:375: } else if (UIF_BUS_RST) {
      001DD3 30 D8 1A         [24] 1394 	jnb	_UIF_BUS_RST,00120$
                                   1395 ;	usb.c:377: USB_DEV_AD = 0x00;
      001DD6 75 E3 00         [24] 1396 	mov	_USB_DEV_AD,#0x00
                                   1397 ;	usb.c:378: UEP0_T_LEN = EP0_SZ;
      001DD9 75 DD 40         [24] 1398 	mov	_UEP0_T_LEN,#0x40
                                   1399 ;	usb.c:379: UEP0_CTRL = UEP_R_RES_ACK | UEP_T_RES_NAK;
      001DDC 75 DC 02         [24] 1400 	mov	_UEP0_CTRL,#0x02
                                   1401 ;	usb.c:380: UIF_TRANSFER = 0;
                                   1402 ;	assignBit
      001DDF C2 D9            [12] 1403 	clr	_UIF_TRANSFER
                                   1404 ;	usb.c:381: UIF_BUS_RST = 0;
                                   1405 ;	assignBit
      001DE1 C2 D8            [12] 1406 	clr	_UIF_BUS_RST
                                   1407 ;	usb.c:382: UEP0_DMA = (uint16_t)u8Ep0Buff;
      001DE3 75 EC 09         [24] 1408 	mov	((_UEP0_DMA >> 0) & 0xFF),#_u8Ep0Buff
      001DE6 75 ED 00         [24] 1409 	mov	((_UEP0_DMA >> 8) & 0xFF),#(_u8Ep0Buff >> 8)
                                   1410 ;	usb.c:383: u8Addr = 0;
      001DE9 75 44 00         [24] 1411 	mov	_u8Addr,#0x00
                                   1412 ;	usb.c:384: u8Config = 0;
      001DEC 75 45 00         [24] 1413 	mov	_u8Config,#0x00
      001DEF 22               [24] 1414 	ret
      001DF0                       1415 00120$:
                                   1416 ;	usb.c:385: } else if (UIF_TRANSFER) {
      001DF0 20 D9 01         [24] 1417 	jb	_UIF_TRANSFER,00165$
      001DF3 22               [24] 1418 	ret
      001DF4                       1419 00165$:
                                   1420 ;	usb.c:393: UEP0_CTRL = UEP_R_RES_NAK | UEP_T_RES_NAK;
      001DF4 75 DC 0A         [24] 1421 	mov	_UEP0_CTRL,#0x0a
                                   1422 ;	usb.c:395: if((USB_INT_ST & 0x0F) == 0x00) {
      001DF7 E5 D9            [12] 1423 	mov	a,_USB_INT_ST
      001DF9 54 0F            [12] 1424 	anl	a,#0x0f
      001DFB 60 02            [24] 1425 	jz	00167$
      001DFD 80 31            [24] 1426 	sjmp	00115$
      001DFF                       1427 00167$:
                                   1428 ;	usb.c:397: if((USB_INT_ST & 0x30) == 0x20) {
      001DFF AE D9            [24] 1429 	mov	r6,_USB_INT_ST
      001E01 53 06 30         [24] 1430 	anl	ar6,#0x30
      001E04 7F 00            [12] 1431 	mov	r7,#0x00
      001E06 BE 20 08         [24] 1432 	cjne	r6,#0x20,00107$
      001E09 BF 00 05         [24] 1433 	cjne	r7,#0x00,00107$
                                   1434 ;	usb.c:399: EP0_In();
      001E0C 12 1F 7E         [24] 1435 	lcall	_EP0_In
      001E0F 80 41            [24] 1436 	sjmp	00116$
      001E11                       1437 00107$:
                                   1438 ;	usb.c:402: if((USB_INT_ST & 0x30) == 0x30) {
      001E11 AE D9            [24] 1439 	mov	r6,_USB_INT_ST
      001E13 53 06 30         [24] 1440 	anl	ar6,#0x30
      001E16 7F 00            [12] 1441 	mov	r7,#0x00
      001E18 BE 30 08         [24] 1442 	cjne	r6,#0x30,00104$
      001E1B BF 00 05         [24] 1443 	cjne	r7,#0x00,00104$
                                   1444 ;	usb.c:404: EP0_Setup();
      001E1E 12 1E 55         [24] 1445 	lcall	_EP0_Setup
      001E21 80 2F            [24] 1446 	sjmp	00116$
      001E23                       1447 00104$:
                                   1448 ;	usb.c:405: } else if ((USB_INT_ST & 0x30) == 0x00) {
      001E23 E5 D9            [12] 1449 	mov	a,_USB_INT_ST
      001E25 54 30            [12] 1450 	anl	a,#0x30
      001E27 60 02            [24] 1451 	jz	00173$
      001E29 80 27            [24] 1452 	sjmp	00116$
      001E2B                       1453 00173$:
                                   1454 ;	usb.c:407: EP0_Out();
      001E2B 12 1E BA         [24] 1455 	lcall	_EP0_Out
      001E2E 80 22            [24] 1456 	sjmp	00116$
      001E30                       1457 00115$:
                                   1458 ;	usb.c:413: if((USB_INT_ST & 0x0F) == 0x01) {
      001E30 AE D9            [24] 1459 	mov	r6,_USB_INT_ST
      001E32 53 06 0F         [24] 1460 	anl	ar6,#0x0f
      001E35 7F 00            [12] 1461 	mov	r7,#0x00
      001E37 BE 01 18         [24] 1462 	cjne	r6,#0x01,00116$
      001E3A BF 00 15         [24] 1463 	cjne	r7,#0x00,00116$
                                   1464 ;	usb.c:415: if((USB_INT_ST & 0x30) == 0x20) {
      001E3D AE D9            [24] 1465 	mov	r6,_USB_INT_ST
      001E3F 53 06 30         [24] 1466 	anl	ar6,#0x30
      001E42 7F 00            [12] 1467 	mov	r7,#0x00
      001E44 BE 20 08         [24] 1468 	cjne	r6,#0x20,00110$
      001E47 BF 00 05         [24] 1469 	cjne	r7,#0x00,00110$
                                   1470 ;	usb.c:416: EP1_In();
      001E4A 12 24 A5         [24] 1471 	lcall	_EP1_In
      001E4D 80 03            [24] 1472 	sjmp	00116$
      001E4F                       1473 00110$:
                                   1474 ;	usb.c:418: EP1_Out();
      001E4F 12 24 9C         [24] 1475 	lcall	_EP1_Out
      001E52                       1476 00116$:
                                   1477 ;	usb.c:422: UIF_TRANSFER = 0;
                                   1478 ;	assignBit
      001E52 C2 D9            [12] 1479 	clr	_UIF_TRANSFER
                                   1480 ;	usb.c:425: }
      001E54 22               [24] 1481 	ret
                                   1482 ;------------------------------------------------------------
                                   1483 ;Allocation info for local variables in function 'EP0_Setup'
                                   1484 ;------------------------------------------------------------
                                   1485 ;i                         Allocated to registers r7 
                                   1486 ;u8RequestType             Allocated to registers r7 
                                   1487 ;------------------------------------------------------------
                                   1488 ;	usb.c:427: static void EP0_Setup(void) {
                                   1489 ;	-----------------------------------------
                                   1490 ;	 function EP0_Setup
                                   1491 ;	-----------------------------------------
      001E55                       1492 _EP0_Setup:
                                   1493 ;	usb.c:432: for (i = 0; i < 8; ++i) {
      001E55 7F 00            [12] 1494 	mov	r7,#0x00
      001E57                       1495 00107$:
                                   1496 ;	usb.c:433: u8SetupPacket[i] = u8Ep0Buff[i];
      001E57 EF               [12] 1497 	mov	a,r7
      001E58 24 F5            [12] 1498 	add	a,#_u8SetupPacket
      001E5A FD               [12] 1499 	mov	r5,a
      001E5B E4               [12] 1500 	clr	a
      001E5C 34 01            [12] 1501 	addc	a,#(_u8SetupPacket >> 8)
      001E5E FE               [12] 1502 	mov	r6,a
      001E5F EF               [12] 1503 	mov	a,r7
      001E60 24 09            [12] 1504 	add	a,#_u8Ep0Buff
      001E62 F5 82            [12] 1505 	mov	dpl,a
      001E64 E4               [12] 1506 	clr	a
      001E65 34 00            [12] 1507 	addc	a,#(_u8Ep0Buff >> 8)
      001E67 F5 83            [12] 1508 	mov	dph,a
      001E69 E0               [24] 1509 	movx	a,@dptr
      001E6A FC               [12] 1510 	mov	r4,a
      001E6B 8D 82            [24] 1511 	mov	dpl,r5
      001E6D 8E 83            [24] 1512 	mov	dph,r6
      001E6F F0               [24] 1513 	movx	@dptr,a
                                   1514 ;	usb.c:432: for (i = 0; i < 8; ++i) {
      001E70 0F               [12] 1515 	inc	r7
      001E71 BF 08 00         [24] 1516 	cjne	r7,#0x08,00132$
      001E74                       1517 00132$:
      001E74 40 E1            [24] 1518 	jc	00107$
                                   1519 ;	usb.c:439: u8RequestType = (u8Ep0Buff[0] & 0x60) >> 5;
      001E76 90 00 09         [24] 1520 	mov	dptr,#_u8Ep0Buff
      001E79 E0               [24] 1521 	movx	a,@dptr
      001E7A FF               [12] 1522 	mov	r7,a
      001E7B 53 07 60         [24] 1523 	anl	ar7,#0x60
      001E7E E4               [12] 1524 	clr	a
      001E7F C4               [12] 1525 	swap	a
      001E80 03               [12] 1526 	rr	a
      001E81 CF               [12] 1527 	xch	a,r7
      001E82 C4               [12] 1528 	swap	a
      001E83 03               [12] 1529 	rr	a
      001E84 54 07            [12] 1530 	anl	a,#0x07
      001E86 6F               [12] 1531 	xrl	a,r7
      001E87 CF               [12] 1532 	xch	a,r7
      001E88 54 07            [12] 1533 	anl	a,#0x07
      001E8A CF               [12] 1534 	xch	a,r7
      001E8B 6F               [12] 1535 	xrl	a,r7
      001E8C CF               [12] 1536 	xch	a,r7
      001E8D 30 E2 02         [24] 1537 	jnb	acc.2,00134$
      001E90 44 F8            [12] 1538 	orl	a,#0xf8
      001E92                       1539 00134$:
      001E92 FE               [12] 1540 	mov	r6,a
                                   1541 ;	usb.c:440: switch(u8RequestType) {
      001E93 BF 00 02         [24] 1542 	cjne	r7,#0x00,00135$
      001E96 80 0A            [24] 1543 	sjmp	00102$
      001E98                       1544 00135$:
      001E98 BF 01 02         [24] 1545 	cjne	r7,#0x01,00136$
      001E9B 80 08            [24] 1546 	sjmp	00103$
      001E9D                       1547 00136$:
                                   1548 ;	usb.c:441: case 0x00:
      001E9D BF 02 0B         [24] 1549 	cjne	r7,#0x02,00105$
      001EA0 80 06            [24] 1550 	sjmp	00104$
      001EA2                       1551 00102$:
                                   1552 ;	usb.c:443: StandardRequest();
                                   1553 ;	usb.c:444: break;
                                   1554 ;	usb.c:445: case 0x01:
      001EA2 02 20 19         [24] 1555 	ljmp	_StandardRequest
      001EA5                       1556 00103$:
                                   1557 ;	usb.c:447: ClassRequest();
                                   1558 ;	usb.c:448: break;
                                   1559 ;	usb.c:449: case 0x02:
      001EA5 02 20 6D         [24] 1560 	ljmp	_ClassRequest
      001EA8                       1561 00104$:
                                   1562 ;	usb.c:451: VendorRequest();
                                   1563 ;	usb.c:452: break;
                                   1564 ;	usb.c:453: default:
      001EA8 02 20 89         [24] 1565 	ljmp	_VendorRequest
      001EAB                       1566 00105$:
                                   1567 ;	usb.c:456: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
      001EAB 75 48 40         [24] 1568 	mov	_EP0_RecData0_PARM_2,#0x40
      001EAE 90 00 49         [24] 1569 	mov	dptr,#_u8ReceiveBuff
      001EB1 75 F0 00         [24] 1570 	mov	b,#0x00
      001EB4 12 1D 8C         [24] 1571 	lcall	_EP0_RecData0
                                   1572 ;	usb.c:457: EP0_Stall();
                                   1573 ;	usb.c:459: }
                                   1574 ;	usb.c:460: }
      001EB7 02 1D AC         [24] 1575 	ljmp	_EP0_Stall
                                   1576 ;------------------------------------------------------------
                                   1577 ;Allocation info for local variables in function 'EP0_Out'
                                   1578 ;------------------------------------------------------------
                                   1579 ;i                         Allocated to registers r7 
                                   1580 ;------------------------------------------------------------
                                   1581 ;	usb.c:462: static void EP0_Out(void) {
                                   1582 ;	-----------------------------------------
                                   1583 ;	 function EP0_Out
                                   1584 ;	-----------------------------------------
      001EBA                       1585 _EP0_Out:
                                   1586 ;	usb.c:464: if (u8ControlState == DATA_STATE) {
      001EBA 74 01            [12] 1587 	mov	a,#0x01
      001EBC B5 47 02         [24] 1588 	cjne	a,_u8ControlState,00161$
      001EBF 80 03            [24] 1589 	sjmp	00162$
      001EC1                       1590 00161$:
      001EC1 02 1F 69         [24] 1591 	ljmp	00114$
      001EC4                       1592 00162$:
                                   1593 ;	usb.c:465: if (u8Total <= EP0_SZ) {
      001EC4 E5 41            [12] 1594 	mov	a,_u8Total
      001EC6 24 BF            [12] 1595 	add	a,#0xff - 0x40
      001EC8 40 40            [24] 1596 	jc	00128$
                                   1597 ;	usb.c:467: for (i = 0; i < u8Total; ++i) {
      001ECA 7F 00            [12] 1598 	mov	r7,#0x00
      001ECC                       1599 00117$:
      001ECC C3               [12] 1600 	clr	c
      001ECD EF               [12] 1601 	mov	a,r7
      001ECE 95 41            [12] 1602 	subb	a,_u8Total
      001ED0 50 22            [24] 1603 	jnc	00101$
                                   1604 ;	usb.c:468: pu8Buff[i] = u8Ep0Buff[i];
      001ED2 EF               [12] 1605 	mov	a,r7
      001ED3 25 3E            [12] 1606 	add	a,_pu8Buff
      001ED5 FC               [12] 1607 	mov	r4,a
      001ED6 E4               [12] 1608 	clr	a
      001ED7 35 3F            [12] 1609 	addc	a,(_pu8Buff + 1)
      001ED9 FD               [12] 1610 	mov	r5,a
      001EDA AE 40            [24] 1611 	mov	r6,(_pu8Buff + 2)
      001EDC EF               [12] 1612 	mov	a,r7
      001EDD 24 09            [12] 1613 	add	a,#_u8Ep0Buff
      001EDF F5 82            [12] 1614 	mov	dpl,a
      001EE1 E4               [12] 1615 	clr	a
      001EE2 34 00            [12] 1616 	addc	a,#(_u8Ep0Buff >> 8)
      001EE4 F5 83            [12] 1617 	mov	dph,a
      001EE6 E0               [24] 1618 	movx	a,@dptr
      001EE7 FB               [12] 1619 	mov	r3,a
      001EE8 8C 82            [24] 1620 	mov	dpl,r4
      001EEA 8D 83            [24] 1621 	mov	dph,r5
      001EEC 8E F0            [24] 1622 	mov	b,r6
      001EEE 12 25 C1         [24] 1623 	lcall	__gptrput
                                   1624 ;	usb.c:467: for (i = 0; i < u8Total; ++i) {
      001EF1 0F               [12] 1625 	inc	r7
      001EF2 80 D8            [24] 1626 	sjmp	00117$
      001EF4                       1627 00101$:
                                   1628 ;	usb.c:476: if (u8HidReq) {
      001EF4 E5 42            [12] 1629 	mov	a,_u8HidReq
      001EF6 60 03            [24] 1630 	jz	00103$
                                   1631 ;	usb.c:480: u8HidReq = 0;
      001EF8 75 42 00         [24] 1632 	mov	_u8HidReq,#0x00
      001EFB                       1633 00103$:
                                   1634 ;	usb.c:482: u8ControlState = STATUS_STATE;
      001EFB 75 47 02         [24] 1635 	mov	_u8ControlState,#0x02
                                   1636 ;	usb.c:483: EP0_SendData1(u8TransBuff, 0);
      001EFE 75 48 00         [24] 1637 	mov	_EP0_SendData1_PARM_2,#0x00
      001F01 90 00 DF         [24] 1638 	mov	dptr,#_u8TransBuff
      001F04 75 F0 00         [24] 1639 	mov	b,#0x00
      001F07 02 1D 0D         [24] 1640 	ljmp	_EP0_SendData1
                                   1641 ;	usb.c:485: for (i = 0; i < EP0_SZ; ++i) {
      001F0A                       1642 00128$:
      001F0A 7F 00            [12] 1643 	mov	r7,#0x00
      001F0C                       1644 00119$:
                                   1645 ;	usb.c:486: pu8Buff[i] = u8Ep0Buff[i];
      001F0C EF               [12] 1646 	mov	a,r7
      001F0D 25 3E            [12] 1647 	add	a,_pu8Buff
      001F0F FC               [12] 1648 	mov	r4,a
      001F10 E4               [12] 1649 	clr	a
      001F11 35 3F            [12] 1650 	addc	a,(_pu8Buff + 1)
      001F13 FD               [12] 1651 	mov	r5,a
      001F14 AE 40            [24] 1652 	mov	r6,(_pu8Buff + 2)
      001F16 EF               [12] 1653 	mov	a,r7
      001F17 24 09            [12] 1654 	add	a,#_u8Ep0Buff
      001F19 F5 82            [12] 1655 	mov	dpl,a
      001F1B E4               [12] 1656 	clr	a
      001F1C 34 00            [12] 1657 	addc	a,#(_u8Ep0Buff >> 8)
      001F1E F5 83            [12] 1658 	mov	dph,a
      001F20 E0               [24] 1659 	movx	a,@dptr
      001F21 8C 82            [24] 1660 	mov	dpl,r4
      001F23 8D 83            [24] 1661 	mov	dph,r5
      001F25 8E F0            [24] 1662 	mov	b,r6
      001F27 12 25 C1         [24] 1663 	lcall	__gptrput
                                   1664 ;	usb.c:485: for (i = 0; i < EP0_SZ; ++i) {
      001F2A 0F               [12] 1665 	inc	r7
      001F2B BF 40 00         [24] 1666 	cjne	r7,#0x40,00166$
      001F2E                       1667 00166$:
      001F2E 40 DC            [24] 1668 	jc	00119$
                                   1669 ;	usb.c:491: if (UEP0_CTRL & 0x80) {
      001F30 E5 DC            [12] 1670 	mov	a,_UEP0_CTRL
      001F32 30 E7 1A         [24] 1671 	jnb	acc.7,00106$
                                   1672 ;	usb.c:492: EP0_RecData0(pu8Buff + EP0_SZ, u8Total - EP0_SZ);
      001F35 74 40            [12] 1673 	mov	a,#0x40
      001F37 25 3E            [12] 1674 	add	a,_pu8Buff
      001F39 FD               [12] 1675 	mov	r5,a
      001F3A E4               [12] 1676 	clr	a
      001F3B 35 3F            [12] 1677 	addc	a,(_pu8Buff + 1)
      001F3D FE               [12] 1678 	mov	r6,a
      001F3E AF 40            [24] 1679 	mov	r7,(_pu8Buff + 2)
      001F40 E5 41            [12] 1680 	mov	a,_u8Total
      001F42 24 C0            [12] 1681 	add	a,#0xc0
      001F44 F5 48            [12] 1682 	mov	_EP0_RecData0_PARM_2,a
      001F46 8D 82            [24] 1683 	mov	dpl,r5
      001F48 8E 83            [24] 1684 	mov	dph,r6
      001F4A 8F F0            [24] 1685 	mov	b,r7
      001F4C 02 1D 8C         [24] 1686 	ljmp	_EP0_RecData0
      001F4F                       1687 00106$:
                                   1688 ;	usb.c:494: EP0_RecData1(pu8Buff + EP0_SZ, u8Total - EP0_SZ);
      001F4F 74 40            [12] 1689 	mov	a,#0x40
      001F51 25 3E            [12] 1690 	add	a,_pu8Buff
      001F53 FD               [12] 1691 	mov	r5,a
      001F54 E4               [12] 1692 	clr	a
      001F55 35 3F            [12] 1693 	addc	a,(_pu8Buff + 1)
      001F57 FE               [12] 1694 	mov	r6,a
      001F58 AF 40            [24] 1695 	mov	r7,(_pu8Buff + 2)
      001F5A E5 41            [12] 1696 	mov	a,_u8Total
      001F5C 24 C0            [12] 1697 	add	a,#0xc0
      001F5E F5 48            [12] 1698 	mov	_EP0_RecData1_PARM_2,a
      001F60 8D 82            [24] 1699 	mov	dpl,r5
      001F62 8E 83            [24] 1700 	mov	dph,r6
      001F64 8F F0            [24] 1701 	mov	b,r7
      001F66 02 1D 9C         [24] 1702 	ljmp	_EP0_RecData1
      001F69                       1703 00114$:
                                   1704 ;	usb.c:497: } else if (u8ControlState == STATUS_STATE) {
      001F69 74 02            [12] 1705 	mov	a,#0x02
      001F6B B5 47 0F         [24] 1706 	cjne	a,_u8ControlState,00121$
                                   1707 ;	usb.c:498: u8ControlState = SETUP_STATE;
      001F6E 75 47 00         [24] 1708 	mov	_u8ControlState,#0x00
                                   1709 ;	usb.c:499: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
      001F71 75 48 40         [24] 1710 	mov	_EP0_RecData0_PARM_2,#0x40
      001F74 90 00 49         [24] 1711 	mov	dptr,#_u8ReceiveBuff
      001F77 75 F0 00         [24] 1712 	mov	b,#0x00
                                   1713 ;	usb.c:502: }
      001F7A 02 1D 8C         [24] 1714 	ljmp	_EP0_RecData0
      001F7D                       1715 00121$:
      001F7D 22               [24] 1716 	ret
                                   1717 ;------------------------------------------------------------
                                   1718 ;Allocation info for local variables in function 'EP0_In'
                                   1719 ;------------------------------------------------------------
                                   1720 ;	usb.c:503: static void EP0_In(void) {
                                   1721 ;	-----------------------------------------
                                   1722 ;	 function EP0_In
                                   1723 ;	-----------------------------------------
      001F7E                       1724 _EP0_In:
                                   1725 ;	usb.c:505: if (u8ControlState == DATA_STATE) {
      001F7E 74 01            [12] 1726 	mov	a,#0x01
      001F80 B5 47 02         [24] 1727 	cjne	a,_u8ControlState,00143$
      001F83 80 03            [24] 1728 	sjmp	00144$
      001F85                       1729 00143$:
      001F85 02 1F FA         [24] 1730 	ljmp	00115$
      001F88                       1731 00144$:
                                   1732 ;	usb.c:506: if (u8Total <= EP0_SZ) {
      001F88 E5 41            [12] 1733 	mov	a,_u8Total
      001F8A 24 BF            [12] 1734 	add	a,#0xff - 0x40
      001F8C 40 34            [24] 1735 	jc	00108$
                                   1736 ;	usb.c:507: u8Total = 0;
      001F8E 75 41 00         [24] 1737 	mov	_u8Total,#0x00
                                   1738 ;	usb.c:508: u8ControlState = STATUS_STATE;
      001F91 75 47 02         [24] 1739 	mov	_u8ControlState,#0x02
                                   1740 ;	usb.c:509: EP0_RecData1(u8ReceiveBuff, 0);
      001F94 75 48 00         [24] 1741 	mov	_EP0_RecData1_PARM_2,#0x00
      001F97 90 00 49         [24] 1742 	mov	dptr,#_u8ReceiveBuff
      001F9A 75 F0 00         [24] 1743 	mov	b,#0x00
      001F9D 12 1D 9C         [24] 1744 	lcall	_EP0_RecData1
                                   1745 ;	usb.c:510: if (u8sync) {
      001FA0 E5 46            [12] 1746 	mov	a,_u8sync
      001FA2 60 0F            [24] 1747 	jz	00102$
                                   1748 ;	usb.c:511: EP0_SendData0(pu8Buff, 0);
      001FA4 75 48 00         [24] 1749 	mov	_EP0_SendData0_PARM_2,#0x00
      001FA7 85 3E 82         [24] 1750 	mov	dpl,_pu8Buff
      001FAA 85 3F 83         [24] 1751 	mov	dph,(_pu8Buff + 1)
      001FAD 85 40 F0         [24] 1752 	mov	b,(_pu8Buff + 2)
      001FB0 02 1C 8E         [24] 1753 	ljmp	_EP0_SendData0
      001FB3                       1754 00102$:
                                   1755 ;	usb.c:513: EP0_SendData1(pu8Buff, 0);
      001FB3 75 48 00         [24] 1756 	mov	_EP0_SendData1_PARM_2,#0x00
      001FB6 85 3E 82         [24] 1757 	mov	dpl,_pu8Buff
      001FB9 85 3F 83         [24] 1758 	mov	dph,(_pu8Buff + 1)
      001FBC 85 40 F0         [24] 1759 	mov	b,(_pu8Buff + 2)
      001FBF 02 1D 0D         [24] 1760 	ljmp	_EP0_SendData1
      001FC2                       1761 00108$:
                                   1762 ;	usb.c:517: if (u8sync) {
      001FC2 E5 46            [12] 1763 	mov	a,_u8sync
      001FC4 60 1A            [24] 1764 	jz	00105$
                                   1765 ;	usb.c:518: EP0_SendData0(pu8Buff + EP0_SZ, u8Total - EP0_SZ);
      001FC6 74 40            [12] 1766 	mov	a,#0x40
      001FC8 25 3E            [12] 1767 	add	a,_pu8Buff
      001FCA FD               [12] 1768 	mov	r5,a
      001FCB E4               [12] 1769 	clr	a
      001FCC 35 3F            [12] 1770 	addc	a,(_pu8Buff + 1)
      001FCE FE               [12] 1771 	mov	r6,a
      001FCF AF 40            [24] 1772 	mov	r7,(_pu8Buff + 2)
      001FD1 E5 41            [12] 1773 	mov	a,_u8Total
      001FD3 24 C0            [12] 1774 	add	a,#0xc0
      001FD5 F5 48            [12] 1775 	mov	_EP0_SendData0_PARM_2,a
      001FD7 8D 82            [24] 1776 	mov	dpl,r5
      001FD9 8E 83            [24] 1777 	mov	dph,r6
      001FDB 8F F0            [24] 1778 	mov	b,r7
      001FDD 02 1C 8E         [24] 1779 	ljmp	_EP0_SendData0
      001FE0                       1780 00105$:
                                   1781 ;	usb.c:520: EP0_SendData1(pu8Buff + EP0_SZ, u8Total - EP0_SZ);
      001FE0 74 40            [12] 1782 	mov	a,#0x40
      001FE2 25 3E            [12] 1783 	add	a,_pu8Buff
      001FE4 FD               [12] 1784 	mov	r5,a
      001FE5 E4               [12] 1785 	clr	a
      001FE6 35 3F            [12] 1786 	addc	a,(_pu8Buff + 1)
      001FE8 FE               [12] 1787 	mov	r6,a
      001FE9 AF 40            [24] 1788 	mov	r7,(_pu8Buff + 2)
      001FEB E5 41            [12] 1789 	mov	a,_u8Total
      001FED 24 C0            [12] 1790 	add	a,#0xc0
      001FEF F5 48            [12] 1791 	mov	_EP0_SendData1_PARM_2,a
      001FF1 8D 82            [24] 1792 	mov	dpl,r5
      001FF3 8E 83            [24] 1793 	mov	dph,r6
      001FF5 8F F0            [24] 1794 	mov	b,r7
      001FF7 02 1D 0D         [24] 1795 	ljmp	_EP0_SendData1
      001FFA                       1796 00115$:
                                   1797 ;	usb.c:523: } else if (u8ControlState == STATUS_STATE) {
      001FFA 74 02            [12] 1798 	mov	a,#0x02
      001FFC B5 47 19         [24] 1799 	cjne	a,_u8ControlState,00117$
                                   1800 ;	usb.c:524: if (u8Addr) {
      001FFF E5 44            [12] 1801 	mov	a,_u8Addr
      002001 60 06            [24] 1802 	jz	00111$
                                   1803 ;	usb.c:525: USB_DEV_AD = u8Addr;
      002003 85 44 E3         [24] 1804 	mov	_USB_DEV_AD,_u8Addr
                                   1805 ;	usb.c:526: u8Addr = 0;
      002006 75 44 00         [24] 1806 	mov	_u8Addr,#0x00
      002009                       1807 00111$:
                                   1808 ;	usb.c:529: u8ControlState = SETUP_STATE;
      002009 75 47 00         [24] 1809 	mov	_u8ControlState,#0x00
                                   1810 ;	usb.c:530: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
      00200C 75 48 40         [24] 1811 	mov	_EP0_RecData0_PARM_2,#0x40
      00200F 90 00 49         [24] 1812 	mov	dptr,#_u8ReceiveBuff
      002012 75 F0 00         [24] 1813 	mov	b,#0x00
                                   1814 ;	usb.c:533: }
      002015 02 1D 8C         [24] 1815 	ljmp	_EP0_RecData0
      002018                       1816 00117$:
      002018 22               [24] 1817 	ret
                                   1818 ;------------------------------------------------------------
                                   1819 ;Allocation info for local variables in function 'StandardRequest'
                                   1820 ;------------------------------------------------------------
                                   1821 ;	usb.c:535: static void StandardRequest(void) {
                                   1822 ;	-----------------------------------------
                                   1823 ;	 function StandardRequest
                                   1824 ;	-----------------------------------------
      002019                       1825 _StandardRequest:
                                   1826 ;	usb.c:537: switch(u8SetupPacket[1]) {
      002019 90 01 F6         [24] 1827 	mov	dptr,#(_u8SetupPacket + 0x0001)
      00201C E0               [24] 1828 	movx	a,@dptr
      00201D FF               [12] 1829 	mov  r7,a
      00201E 24 F3            [12] 1830 	add	a,#0xff - 0x0c
      002020 50 01            [24] 1831 	jnc	00119$
      002022 22               [24] 1832 	ret
      002023                       1833 00119$:
      002023 EF               [12] 1834 	mov	a,r7
      002024 24 0A            [12] 1835 	add	a,#(00120$-3-.)
      002026 83               [24] 1836 	movc	a,@a+pc
      002027 F5 82            [12] 1837 	mov	dpl,a
      002029 EF               [12] 1838 	mov	a,r7
      00202A 24 11            [12] 1839 	add	a,#(00121$-3-.)
      00202C 83               [24] 1840 	movc	a,@a+pc
      00202D F5 83            [12] 1841 	mov	dph,a
      00202F E4               [12] 1842 	clr	a
      002030 73               [24] 1843 	jmp	@a+dptr
      002031                       1844 00120$:
      002031 4B                    1845 	.db	00101$
      002032 4E                    1846 	.db	00102$
      002033 6C                    1847 	.db	00113$
      002034 51                    1848 	.db	00103$
      002035 6C                    1849 	.db	00113$
      002036 54                    1850 	.db	00104$
      002037 57                    1851 	.db	00105$
      002038 5A                    1852 	.db	00106$
      002039 5D                    1853 	.db	00107$
      00203A 60                    1854 	.db	00108$
      00203B 63                    1855 	.db	00109$
      00203C 66                    1856 	.db	00110$
      00203D 69                    1857 	.db	00111$
      00203E                       1858 00121$:
      00203E 20                    1859 	.db	00101$>>8
      00203F 20                    1860 	.db	00102$>>8
      002040 20                    1861 	.db	00113$>>8
      002041 20                    1862 	.db	00103$>>8
      002042 20                    1863 	.db	00113$>>8
      002043 20                    1864 	.db	00104$>>8
      002044 20                    1865 	.db	00105$>>8
      002045 20                    1866 	.db	00106$>>8
      002046 20                    1867 	.db	00107$>>8
      002047 20                    1868 	.db	00108$>>8
      002048 20                    1869 	.db	00109$>>8
      002049 20                    1870 	.db	00110$>>8
      00204A 20                    1871 	.db	00111$>>8
                                   1872 ;	usb.c:538: case 0x00:
      00204B                       1873 00101$:
                                   1874 ;	usb.c:540: GetStatus();
                                   1875 ;	usb.c:541: break;
                                   1876 ;	usb.c:542: case 0x01:
      00204B 02 20 8A         [24] 1877 	ljmp	_GetStatus
      00204E                       1878 00102$:
                                   1879 ;	usb.c:544: ClearFeature();
                                   1880 ;	usb.c:545: break;
                                   1881 ;	usb.c:546: case 0x03:
      00204E 02 20 FE         [24] 1882 	ljmp	_ClearFeature
      002051                       1883 00103$:
                                   1884 ;	usb.c:548: SetFeature();
                                   1885 ;	usb.c:549: break;
                                   1886 ;	usb.c:550: case 0x05:
      002051 02 21 43         [24] 1887 	ljmp	_SetFeature
      002054                       1888 00104$:
                                   1889 ;	usb.c:552: SetAddress();
                                   1890 ;	usb.c:553: break;
                                   1891 ;	usb.c:554: case 0x06:
      002054 02 21 88         [24] 1892 	ljmp	_SetAddress
      002057                       1893 00105$:
                                   1894 ;	usb.c:556: GetDescriptor();
                                   1895 ;	usb.c:557: break;
                                   1896 ;	usb.c:558: case 0x07:
      002057 02 21 9E         [24] 1897 	ljmp	_GetDescriptor
      00205A                       1898 00106$:
                                   1899 ;	usb.c:560: SetDescriptor();
                                   1900 ;	usb.c:561: break;
                                   1901 ;	usb.c:562: case 0x08:
      00205A 02 24 28         [24] 1902 	ljmp	_SetDescriptor
      00205D                       1903 00107$:
                                   1904 ;	usb.c:564: GetConfiguration();
                                   1905 ;	usb.c:565: break;
                                   1906 ;	usb.c:566: case 0x09:
      00205D 02 24 3B         [24] 1907 	ljmp	_GetConfiguration
      002060                       1908 00108$:
                                   1909 ;	usb.c:568: SetConfiguration();
                                   1910 ;	usb.c:569: break;
                                   1911 ;	usb.c:570: case 0x0A:
      002060 02 24 51         [24] 1912 	ljmp	_SetConfiguration
      002063                       1913 00109$:
                                   1914 ;	usb.c:572: GetInterface();
                                   1915 ;	usb.c:573: break;
                                   1916 ;	usb.c:574: case 0x0B:
      002063 02 24 76         [24] 1917 	ljmp	_GetInterface
      002066                       1918 00110$:
                                   1919 ;	usb.c:576: SetInterface();
                                   1920 ;	usb.c:577: break;
                                   1921 ;	usb.c:578: case 0x0C:
      002066 02 24 8B         [24] 1922 	ljmp	_SetInterface
      002069                       1923 00111$:
                                   1924 ;	usb.c:580: SynchFrame();
                                   1925 ;	usb.c:582: }
                                   1926 ;	usb.c:583: }
      002069 02 24 9B         [24] 1927 	ljmp	_SynchFrame
      00206C                       1928 00113$:
      00206C 22               [24] 1929 	ret
                                   1930 ;------------------------------------------------------------
                                   1931 ;Allocation info for local variables in function 'ClassRequest'
                                   1932 ;------------------------------------------------------------
                                   1933 ;	usb.c:584: static void ClassRequest(void) {
                                   1934 ;	-----------------------------------------
                                   1935 ;	 function ClassRequest
                                   1936 ;	-----------------------------------------
      00206D                       1937 _ClassRequest:
                                   1938 ;	usb.c:585: switch(u8SetupPacket[1]) {
      00206D 90 01 F6         [24] 1939 	mov	dptr,#(_u8SetupPacket + 0x0001)
      002070 E0               [24] 1940 	movx	a,@dptr
      002071 FF               [12] 1941 	mov	r7,a
      002072 BF 01 02         [24] 1942 	cjne	r7,#0x01,00119$
      002075 80 0E            [24] 1943 	sjmp	00103$
      002077                       1944 00119$:
      002077 BF 09 02         [24] 1945 	cjne	r7,#0x09,00120$
      00207A 80 06            [24] 1946 	sjmp	00102$
      00207C                       1947 00120$:
      00207C BF 0A 09         [24] 1948 	cjne	r7,#0x0a,00105$
                                   1949 ;	usb.c:587: HID_SetIdle();
                                   1950 ;	usb.c:588: break;
                                   1951 ;	usb.c:589: case 0x09:
      00207F 02 24 B3         [24] 1952 	ljmp	_HID_SetIdle
      002082                       1953 00102$:
                                   1954 ;	usb.c:590: HID_SetReport();
                                   1955 ;	usb.c:591: break;
                                   1956 ;	usb.c:592: case 0x01:
      002082 02 24 B9         [24] 1957 	ljmp	_HID_SetReport
      002085                       1958 00103$:
                                   1959 ;	usb.c:593: HID_GetReport();
                                   1960 ;	usb.c:595: }
                                   1961 ;	usb.c:596: }
      002085 02 24 F8         [24] 1962 	ljmp	_HID_GetReport
      002088                       1963 00105$:
      002088 22               [24] 1964 	ret
                                   1965 ;------------------------------------------------------------
                                   1966 ;Allocation info for local variables in function 'VendorRequest'
                                   1967 ;------------------------------------------------------------
                                   1968 ;	usb.c:598: static void VendorRequest(void) {
                                   1969 ;	-----------------------------------------
                                   1970 ;	 function VendorRequest
                                   1971 ;	-----------------------------------------
      002089                       1972 _VendorRequest:
                                   1973 ;	usb.c:600: }
      002089 22               [24] 1974 	ret
                                   1975 ;------------------------------------------------------------
                                   1976 ;Allocation info for local variables in function 'GetStatus'
                                   1977 ;------------------------------------------------------------
                                   1978 ;u8R                       Allocated to registers r7 
                                   1979 ;------------------------------------------------------------
                                   1980 ;	usb.c:602: static void GetStatus(void) {
                                   1981 ;	-----------------------------------------
                                   1982 ;	 function GetStatus
                                   1983 ;	-----------------------------------------
      00208A                       1984 _GetStatus:
                                   1985 ;	usb.c:609: u8R=u8SetupPacket[0] & 0x1F;
      00208A 90 01 F5         [24] 1986 	mov	dptr,#_u8SetupPacket
      00208D E0               [24] 1987 	movx	a,@dptr
      00208E FF               [12] 1988 	mov	r7,a
      00208F 53 07 1F         [24] 1989 	anl	ar7,#0x1f
                                   1990 ;	usb.c:611: switch(u8R) {
      002092 BF 00 02         [24] 1991 	cjne	r7,#0x00,00120$
      002095 80 0A            [24] 1992 	sjmp	00101$
      002097                       1993 00120$:
      002097 BF 01 02         [24] 1994 	cjne	r7,#0x01,00121$
      00209A 80 1E            [24] 1995 	sjmp	00102$
      00209C                       1996 00121$:
                                   1997 ;	usb.c:612: case 0x00:
      00209C BF 02 4D         [24] 1998 	cjne	r7,#0x02,00104$
      00209F 80 32            [24] 1999 	sjmp	00103$
      0020A1                       2000 00101$:
                                   2001 ;	usb.c:614: u8TransBuff[0] = 0x00;
      0020A1 90 00 DF         [24] 2002 	mov	dptr,#_u8TransBuff
      0020A4 E4               [12] 2003 	clr	a
      0020A5 F0               [24] 2004 	movx	@dptr,a
                                   2005 ;	usb.c:615: u8TransBuff[1] = 0x00;
      0020A6 90 00 E0         [24] 2006 	mov	dptr,#(_u8TransBuff + 0x0001)
      0020A9 F0               [24] 2007 	movx	@dptr,a
                                   2008 ;	usb.c:617: EP0_SendData1(u8TransBuff, 2);
      0020AA 75 48 02         [24] 2009 	mov	_EP0_SendData1_PARM_2,#0x02
      0020AD 90 00 DF         [24] 2010 	mov	dptr,#_u8TransBuff
      0020B0 75 F0 00         [24] 2011 	mov	b,#0x00
      0020B3 12 1D 0D         [24] 2012 	lcall	_EP0_SendData1
                                   2013 ;	usb.c:619: u8ControlState = DATA_STATE;
      0020B6 75 47 01         [24] 2014 	mov	_u8ControlState,#0x01
                                   2015 ;	usb.c:620: break;
                                   2016 ;	usb.c:621: case 0x01:
      0020B9 22               [24] 2017 	ret
      0020BA                       2018 00102$:
                                   2019 ;	usb.c:623: u8TransBuff[0] = 0x00;
      0020BA 90 00 DF         [24] 2020 	mov	dptr,#_u8TransBuff
      0020BD E4               [12] 2021 	clr	a
      0020BE F0               [24] 2022 	movx	@dptr,a
                                   2023 ;	usb.c:624: u8TransBuff[1] = 0x00;
      0020BF 90 00 E0         [24] 2024 	mov	dptr,#(_u8TransBuff + 0x0001)
      0020C2 F0               [24] 2025 	movx	@dptr,a
                                   2026 ;	usb.c:625: EP0_SendData1(u8TransBuff, 2);
      0020C3 75 48 02         [24] 2027 	mov	_EP0_SendData1_PARM_2,#0x02
      0020C6 90 00 DF         [24] 2028 	mov	dptr,#_u8TransBuff
      0020C9 75 F0 00         [24] 2029 	mov	b,#0x00
      0020CC 12 1D 0D         [24] 2030 	lcall	_EP0_SendData1
                                   2031 ;	usb.c:626: u8ControlState = DATA_STATE;
      0020CF 75 47 01         [24] 2032 	mov	_u8ControlState,#0x01
                                   2033 ;	usb.c:627: break;
                                   2034 ;	usb.c:628: case 0x02:
      0020D2 22               [24] 2035 	ret
      0020D3                       2036 00103$:
                                   2037 ;	usb.c:632: u8TransBuff[0] = 0x00;	
      0020D3 90 00 DF         [24] 2038 	mov	dptr,#_u8TransBuff
      0020D6 E4               [12] 2039 	clr	a
      0020D7 F0               [24] 2040 	movx	@dptr,a
                                   2041 ;	usb.c:633: u8TransBuff[1] = 0x00;
      0020D8 90 00 E0         [24] 2042 	mov	dptr,#(_u8TransBuff + 0x0001)
      0020DB F0               [24] 2043 	movx	@dptr,a
                                   2044 ;	usb.c:634: EP0_SendData1(u8TransBuff, 2);
      0020DC 75 48 02         [24] 2045 	mov	_EP0_SendData1_PARM_2,#0x02
      0020DF 90 00 DF         [24] 2046 	mov	dptr,#_u8TransBuff
      0020E2 75 F0 00         [24] 2047 	mov	b,#0x00
      0020E5 12 1D 0D         [24] 2048 	lcall	_EP0_SendData1
                                   2049 ;	usb.c:635: u8ControlState = DATA_STATE;
      0020E8 75 47 01         [24] 2050 	mov	_u8ControlState,#0x01
                                   2051 ;	usb.c:636: break;
                                   2052 ;	usb.c:637: default:
      0020EB 22               [24] 2053 	ret
      0020EC                       2054 00104$:
                                   2055 ;	usb.c:640: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
      0020EC 75 48 40         [24] 2056 	mov	_EP0_RecData0_PARM_2,#0x40
      0020EF 90 00 49         [24] 2057 	mov	dptr,#_u8ReceiveBuff
      0020F2 75 F0 00         [24] 2058 	mov	b,#0x00
      0020F5 12 1D 8C         [24] 2059 	lcall	_EP0_RecData0
                                   2060 ;	usb.c:641: u8ControlState = SETUP_STATE;
      0020F8 75 47 00         [24] 2061 	mov	_u8ControlState,#0x00
                                   2062 ;	usb.c:645: EP0_Stall();
                                   2063 ;	usb.c:647: }
                                   2064 ;	usb.c:648: }
      0020FB 02 1D AC         [24] 2065 	ljmp	_EP0_Stall
                                   2066 ;------------------------------------------------------------
                                   2067 ;Allocation info for local variables in function 'ClearFeature'
                                   2068 ;------------------------------------------------------------
                                   2069 ;u8R                       Allocated to registers r7 
                                   2070 ;------------------------------------------------------------
                                   2071 ;	usb.c:649: static void ClearFeature(void) {
                                   2072 ;	-----------------------------------------
                                   2073 ;	 function ClearFeature
                                   2074 ;	-----------------------------------------
      0020FE                       2075 _ClearFeature:
                                   2076 ;	usb.c:657: u8R=u8SetupPacket[0] & 0x1F;
      0020FE 90 01 F5         [24] 2077 	mov	dptr,#_u8SetupPacket
      002101 E0               [24] 2078 	movx	a,@dptr
      002102 FF               [12] 2079 	mov	r7,a
      002103 53 07 1F         [24] 2080 	anl	ar7,#0x1f
                                   2081 ;	usb.c:659: switch(u8R) {
      002106 BF 00 02         [24] 2082 	cjne	r7,#0x00,00115$
      002109 80 05            [24] 2083 	sjmp	00101$
      00210B                       2084 00115$:
                                   2085 ;	usb.c:660: case 0x00:
      00210B BF 02 22         [24] 2086 	cjne	r7,#0x02,00103$
      00210E 80 10            [24] 2087 	sjmp	00102$
      002110                       2088 00101$:
                                   2089 ;	usb.c:662: EP0_SendData1(u8TransBuff, 0);
      002110 75 48 00         [24] 2090 	mov	_EP0_SendData1_PARM_2,#0x00
      002113 90 00 DF         [24] 2091 	mov	dptr,#_u8TransBuff
      002116 75 F0 00         [24] 2092 	mov	b,#0x00
      002119 12 1D 0D         [24] 2093 	lcall	_EP0_SendData1
                                   2094 ;	usb.c:663: u8ControlState = STATUS_STATE;
      00211C 75 47 02         [24] 2095 	mov	_u8ControlState,#0x02
                                   2096 ;	usb.c:671: break;
                                   2097 ;	usb.c:675: case 0x02:
      00211F 22               [24] 2098 	ret
      002120                       2099 00102$:
                                   2100 ;	usb.c:681: EP0_SendData1(u8TransBuff, 0);
      002120 75 48 00         [24] 2101 	mov	_EP0_SendData1_PARM_2,#0x00
      002123 90 00 DF         [24] 2102 	mov	dptr,#_u8TransBuff
      002126 75 F0 00         [24] 2103 	mov	b,#0x00
      002129 12 1D 0D         [24] 2104 	lcall	_EP0_SendData1
                                   2105 ;	usb.c:682: u8ControlState = STATUS_STATE;
      00212C 75 47 02         [24] 2106 	mov	_u8ControlState,#0x02
                                   2107 ;	usb.c:683: break;
                                   2108 ;	usb.c:684: default:
      00212F 22               [24] 2109 	ret
      002130                       2110 00103$:
                                   2111 ;	usb.c:691: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
      002130 75 48 40         [24] 2112 	mov	_EP0_RecData0_PARM_2,#0x40
      002133 90 00 49         [24] 2113 	mov	dptr,#_u8ReceiveBuff
      002136 75 F0 00         [24] 2114 	mov	b,#0x00
      002139 12 1D 8C         [24] 2115 	lcall	_EP0_RecData0
                                   2116 ;	usb.c:695: EP0_Stall();
      00213C 12 1D AC         [24] 2117 	lcall	_EP0_Stall
                                   2118 ;	usb.c:696: u8ControlState = SETUP_STATE;
      00213F 75 47 00         [24] 2119 	mov	_u8ControlState,#0x00
                                   2120 ;	usb.c:698: }
                                   2121 ;	usb.c:700: }
      002142 22               [24] 2122 	ret
                                   2123 ;------------------------------------------------------------
                                   2124 ;Allocation info for local variables in function 'SetFeature'
                                   2125 ;------------------------------------------------------------
                                   2126 ;u8R                       Allocated to registers r7 
                                   2127 ;------------------------------------------------------------
                                   2128 ;	usb.c:701: static void SetFeature(void) {
                                   2129 ;	-----------------------------------------
                                   2130 ;	 function SetFeature
                                   2131 ;	-----------------------------------------
      002143                       2132 _SetFeature:
                                   2133 ;	usb.c:709: u8R=u8Ep0Buff[0] & 0x1F;
      002143 90 00 09         [24] 2134 	mov	dptr,#_u8Ep0Buff
      002146 E0               [24] 2135 	movx	a,@dptr
      002147 FF               [12] 2136 	mov	r7,a
      002148 53 07 1F         [24] 2137 	anl	ar7,#0x1f
                                   2138 ;	usb.c:711: switch(u8R) {
      00214B BF 00 02         [24] 2139 	cjne	r7,#0x00,00115$
      00214E 80 05            [24] 2140 	sjmp	00101$
      002150                       2141 00115$:
                                   2142 ;	usb.c:712: case 0x00:
      002150 BF 02 22         [24] 2143 	cjne	r7,#0x02,00103$
      002153 80 10            [24] 2144 	sjmp	00102$
      002155                       2145 00101$:
                                   2146 ;	usb.c:721: EP0_SendData1(u8TransBuff, 0);
      002155 75 48 00         [24] 2147 	mov	_EP0_SendData1_PARM_2,#0x00
      002158 90 00 DF         [24] 2148 	mov	dptr,#_u8TransBuff
      00215B 75 F0 00         [24] 2149 	mov	b,#0x00
      00215E 12 1D 0D         [24] 2150 	lcall	_EP0_SendData1
                                   2151 ;	usb.c:722: u8ControlState = STATUS_STATE;
      002161 75 47 02         [24] 2152 	mov	_u8ControlState,#0x02
                                   2153 ;	usb.c:723: break;
                                   2154 ;	usb.c:727: case 0x02:
      002164 22               [24] 2155 	ret
      002165                       2156 00102$:
                                   2157 ;	usb.c:732: EP0_SendData1(u8TransBuff, 0);
      002165 75 48 00         [24] 2158 	mov	_EP0_SendData1_PARM_2,#0x00
      002168 90 00 DF         [24] 2159 	mov	dptr,#_u8TransBuff
      00216B 75 F0 00         [24] 2160 	mov	b,#0x00
      00216E 12 1D 0D         [24] 2161 	lcall	_EP0_SendData1
                                   2162 ;	usb.c:733: u8ControlState = STATUS_STATE;
      002171 75 47 02         [24] 2163 	mov	_u8ControlState,#0x02
                                   2164 ;	usb.c:734: break;
                                   2165 ;	usb.c:735: default:
      002174 22               [24] 2166 	ret
      002175                       2167 00103$:
                                   2168 ;	usb.c:740: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
      002175 75 48 40         [24] 2169 	mov	_EP0_RecData0_PARM_2,#0x40
      002178 90 00 49         [24] 2170 	mov	dptr,#_u8ReceiveBuff
      00217B 75 F0 00         [24] 2171 	mov	b,#0x00
      00217E 12 1D 8C         [24] 2172 	lcall	_EP0_RecData0
                                   2173 ;	usb.c:744: EP0_Stall();
      002181 12 1D AC         [24] 2174 	lcall	_EP0_Stall
                                   2175 ;	usb.c:745: u8ControlState = SETUP_STATE;
      002184 75 47 00         [24] 2176 	mov	_u8ControlState,#0x00
                                   2177 ;	usb.c:747: }
                                   2178 ;	usb.c:748: }
      002187 22               [24] 2179 	ret
                                   2180 ;------------------------------------------------------------
                                   2181 ;Allocation info for local variables in function 'SetAddress'
                                   2182 ;------------------------------------------------------------
                                   2183 ;	usb.c:749: static void SetAddress(void) {
                                   2184 ;	-----------------------------------------
                                   2185 ;	 function SetAddress
                                   2186 ;	-----------------------------------------
      002188                       2187 _SetAddress:
                                   2188 ;	usb.c:751: u8Addr = u8SetupPacket[2];
      002188 90 01 F7         [24] 2189 	mov	dptr,#(_u8SetupPacket + 0x0002)
      00218B E0               [24] 2190 	movx	a,@dptr
      00218C F5 44            [12] 2191 	mov	_u8Addr,a
                                   2192 ;	usb.c:753: EP0_SendData1(u8TransBuff, 0);
      00218E 75 48 00         [24] 2193 	mov	_EP0_SendData1_PARM_2,#0x00
      002191 90 00 DF         [24] 2194 	mov	dptr,#_u8TransBuff
      002194 75 F0 00         [24] 2195 	mov	b,#0x00
      002197 12 1D 0D         [24] 2196 	lcall	_EP0_SendData1
                                   2197 ;	usb.c:754: u8ControlState = STATUS_STATE;
      00219A 75 47 02         [24] 2198 	mov	_u8ControlState,#0x02
                                   2199 ;	usb.c:756: }
      00219D 22               [24] 2200 	ret
                                   2201 ;------------------------------------------------------------
                                   2202 ;Allocation info for local variables in function 'GetDescriptor'
                                   2203 ;------------------------------------------------------------
                                   2204 ;i                         Allocated to registers r4 r5 
                                   2205 ;u16Len                    Allocated to registers r7 r6 
                                   2206 ;------------------------------------------------------------
                                   2207 ;	usb.c:757: static void GetDescriptor(void) {
                                   2208 ;	-----------------------------------------
                                   2209 ;	 function GetDescriptor
                                   2210 ;	-----------------------------------------
      00219E                       2211 _GetDescriptor:
                                   2212 ;	usb.c:760: u16Len = u8SetupPacket[7];
      00219E 90 01 FC         [24] 2213 	mov	dptr,#(_u8SetupPacket + 0x0007)
      0021A1 E0               [24] 2214 	movx	a,@dptr
                                   2215 ;	usb.c:761: u16Len <<= 8;
      0021A2 FE               [12] 2216 	mov	r6,a
      0021A3 7F 00            [12] 2217 	mov	r7,#0x00
                                   2218 ;	usb.c:762: u16Len += u8SetupPacket[6];
      0021A5 90 01 FB         [24] 2219 	mov	dptr,#(_u8SetupPacket + 0x0006)
      0021A8 E0               [24] 2220 	movx	a,@dptr
      0021A9 7C 00            [12] 2221 	mov	r4,#0x00
      0021AB 2F               [12] 2222 	add	a,r7
      0021AC FF               [12] 2223 	mov	r7,a
      0021AD EC               [12] 2224 	mov	a,r4
      0021AE 3E               [12] 2225 	addc	a,r6
      0021AF FE               [12] 2226 	mov	r6,a
                                   2227 ;	usb.c:764: P1_MOD_OC &= ~(1 << 5);
      0021B0 53 92 DF         [24] 2228 	anl	_P1_MOD_OC,#0xdf
                                   2229 ;	usb.c:765: P1_DIR_PU |= (1 << 5);
      0021B3 43 93 20         [24] 2230 	orl	_P1_DIR_PU,#0x20
                                   2231 ;	usb.c:767: P1 |= (1 << 5);
      0021B6 43 90 20         [24] 2232 	orl	_P1,#0x20
                                   2233 ;	usb.c:768: P1 &= ~(1 << 5);
      0021B9 53 90 DF         [24] 2234 	anl	_P1,#0xdf
                                   2235 ;	usb.c:769: P1 |= (1 << 5);
      0021BC 43 90 20         [24] 2236 	orl	_P1,#0x20
                                   2237 ;	usb.c:770: P1 &= ~(1 << 5);
      0021BF 53 90 DF         [24] 2238 	anl	_P1,#0xdf
                                   2239 ;	usb.c:771: P1 |= (1 << 5);
      0021C2 43 90 20         [24] 2240 	orl	_P1,#0x20
                                   2241 ;	usb.c:772: P1 &= ~(1 << 5);
      0021C5 53 90 DF         [24] 2242 	anl	_P1,#0xdf
                                   2243 ;	usb.c:773: P1 |= (1 << 5);
      0021C8 43 90 20         [24] 2244 	orl	_P1,#0x20
                                   2245 ;	usb.c:774: P1 &= ~(1 << 5);
      0021CB 53 90 DF         [24] 2246 	anl	_P1,#0xdf
                                   2247 ;	usb.c:775: P1 |= (1 << 5);
      0021CE 43 90 20         [24] 2248 	orl	_P1,#0x20
                                   2249 ;	usb.c:776: P1 &= ~(1 << 5);
      0021D1 53 90 DF         [24] 2250 	anl	_P1,#0xdf
                                   2251 ;	usb.c:778: switch(u8SetupPacket[3]) {
      0021D4 90 01 F8         [24] 2252 	mov	dptr,#(_u8SetupPacket + 0x0003)
      0021D7 E0               [24] 2253 	movx	a,@dptr
      0021D8 FD               [12] 2254 	mov	r5,a
      0021D9 BD 01 02         [24] 2255 	cjne	r5,#0x01,00301$
      0021DC 80 14            [24] 2256 	sjmp	00101$
      0021DE                       2257 00301$:
      0021DE BD 02 02         [24] 2258 	cjne	r5,#0x02,00302$
      0021E1 80 55            [24] 2259 	sjmp	00105$
      0021E3                       2260 00302$:
      0021E3 BD 03 03         [24] 2261 	cjne	r5,#0x03,00303$
      0021E6 02 22 7E         [24] 2262 	ljmp	00109$
      0021E9                       2263 00303$:
      0021E9 BD 22 03         [24] 2264 	cjne	r5,#0x22,00304$
      0021EC 02 23 C8         [24] 2265 	ljmp	00128$
      0021EF                       2266 00304$:
      0021EF 02 24 15         [24] 2267 	ljmp	00134$
                                   2268 ;	usb.c:779: case 0x01:
      0021F2                       2269 00101$:
                                   2270 ;	usb.c:791: if(u16Len >= 0x12) {
      0021F2 C3               [12] 2271 	clr	c
      0021F3 EF               [12] 2272 	mov	a,r7
      0021F4 94 12            [12] 2273 	subb	a,#0x12
      0021F6 EE               [12] 2274 	mov	a,r6
      0021F7 94 00            [12] 2275 	subb	a,#0x00
      0021F9 40 04            [24] 2276 	jc	00165$
                                   2277 ;	usb.c:792: u16Len = 0x12;
      0021FB 7F 12            [12] 2278 	mov	r7,#0x12
      0021FD 7E 00            [12] 2279 	mov	r6,#0x00
                                   2280 ;	usb.c:794: for(i = 0; i < u16Len; ++i) {
      0021FF                       2281 00165$:
      0021FF 7C 00            [12] 2282 	mov	r4,#0x00
      002201 7D 00            [12] 2283 	mov	r5,#0x00
      002203                       2284 00137$:
      002203 C3               [12] 2285 	clr	c
      002204 EC               [12] 2286 	mov	a,r4
      002205 9F               [12] 2287 	subb	a,r7
      002206 ED               [12] 2288 	mov	a,r5
      002207 9E               [12] 2289 	subb	a,r6
      002208 50 20            [24] 2290 	jnc	00104$
                                   2291 ;	usb.c:795: u8TransBuff[i] = deviceDescriptor[i];
      00220A EC               [12] 2292 	mov	a,r4
      00220B 24 DF            [12] 2293 	add	a,#_u8TransBuff
      00220D FA               [12] 2294 	mov	r2,a
      00220E ED               [12] 2295 	mov	a,r5
      00220F 34 00            [12] 2296 	addc	a,#(_u8TransBuff >> 8)
      002211 FB               [12] 2297 	mov	r3,a
      002212 EC               [12] 2298 	mov	a,r4
      002213 24 01            [12] 2299 	add	a,#_deviceDescriptor
      002215 F5 82            [12] 2300 	mov	dpl,a
      002217 ED               [12] 2301 	mov	a,r5
      002218 34 26            [12] 2302 	addc	a,#(_deviceDescriptor >> 8)
      00221A F5 83            [12] 2303 	mov	dph,a
      00221C E4               [12] 2304 	clr	a
      00221D 93               [24] 2305 	movc	a,@a+dptr
      00221E 8A 82            [24] 2306 	mov	dpl,r2
      002220 8B 83            [24] 2307 	mov	dph,r3
      002222 F0               [24] 2308 	movx	@dptr,a
                                   2309 ;	usb.c:794: for(i = 0; i < u16Len; ++i) {
      002223 0C               [12] 2310 	inc	r4
      002224 BC 00 DC         [24] 2311 	cjne	r4,#0x00,00137$
      002227 0D               [12] 2312 	inc	r5
      002228 80 D9            [24] 2313 	sjmp	00137$
      00222A                       2314 00104$:
                                   2315 ;	usb.c:797: u8ControlState = DATA_STATE;
      00222A 75 47 01         [24] 2316 	mov	_u8ControlState,#0x01
                                   2317 ;	usb.c:798: EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
      00222D 8F 48            [24] 2318 	mov	_EP0_SendData1_PARM_2,r7
      00222F 90 00 DF         [24] 2319 	mov	dptr,#_u8TransBuff
      002232 75 F0 00         [24] 2320 	mov	b,#0x00
                                   2321 ;	usb.c:799: break;
      002235 02 1D 0D         [24] 2322 	ljmp	_EP0_SendData1
                                   2323 ;	usb.c:800: case 0x02:
      002238                       2324 00105$:
                                   2325 ;	usb.c:802: if(u16Len >= 41) {
      002238 C3               [12] 2326 	clr	c
      002239 EF               [12] 2327 	mov	a,r7
      00223A 94 29            [12] 2328 	subb	a,#0x29
      00223C EE               [12] 2329 	mov	a,r6
      00223D 94 00            [12] 2330 	subb	a,#0x00
      00223F 40 04            [24] 2331 	jc	00168$
                                   2332 ;	usb.c:803: u16Len = 41;
      002241 7F 29            [12] 2333 	mov	r7,#0x29
      002243 7E 00            [12] 2334 	mov	r6,#0x00
                                   2335 ;	usb.c:805: for(i = 0; i < u16Len; ++i) {
      002245                       2336 00168$:
      002245 7C 00            [12] 2337 	mov	r4,#0x00
      002247 7D 00            [12] 2338 	mov	r5,#0x00
      002249                       2339 00140$:
      002249 C3               [12] 2340 	clr	c
      00224A EC               [12] 2341 	mov	a,r4
      00224B 9F               [12] 2342 	subb	a,r7
      00224C ED               [12] 2343 	mov	a,r5
      00224D 9E               [12] 2344 	subb	a,r6
      00224E 50 20            [24] 2345 	jnc	00108$
                                   2346 ;	usb.c:806: u8TransBuff[i]=configDescriptor[i];
      002250 EC               [12] 2347 	mov	a,r4
      002251 24 DF            [12] 2348 	add	a,#_u8TransBuff
      002253 FA               [12] 2349 	mov	r2,a
      002254 ED               [12] 2350 	mov	a,r5
      002255 34 00            [12] 2351 	addc	a,#(_u8TransBuff >> 8)
      002257 FB               [12] 2352 	mov	r3,a
      002258 EC               [12] 2353 	mov	a,r4
      002259 24 2F            [12] 2354 	add	a,#_configDescriptor
      00225B F5 82            [12] 2355 	mov	dpl,a
      00225D ED               [12] 2356 	mov	a,r5
      00225E 34 26            [12] 2357 	addc	a,#(_configDescriptor >> 8)
      002260 F5 83            [12] 2358 	mov	dph,a
      002262 E4               [12] 2359 	clr	a
      002263 93               [24] 2360 	movc	a,@a+dptr
      002264 8A 82            [24] 2361 	mov	dpl,r2
      002266 8B 83            [24] 2362 	mov	dph,r3
      002268 F0               [24] 2363 	movx	@dptr,a
                                   2364 ;	usb.c:805: for(i = 0; i < u16Len; ++i) {
      002269 0C               [12] 2365 	inc	r4
      00226A BC 00 DC         [24] 2366 	cjne	r4,#0x00,00140$
      00226D 0D               [12] 2367 	inc	r5
      00226E 80 D9            [24] 2368 	sjmp	00140$
      002270                       2369 00108$:
                                   2370 ;	usb.c:809: u8ControlState = DATA_STATE;
      002270 75 47 01         [24] 2371 	mov	_u8ControlState,#0x01
                                   2372 ;	usb.c:810: EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
      002273 8F 48            [24] 2373 	mov	_EP0_SendData1_PARM_2,r7
      002275 90 00 DF         [24] 2374 	mov	dptr,#_u8TransBuff
      002278 75 F0 00         [24] 2375 	mov	b,#0x00
                                   2376 ;	usb.c:811: break;
      00227B 02 1D 0D         [24] 2377 	ljmp	_EP0_SendData1
                                   2378 ;	usb.c:812: case 0x03:
      00227E                       2379 00109$:
                                   2380 ;	usb.c:814: switch(u8SetupPacket[2]) {
      00227E 90 01 F7         [24] 2381 	mov	dptr,#(_u8SetupPacket + 0x0002)
      002281 E0               [24] 2382 	movx	a,@dptr
      002282 FD               [12] 2383 	mov  r5,a
      002283 24 FC            [12] 2384 	add	a,#0xff - 0x03
      002285 50 03            [24] 2385 	jnc	00311$
      002287 02 23 B5         [24] 2386 	ljmp	00126$
      00228A                       2387 00311$:
      00228A ED               [12] 2388 	mov	a,r5
      00228B 2D               [12] 2389 	add	a,r5
      00228C 2D               [12] 2390 	add	a,r5
      00228D 90 22 91         [24] 2391 	mov	dptr,#00312$
      002290 73               [24] 2392 	jmp	@a+dptr
      002291                       2393 00312$:
      002291 02 22 9D         [24] 2394 	ljmp	00110$
      002294 02 22 E3         [24] 2395 	ljmp	00114$
      002297 02 23 29         [24] 2396 	ljmp	00118$
      00229A 02 23 6F         [24] 2397 	ljmp	00122$
                                   2398 ;	usb.c:815: case 0x00:
      00229D                       2399 00110$:
                                   2400 ;	usb.c:817: if(u16Len >= 0x04) {
      00229D C3               [12] 2401 	clr	c
      00229E EF               [12] 2402 	mov	a,r7
      00229F 94 04            [12] 2403 	subb	a,#0x04
      0022A1 EE               [12] 2404 	mov	a,r6
      0022A2 94 00            [12] 2405 	subb	a,#0x00
      0022A4 40 04            [24] 2406 	jc	00172$
                                   2407 ;	usb.c:818: u16Len = 0x04;
      0022A6 7F 04            [12] 2408 	mov	r7,#0x04
      0022A8 7E 00            [12] 2409 	mov	r6,#0x00
                                   2410 ;	usb.c:820: for(i = 0; i < u16Len; ++i) {
      0022AA                       2411 00172$:
      0022AA 7C 00            [12] 2412 	mov	r4,#0x00
      0022AC 7D 00            [12] 2413 	mov	r5,#0x00
      0022AE                       2414 00143$:
      0022AE C3               [12] 2415 	clr	c
      0022AF EC               [12] 2416 	mov	a,r4
      0022B0 9F               [12] 2417 	subb	a,r7
      0022B1 ED               [12] 2418 	mov	a,r5
      0022B2 9E               [12] 2419 	subb	a,r6
      0022B3 50 20            [24] 2420 	jnc	00113$
                                   2421 ;	usb.c:821: u8TransBuff[i]=stringDescriptor[i];
      0022B5 EC               [12] 2422 	mov	a,r4
      0022B6 24 DF            [12] 2423 	add	a,#_u8TransBuff
      0022B8 FA               [12] 2424 	mov	r2,a
      0022B9 ED               [12] 2425 	mov	a,r5
      0022BA 34 00            [12] 2426 	addc	a,#(_u8TransBuff >> 8)
      0022BC FB               [12] 2427 	mov	r3,a
      0022BD EC               [12] 2428 	mov	a,r4
      0022BE 24 58            [12] 2429 	add	a,#_stringDescriptor
      0022C0 F5 82            [12] 2430 	mov	dpl,a
      0022C2 ED               [12] 2431 	mov	a,r5
      0022C3 34 26            [12] 2432 	addc	a,#(_stringDescriptor >> 8)
      0022C5 F5 83            [12] 2433 	mov	dph,a
      0022C7 E4               [12] 2434 	clr	a
      0022C8 93               [24] 2435 	movc	a,@a+dptr
      0022C9 8A 82            [24] 2436 	mov	dpl,r2
      0022CB 8B 83            [24] 2437 	mov	dph,r3
      0022CD F0               [24] 2438 	movx	@dptr,a
                                   2439 ;	usb.c:820: for(i = 0; i < u16Len; ++i) {
      0022CE 0C               [12] 2440 	inc	r4
      0022CF BC 00 DC         [24] 2441 	cjne	r4,#0x00,00143$
      0022D2 0D               [12] 2442 	inc	r5
      0022D3 80 D9            [24] 2443 	sjmp	00143$
      0022D5                       2444 00113$:
                                   2445 ;	usb.c:824: u8ControlState = DATA_STATE;
      0022D5 75 47 01         [24] 2446 	mov	_u8ControlState,#0x01
                                   2447 ;	usb.c:825: EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
      0022D8 8F 48            [24] 2448 	mov	_EP0_SendData1_PARM_2,r7
      0022DA 90 00 DF         [24] 2449 	mov	dptr,#_u8TransBuff
      0022DD 75 F0 00         [24] 2450 	mov	b,#0x00
                                   2451 ;	usb.c:826: break;
      0022E0 02 1D 0D         [24] 2452 	ljmp	_EP0_SendData1
                                   2453 ;	usb.c:827: case 0x01:
      0022E3                       2454 00114$:
                                   2455 ;	usb.c:829: if(u16Len >= 38) {
      0022E3 C3               [12] 2456 	clr	c
      0022E4 EF               [12] 2457 	mov	a,r7
      0022E5 94 26            [12] 2458 	subb	a,#0x26
      0022E7 EE               [12] 2459 	mov	a,r6
      0022E8 94 00            [12] 2460 	subb	a,#0x00
      0022EA 40 04            [24] 2461 	jc	00175$
                                   2462 ;	usb.c:830: u16Len = 38;
      0022EC 7F 26            [12] 2463 	mov	r7,#0x26
      0022EE 7E 00            [12] 2464 	mov	r6,#0x00
                                   2465 ;	usb.c:832: for(i = 0; i < u16Len; ++i) {
      0022F0                       2466 00175$:
      0022F0 7C 00            [12] 2467 	mov	r4,#0x00
      0022F2 7D 00            [12] 2468 	mov	r5,#0x00
      0022F4                       2469 00146$:
      0022F4 C3               [12] 2470 	clr	c
      0022F5 EC               [12] 2471 	mov	a,r4
      0022F6 9F               [12] 2472 	subb	a,r7
      0022F7 ED               [12] 2473 	mov	a,r5
      0022F8 9E               [12] 2474 	subb	a,r6
      0022F9 50 20            [24] 2475 	jnc	00117$
                                   2476 ;	usb.c:833: u8TransBuff[i]=manufacturerDescriptor[i];
      0022FB EC               [12] 2477 	mov	a,r4
      0022FC 24 DF            [12] 2478 	add	a,#_u8TransBuff
      0022FE FA               [12] 2479 	mov	r2,a
      0022FF ED               [12] 2480 	mov	a,r5
      002300 34 00            [12] 2481 	addc	a,#(_u8TransBuff >> 8)
      002302 FB               [12] 2482 	mov	r3,a
      002303 EC               [12] 2483 	mov	a,r4
      002304 24 5C            [12] 2484 	add	a,#_manufacturerDescriptor
      002306 F5 82            [12] 2485 	mov	dpl,a
      002308 ED               [12] 2486 	mov	a,r5
      002309 34 26            [12] 2487 	addc	a,#(_manufacturerDescriptor >> 8)
      00230B F5 83            [12] 2488 	mov	dph,a
      00230D E4               [12] 2489 	clr	a
      00230E 93               [24] 2490 	movc	a,@a+dptr
      00230F 8A 82            [24] 2491 	mov	dpl,r2
      002311 8B 83            [24] 2492 	mov	dph,r3
      002313 F0               [24] 2493 	movx	@dptr,a
                                   2494 ;	usb.c:832: for(i = 0; i < u16Len; ++i) {
      002314 0C               [12] 2495 	inc	r4
      002315 BC 00 DC         [24] 2496 	cjne	r4,#0x00,00146$
      002318 0D               [12] 2497 	inc	r5
      002319 80 D9            [24] 2498 	sjmp	00146$
      00231B                       2499 00117$:
                                   2500 ;	usb.c:836: u8ControlState = DATA_STATE;
      00231B 75 47 01         [24] 2501 	mov	_u8ControlState,#0x01
                                   2502 ;	usb.c:837: EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
      00231E 8F 48            [24] 2503 	mov	_EP0_SendData1_PARM_2,r7
      002320 90 00 DF         [24] 2504 	mov	dptr,#_u8TransBuff
      002323 75 F0 00         [24] 2505 	mov	b,#0x00
                                   2506 ;	usb.c:838: break;
      002326 02 1D 0D         [24] 2507 	ljmp	_EP0_SendData1
                                   2508 ;	usb.c:839: case 0x02:
      002329                       2509 00118$:
                                   2510 ;	usb.c:841: if(u16Len >= 20) {
      002329 C3               [12] 2511 	clr	c
      00232A EF               [12] 2512 	mov	a,r7
      00232B 94 14            [12] 2513 	subb	a,#0x14
      00232D EE               [12] 2514 	mov	a,r6
      00232E 94 00            [12] 2515 	subb	a,#0x00
      002330 40 04            [24] 2516 	jc	00178$
                                   2517 ;	usb.c:842: u16Len = 20;
      002332 7F 14            [12] 2518 	mov	r7,#0x14
      002334 7E 00            [12] 2519 	mov	r6,#0x00
                                   2520 ;	usb.c:844: for(i = 0; i < u16Len; ++i) {
      002336                       2521 00178$:
      002336 7C 00            [12] 2522 	mov	r4,#0x00
      002338 7D 00            [12] 2523 	mov	r5,#0x00
      00233A                       2524 00149$:
      00233A C3               [12] 2525 	clr	c
      00233B EC               [12] 2526 	mov	a,r4
      00233C 9F               [12] 2527 	subb	a,r7
      00233D ED               [12] 2528 	mov	a,r5
      00233E 9E               [12] 2529 	subb	a,r6
      00233F 50 20            [24] 2530 	jnc	00121$
                                   2531 ;	usb.c:845: u8TransBuff[i]=productDescriptor[i];
      002341 EC               [12] 2532 	mov	a,r4
      002342 24 DF            [12] 2533 	add	a,#_u8TransBuff
      002344 FA               [12] 2534 	mov	r2,a
      002345 ED               [12] 2535 	mov	a,r5
      002346 34 00            [12] 2536 	addc	a,#(_u8TransBuff >> 8)
      002348 FB               [12] 2537 	mov	r3,a
      002349 EC               [12] 2538 	mov	a,r4
      00234A 24 82            [12] 2539 	add	a,#_productDescriptor
      00234C F5 82            [12] 2540 	mov	dpl,a
      00234E ED               [12] 2541 	mov	a,r5
      00234F 34 26            [12] 2542 	addc	a,#(_productDescriptor >> 8)
      002351 F5 83            [12] 2543 	mov	dph,a
      002353 E4               [12] 2544 	clr	a
      002354 93               [24] 2545 	movc	a,@a+dptr
      002355 8A 82            [24] 2546 	mov	dpl,r2
      002357 8B 83            [24] 2547 	mov	dph,r3
      002359 F0               [24] 2548 	movx	@dptr,a
                                   2549 ;	usb.c:844: for(i = 0; i < u16Len; ++i) {
      00235A 0C               [12] 2550 	inc	r4
      00235B BC 00 DC         [24] 2551 	cjne	r4,#0x00,00149$
      00235E 0D               [12] 2552 	inc	r5
      00235F 80 D9            [24] 2553 	sjmp	00149$
      002361                       2554 00121$:
                                   2555 ;	usb.c:848: u8ControlState = DATA_STATE;
      002361 75 47 01         [24] 2556 	mov	_u8ControlState,#0x01
                                   2557 ;	usb.c:849: EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
      002364 8F 48            [24] 2558 	mov	_EP0_SendData1_PARM_2,r7
      002366 90 00 DF         [24] 2559 	mov	dptr,#_u8TransBuff
      002369 75 F0 00         [24] 2560 	mov	b,#0x00
                                   2561 ;	usb.c:850: break;
      00236C 02 1D 0D         [24] 2562 	ljmp	_EP0_SendData1
                                   2563 ;	usb.c:851: case 0x03:
      00236F                       2564 00122$:
                                   2565 ;	usb.c:853: if(u16Len >= 26) {
      00236F C3               [12] 2566 	clr	c
      002370 EF               [12] 2567 	mov	a,r7
      002371 94 1A            [12] 2568 	subb	a,#0x1a
      002373 EE               [12] 2569 	mov	a,r6
      002374 94 00            [12] 2570 	subb	a,#0x00
      002376 40 04            [24] 2571 	jc	00181$
                                   2572 ;	usb.c:854: u16Len = 26;
      002378 7F 1A            [12] 2573 	mov	r7,#0x1a
      00237A 7E 00            [12] 2574 	mov	r6,#0x00
                                   2575 ;	usb.c:856: for(i = 0; i < u16Len; ++i) {
      00237C                       2576 00181$:
      00237C 7C 00            [12] 2577 	mov	r4,#0x00
      00237E 7D 00            [12] 2578 	mov	r5,#0x00
      002380                       2579 00152$:
      002380 C3               [12] 2580 	clr	c
      002381 EC               [12] 2581 	mov	a,r4
      002382 9F               [12] 2582 	subb	a,r7
      002383 ED               [12] 2583 	mov	a,r5
      002384 9E               [12] 2584 	subb	a,r6
      002385 50 20            [24] 2585 	jnc	00125$
                                   2586 ;	usb.c:857: u8TransBuff[i]=serialDescriptor[i];
      002387 EC               [12] 2587 	mov	a,r4
      002388 24 DF            [12] 2588 	add	a,#_u8TransBuff
      00238A FA               [12] 2589 	mov	r2,a
      00238B ED               [12] 2590 	mov	a,r5
      00238C 34 00            [12] 2591 	addc	a,#(_u8TransBuff >> 8)
      00238E FB               [12] 2592 	mov	r3,a
      00238F EC               [12] 2593 	mov	a,r4
      002390 24 96            [12] 2594 	add	a,#_serialDescriptor
      002392 F5 82            [12] 2595 	mov	dpl,a
      002394 ED               [12] 2596 	mov	a,r5
      002395 34 26            [12] 2597 	addc	a,#(_serialDescriptor >> 8)
      002397 F5 83            [12] 2598 	mov	dph,a
      002399 E4               [12] 2599 	clr	a
      00239A 93               [24] 2600 	movc	a,@a+dptr
      00239B 8A 82            [24] 2601 	mov	dpl,r2
      00239D 8B 83            [24] 2602 	mov	dph,r3
      00239F F0               [24] 2603 	movx	@dptr,a
                                   2604 ;	usb.c:856: for(i = 0; i < u16Len; ++i) {
      0023A0 0C               [12] 2605 	inc	r4
      0023A1 BC 00 DC         [24] 2606 	cjne	r4,#0x00,00152$
      0023A4 0D               [12] 2607 	inc	r5
      0023A5 80 D9            [24] 2608 	sjmp	00152$
      0023A7                       2609 00125$:
                                   2610 ;	usb.c:860: u8ControlState = DATA_STATE;
      0023A7 75 47 01         [24] 2611 	mov	_u8ControlState,#0x01
                                   2612 ;	usb.c:861: EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
      0023AA 8F 48            [24] 2613 	mov	_EP0_SendData1_PARM_2,r7
      0023AC 90 00 DF         [24] 2614 	mov	dptr,#_u8TransBuff
      0023AF 75 F0 00         [24] 2615 	mov	b,#0x00
                                   2616 ;	usb.c:862: break;
      0023B2 02 1D 0D         [24] 2617 	ljmp	_EP0_SendData1
                                   2618 ;	usb.c:863: default:
      0023B5                       2619 00126$:
                                   2620 ;	usb.c:864: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
      0023B5 75 48 40         [24] 2621 	mov	_EP0_RecData0_PARM_2,#0x40
      0023B8 90 00 49         [24] 2622 	mov	dptr,#_u8ReceiveBuff
      0023BB 75 F0 00         [24] 2623 	mov	b,#0x00
      0023BE 12 1D 8C         [24] 2624 	lcall	_EP0_RecData0
                                   2625 ;	usb.c:866: EP0_Stall();
      0023C1 12 1D AC         [24] 2626 	lcall	_EP0_Stall
                                   2627 ;	usb.c:868: u8ControlState = SETUP_STATE;
      0023C4 75 47 00         [24] 2628 	mov	_u8ControlState,#0x00
                                   2629 ;	usb.c:872: break;
                                   2630 ;	usb.c:873: case 0x22:
      0023C7 22               [24] 2631 	ret
      0023C8                       2632 00128$:
                                   2633 ;	usb.c:874: switch (u8SetupPacket[2]) {
      0023C8 90 01 F7         [24] 2634 	mov	dptr,#(_u8SetupPacket + 0x0002)
      0023CB E0               [24] 2635 	movx	a,@dptr
      0023CC 60 01            [24] 2636 	jz	00326$
      0023CE 22               [24] 2637 	ret
      0023CF                       2638 00326$:
                                   2639 ;	usb.c:876: if(u16Len >= /*42*/28) {
      0023CF C3               [12] 2640 	clr	c
      0023D0 EF               [12] 2641 	mov	a,r7
      0023D1 94 1C            [12] 2642 	subb	a,#0x1c
      0023D3 EE               [12] 2643 	mov	a,r6
      0023D4 94 00            [12] 2644 	subb	a,#0x00
      0023D6 40 04            [24] 2645 	jc	00185$
                                   2646 ;	usb.c:877: u16Len = /*42*/28;
      0023D8 7F 1C            [12] 2647 	mov	r7,#0x1c
      0023DA 7E 00            [12] 2648 	mov	r6,#0x00
                                   2649 ;	usb.c:880: for(i=0; i<u16Len; ++i) {
      0023DC                       2650 00185$:
      0023DC 7C 00            [12] 2651 	mov	r4,#0x00
      0023DE 7D 00            [12] 2652 	mov	r5,#0x00
      0023E0                       2653 00155$:
      0023E0 C3               [12] 2654 	clr	c
      0023E1 EC               [12] 2655 	mov	a,r4
      0023E2 9F               [12] 2656 	subb	a,r7
      0023E3 ED               [12] 2657 	mov	a,r5
      0023E4 9E               [12] 2658 	subb	a,r6
      0023E5 50 20            [24] 2659 	jnc	00132$
                                   2660 ;	usb.c:881: u8TransBuff[i]=HID_DeviceReportDescriptor[i];
      0023E7 EC               [12] 2661 	mov	a,r4
      0023E8 24 DF            [12] 2662 	add	a,#_u8TransBuff
      0023EA FA               [12] 2663 	mov	r2,a
      0023EB ED               [12] 2664 	mov	a,r5
      0023EC 34 00            [12] 2665 	addc	a,#(_u8TransBuff >> 8)
      0023EE FB               [12] 2666 	mov	r3,a
      0023EF EC               [12] 2667 	mov	a,r4
      0023F0 24 13            [12] 2668 	add	a,#_HID_DeviceReportDescriptor
      0023F2 F5 82            [12] 2669 	mov	dpl,a
      0023F4 ED               [12] 2670 	mov	a,r5
      0023F5 34 26            [12] 2671 	addc	a,#(_HID_DeviceReportDescriptor >> 8)
      0023F7 F5 83            [12] 2672 	mov	dph,a
      0023F9 E4               [12] 2673 	clr	a
      0023FA 93               [24] 2674 	movc	a,@a+dptr
      0023FB 8A 82            [24] 2675 	mov	dpl,r2
      0023FD 8B 83            [24] 2676 	mov	dph,r3
      0023FF F0               [24] 2677 	movx	@dptr,a
                                   2678 ;	usb.c:880: for(i=0; i<u16Len; ++i) {
      002400 0C               [12] 2679 	inc	r4
      002401 BC 00 DC         [24] 2680 	cjne	r4,#0x00,00155$
      002404 0D               [12] 2681 	inc	r5
      002405 80 D9            [24] 2682 	sjmp	00155$
      002407                       2683 00132$:
                                   2684 ;	usb.c:884: u8ControlState = DATA_STATE;
      002407 75 47 01         [24] 2685 	mov	_u8ControlState,#0x01
                                   2686 ;	usb.c:885: EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
      00240A 8F 48            [24] 2687 	mov	_EP0_SendData1_PARM_2,r7
      00240C 90 00 DF         [24] 2688 	mov	dptr,#_u8TransBuff
      00240F 75 F0 00         [24] 2689 	mov	b,#0x00
                                   2690 ;	usb.c:888: break;
                                   2691 ;	usb.c:889: default:
      002412 02 1D 0D         [24] 2692 	ljmp	_EP0_SendData1
      002415                       2693 00134$:
                                   2694 ;	usb.c:890: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
      002415 75 48 40         [24] 2695 	mov	_EP0_RecData0_PARM_2,#0x40
      002418 90 00 49         [24] 2696 	mov	dptr,#_u8ReceiveBuff
      00241B 75 F0 00         [24] 2697 	mov	b,#0x00
      00241E 12 1D 8C         [24] 2698 	lcall	_EP0_RecData0
                                   2699 ;	usb.c:892: EP0_Stall();
      002421 12 1D AC         [24] 2700 	lcall	_EP0_Stall
                                   2701 ;	usb.c:894: u8ControlState = SETUP_STATE;
      002424 75 47 00         [24] 2702 	mov	_u8ControlState,#0x00
                                   2703 ;	usb.c:897: }
                                   2704 ;	usb.c:898: }
      002427 22               [24] 2705 	ret
                                   2706 ;------------------------------------------------------------
                                   2707 ;Allocation info for local variables in function 'SetDescriptor'
                                   2708 ;------------------------------------------------------------
                                   2709 ;	usb.c:899: static void SetDescriptor(void) {
                                   2710 ;	-----------------------------------------
                                   2711 ;	 function SetDescriptor
                                   2712 ;	-----------------------------------------
      002428                       2713 _SetDescriptor:
                                   2714 ;	usb.c:900: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
      002428 75 48 40         [24] 2715 	mov	_EP0_RecData0_PARM_2,#0x40
      00242B 90 00 49         [24] 2716 	mov	dptr,#_u8ReceiveBuff
      00242E 75 F0 00         [24] 2717 	mov	b,#0x00
      002431 12 1D 8C         [24] 2718 	lcall	_EP0_RecData0
                                   2719 ;	usb.c:907: EP0_Stall();
      002434 12 1D AC         [24] 2720 	lcall	_EP0_Stall
                                   2721 ;	usb.c:908: u8ControlState = SETUP_STATE;
      002437 75 47 00         [24] 2722 	mov	_u8ControlState,#0x00
                                   2723 ;	usb.c:909: }
      00243A 22               [24] 2724 	ret
                                   2725 ;------------------------------------------------------------
                                   2726 ;Allocation info for local variables in function 'GetConfiguration'
                                   2727 ;------------------------------------------------------------
                                   2728 ;	usb.c:910: static void GetConfiguration(void) {
                                   2729 ;	-----------------------------------------
                                   2730 ;	 function GetConfiguration
                                   2731 ;	-----------------------------------------
      00243B                       2732 _GetConfiguration:
                                   2733 ;	usb.c:911: u8TransBuff[0] = u8Config;
      00243B 90 00 DF         [24] 2734 	mov	dptr,#_u8TransBuff
      00243E E5 45            [12] 2735 	mov	a,_u8Config
      002440 F0               [24] 2736 	movx	@dptr,a
                                   2737 ;	usb.c:915: EP0_SendData1(u8TransBuff, 0x01);
      002441 75 48 01         [24] 2738 	mov	_EP0_SendData1_PARM_2,#0x01
      002444 90 00 DF         [24] 2739 	mov	dptr,#_u8TransBuff
      002447 75 F0 00         [24] 2740 	mov	b,#0x00
      00244A 12 1D 0D         [24] 2741 	lcall	_EP0_SendData1
                                   2742 ;	usb.c:918: u8ControlState = DATA_STATE;
      00244D 75 47 01         [24] 2743 	mov	_u8ControlState,#0x01
                                   2744 ;	usb.c:919: }
      002450 22               [24] 2745 	ret
                                   2746 ;------------------------------------------------------------
                                   2747 ;Allocation info for local variables in function 'SetConfiguration'
                                   2748 ;------------------------------------------------------------
                                   2749 ;	usb.c:920: static void SetConfiguration(void) {
                                   2750 ;	-----------------------------------------
                                   2751 ;	 function SetConfiguration
                                   2752 ;	-----------------------------------------
      002451                       2753 _SetConfiguration:
                                   2754 ;	usb.c:921: u8Config=u8SetupPacket[2];
      002451 90 01 F7         [24] 2755 	mov	dptr,#(_u8SetupPacket + 0x0002)
      002454 E0               [24] 2756 	movx	a,@dptr
      002455 F5 45            [12] 2757 	mov	_u8Config,a
                                   2758 ;	usb.c:923: UEP4_1_MOD = (1 << 7) | (1 << 6);
      002457 75 EA C0         [24] 2759 	mov	_UEP4_1_MOD,#0xc0
                                   2760 ;	usb.c:924: UEP1_CTRL = 0x10 | UEP_R_RES_ACK | UEP_T_RES_NAK;
      00245A 75 D2 12         [24] 2761 	mov	_UEP1_CTRL,#0x12
                                   2762 ;	usb.c:926: UEP1_DMA = (uint16_t)Ep1Buffer;
      00245D 75 EE 75         [24] 2763 	mov	((_UEP1_DMA >> 0) & 0xFF),#_Ep1Buffer
      002460 75 EF 01         [24] 2764 	mov	((_UEP1_DMA >> 8) & 0xFF),#(_Ep1Buffer >> 8)
                                   2765 ;	usb.c:928: EP1_RecData();
      002463 12 1D BA         [24] 2766 	lcall	_EP1_RecData
                                   2767 ;	usb.c:935: EP0_SendData1(u8TransBuff, 0);
      002466 75 48 00         [24] 2768 	mov	_EP0_SendData1_PARM_2,#0x00
      002469 90 00 DF         [24] 2769 	mov	dptr,#_u8TransBuff
      00246C 75 F0 00         [24] 2770 	mov	b,#0x00
      00246F 12 1D 0D         [24] 2771 	lcall	_EP0_SendData1
                                   2772 ;	usb.c:936: u8ControlState = STATUS_STATE;
      002472 75 47 02         [24] 2773 	mov	_u8ControlState,#0x02
                                   2774 ;	usb.c:937: }
      002475 22               [24] 2775 	ret
                                   2776 ;------------------------------------------------------------
                                   2777 ;Allocation info for local variables in function 'GetInterface'
                                   2778 ;------------------------------------------------------------
                                   2779 ;	usb.c:938: static void GetInterface(void) {
                                   2780 ;	-----------------------------------------
                                   2781 ;	 function GetInterface
                                   2782 ;	-----------------------------------------
      002476                       2783 _GetInterface:
                                   2784 ;	usb.c:939: u8TransBuff[0] = 0x00;
      002476 90 00 DF         [24] 2785 	mov	dptr,#_u8TransBuff
      002479 E4               [12] 2786 	clr	a
      00247A F0               [24] 2787 	movx	@dptr,a
                                   2788 ;	usb.c:946: EP0_SendData1(u8TransBuff, 0x01);
      00247B 75 48 01         [24] 2789 	mov	_EP0_SendData1_PARM_2,#0x01
      00247E 90 00 DF         [24] 2790 	mov	dptr,#_u8TransBuff
      002481 75 F0 00         [24] 2791 	mov	b,#0x00
      002484 12 1D 0D         [24] 2792 	lcall	_EP0_SendData1
                                   2793 ;	usb.c:947: u8ControlState = DATA_STATE;
      002487 75 47 01         [24] 2794 	mov	_u8ControlState,#0x01
                                   2795 ;	usb.c:948: }
      00248A 22               [24] 2796 	ret
                                   2797 ;------------------------------------------------------------
                                   2798 ;Allocation info for local variables in function 'SetInterface'
                                   2799 ;------------------------------------------------------------
                                   2800 ;	usb.c:949: static void SetInterface(void) {
                                   2801 ;	-----------------------------------------
                                   2802 ;	 function SetInterface
                                   2803 ;	-----------------------------------------
      00248B                       2804 _SetInterface:
                                   2805 ;	usb.c:957: EP0_SendData1(u8TransBuff, 0);
      00248B 75 48 00         [24] 2806 	mov	_EP0_SendData1_PARM_2,#0x00
      00248E 90 00 DF         [24] 2807 	mov	dptr,#_u8TransBuff
      002491 75 F0 00         [24] 2808 	mov	b,#0x00
      002494 12 1D 0D         [24] 2809 	lcall	_EP0_SendData1
                                   2810 ;	usb.c:958: u8ControlState = STATUS_STATE;
      002497 75 47 02         [24] 2811 	mov	_u8ControlState,#0x02
                                   2812 ;	usb.c:959: }
      00249A 22               [24] 2813 	ret
                                   2814 ;------------------------------------------------------------
                                   2815 ;Allocation info for local variables in function 'SynchFrame'
                                   2816 ;------------------------------------------------------------
                                   2817 ;	usb.c:960: static void SynchFrame(void) {
                                   2818 ;	-----------------------------------------
                                   2819 ;	 function SynchFrame
                                   2820 ;	-----------------------------------------
      00249B                       2821 _SynchFrame:
                                   2822 ;	usb.c:962: }
      00249B 22               [24] 2823 	ret
                                   2824 ;------------------------------------------------------------
                                   2825 ;Allocation info for local variables in function 'EP1_Out'
                                   2826 ;------------------------------------------------------------
                                   2827 ;	usb.c:964: void EP1_Out(void) {
                                   2828 ;	-----------------------------------------
                                   2829 ;	 function EP1_Out
                                   2830 ;	-----------------------------------------
      00249C                       2831 _EP1_Out:
                                   2832 ;	usb.c:965: DAP_Thread();
      00249C 12 12 97         [24] 2833 	lcall	_DAP_Thread
                                   2834 ;	usb.c:966: EP1_SendData();
      00249F 12 1D B3         [24] 2835 	lcall	_EP1_SendData
                                   2836 ;	usb.c:967: EP1_RecData();
                                   2837 ;	usb.c:968: }
      0024A2 02 1D BA         [24] 2838 	ljmp	_EP1_RecData
                                   2839 ;------------------------------------------------------------
                                   2840 ;Allocation info for local variables in function 'EP1_In'
                                   2841 ;------------------------------------------------------------
                                   2842 ;t                         Allocated to registers r7 
                                   2843 ;------------------------------------------------------------
                                   2844 ;	usb.c:970: void EP1_In(void) {
                                   2845 ;	-----------------------------------------
                                   2846 ;	 function EP1_In
                                   2847 ;	-----------------------------------------
      0024A5                       2848 _EP1_In:
                                   2849 ;	usb.c:972: UEP1_T_LEN = 0x40;
      0024A5 75 D3 40         [24] 2850 	mov	_UEP1_T_LEN,#0x40
                                   2851 ;	usb.c:973: t = UEP1_CTRL;
      0024A8 E5 D2            [12] 2852 	mov	a,_UEP1_CTRL
                                   2853 ;	usb.c:974: t &= ~(0x03);
      0024AA 54 FC            [12] 2854 	anl	a,#0xfc
      0024AC FF               [12] 2855 	mov	r7,a
                                   2856 ;	usb.c:975: t |= 0x02;
      0024AD 43 07 02         [24] 2857 	orl	ar7,#0x02
      0024B0 8F D2            [24] 2858 	mov	_UEP1_CTRL,r7
                                   2859 ;	usb.c:976: UEP1_CTRL = t;
                                   2860 ;	usb.c:977: }
      0024B2 22               [24] 2861 	ret
                                   2862 ;------------------------------------------------------------
                                   2863 ;Allocation info for local variables in function 'HID_SetIdle'
                                   2864 ;------------------------------------------------------------
                                   2865 ;	usb.c:979: static void HID_SetIdle(void) {
                                   2866 ;	-----------------------------------------
                                   2867 ;	 function HID_SetIdle
                                   2868 ;	-----------------------------------------
      0024B3                       2869 _HID_SetIdle:
                                   2870 ;	usb.c:981: u8ControlState = SETUP_STATE;
      0024B3 75 47 00         [24] 2871 	mov	_u8ControlState,#0x00
                                   2872 ;	usb.c:982: EP0_Stall();
                                   2873 ;	usb.c:983: }
      0024B6 02 1D AC         [24] 2874 	ljmp	_EP0_Stall
                                   2875 ;------------------------------------------------------------
                                   2876 ;Allocation info for local variables in function 'HID_SetReport'
                                   2877 ;------------------------------------------------------------
                                   2878 ;	usb.c:985: static void HID_SetReport(void) {
                                   2879 ;	-----------------------------------------
                                   2880 ;	 function HID_SetReport
                                   2881 ;	-----------------------------------------
      0024B9                       2882 _HID_SetReport:
                                   2883 ;	usb.c:986: switch (u8SetupPacket[2]) {
      0024B9 90 01 F7         [24] 2884 	mov	dptr,#(_u8SetupPacket + 0x0002)
      0024BC E0               [24] 2885 	movx	a,@dptr
      0024BD FF               [12] 2886 	mov	r7,a
      0024BE BF 01 02         [24] 2887 	cjne	r7,#0x01,00119$
      0024C1 80 0A            [24] 2888 	sjmp	00102$
      0024C3                       2889 00119$:
      0024C3 BF 02 02         [24] 2890 	cjne	r7,#0x02,00120$
      0024C6 80 05            [24] 2891 	sjmp	00102$
      0024C8                       2892 00120$:
                                   2893 ;	usb.c:988: case 0x02:
      0024C8 BF 04 2C         [24] 2894 	cjne	r7,#0x04,00105$
      0024CB 80 15            [24] 2895 	sjmp	00103$
      0024CD                       2896 00102$:
                                   2897 ;	usb.c:989: u8HidReq = 1;
      0024CD 75 42 01         [24] 2898 	mov	_u8HidReq,#0x01
                                   2899 ;	usb.c:990: u8ControlState = DATA_STATE;
      0024D0 75 47 01         [24] 2900 	mov	_u8ControlState,#0x01
                                   2901 ;	usb.c:991: EP0_RecData1(u8ReceiveBuff, u8SetupPacket[6]);
      0024D3 90 01 FB         [24] 2902 	mov	dptr,#(_u8SetupPacket + 0x0006)
      0024D6 E0               [24] 2903 	movx	a,@dptr
      0024D7 F5 48            [12] 2904 	mov	_EP0_RecData1_PARM_2,a
      0024D9 90 00 49         [24] 2905 	mov	dptr,#_u8ReceiveBuff
      0024DC 75 F0 00         [24] 2906 	mov	b,#0x00
                                   2907 ;	usb.c:992: break;
                                   2908 ;	usb.c:993: case 0x04:
      0024DF 02 1D 9C         [24] 2909 	ljmp	_EP0_RecData1
      0024E2                       2910 00103$:
                                   2911 ;	usb.c:994: u8HidReq = 1;
      0024E2 75 42 01         [24] 2912 	mov	_u8HidReq,#0x01
                                   2913 ;	usb.c:995: u8ControlState = DATA_STATE;
      0024E5 75 47 01         [24] 2914 	mov	_u8ControlState,#0x01
                                   2915 ;	usb.c:996: EP0_RecData1(u8ReceiveBuff, u8SetupPacket[6]);
      0024E8 90 01 FB         [24] 2916 	mov	dptr,#(_u8SetupPacket + 0x0006)
      0024EB E0               [24] 2917 	movx	a,@dptr
      0024EC F5 48            [12] 2918 	mov	_EP0_RecData1_PARM_2,a
      0024EE 90 00 49         [24] 2919 	mov	dptr,#_u8ReceiveBuff
      0024F1 75 F0 00         [24] 2920 	mov	b,#0x00
                                   2921 ;	usb.c:998: }
                                   2922 ;	usb.c:999: }
      0024F4 02 1D 9C         [24] 2923 	ljmp	_EP0_RecData1
      0024F7                       2924 00105$:
      0024F7 22               [24] 2925 	ret
                                   2926 ;------------------------------------------------------------
                                   2927 ;Allocation info for local variables in function 'HID_GetReport'
                                   2928 ;------------------------------------------------------------
                                   2929 ;	usb.c:1001: static void HID_GetReport(void) {
                                   2930 ;	-----------------------------------------
                                   2931 ;	 function HID_GetReport
                                   2932 ;	-----------------------------------------
      0024F8                       2933 _HID_GetReport:
                                   2934 ;	usb.c:1004: u8ControlState = DATA_STATE;
      0024F8 75 47 01         [24] 2935 	mov	_u8ControlState,#0x01
                                   2936 ;	usb.c:1005: EP0_SendData1(u8TransBuff, u8HidNum);
      0024FB 85 43 48         [24] 2937 	mov	_EP0_SendData1_PARM_2,_u8HidNum
      0024FE 90 00 DF         [24] 2938 	mov	dptr,#_u8TransBuff
      002501 75 F0 00         [24] 2939 	mov	b,#0x00
                                   2940 ;	usb.c:1006: }
      002504 02 1D 0D         [24] 2941 	ljmp	_EP0_SendData1
                                   2942 	.area CSEG    (CODE)
                                   2943 	.area CONST   (CODE)
      002601                       2944 _deviceDescriptor:
      002601 12                    2945 	.db #0x12	; 18
      002602 01                    2946 	.db #0x01	; 1
      002603 00                    2947 	.db #0x00	; 0
      002604 02                    2948 	.db #0x02	; 2
      002605 00                    2949 	.db #0x00	; 0
      002606 00                    2950 	.db #0x00	; 0
      002607 00                    2951 	.db #0x00	; 0
      002608 40                    2952 	.db #0x40	; 64
      002609 48                    2953 	.db #0x48	; 72	'H'
      00260A 43                    2954 	.db #0x43	; 67	'C'
      00260B 07                    2955 	.db #0x07	; 7
      00260C 00                    2956 	.db #0x00	; 0
      00260D 01                    2957 	.db #0x01	; 1
      00260E 00                    2958 	.db #0x00	; 0
      00260F 01                    2959 	.db #0x01	; 1
      002610 02                    2960 	.db #0x02	; 2
      002611 03                    2961 	.db #0x03	; 3
      002612 01                    2962 	.db #0x01	; 1
      002613                       2963 _HID_DeviceReportDescriptor:
      002613 06                    2964 	.db #0x06	; 6
      002614 00                    2965 	.db #0x00	; 0
      002615 FF                    2966 	.db #0xff	; 255
      002616 09                    2967 	.db #0x09	; 9
      002617 01                    2968 	.db #0x01	; 1
      002618 A1                    2969 	.db #0xa1	; 161
      002619 01                    2970 	.db #0x01	; 1
      00261A 19                    2971 	.db #0x19	; 25
      00261B 01                    2972 	.db #0x01	; 1
      00261C 29                    2973 	.db #0x29	; 41
      00261D 40                    2974 	.db #0x40	; 64
      00261E 15                    2975 	.db #0x15	; 21
      00261F 01                    2976 	.db #0x01	; 1
      002620 25                    2977 	.db #0x25	; 37
      002621 40                    2978 	.db #0x40	; 64
      002622 75                    2979 	.db #0x75	; 117	'u'
      002623 08                    2980 	.db #0x08	; 8
      002624 95                    2981 	.db #0x95	; 149
      002625 40                    2982 	.db #0x40	; 64
      002626 81                    2983 	.db #0x81	; 129
      002627 00                    2984 	.db #0x00	; 0
      002628 19                    2985 	.db #0x19	; 25
      002629 01                    2986 	.db #0x01	; 1
      00262A 29                    2987 	.db #0x29	; 41
      00262B 40                    2988 	.db #0x40	; 64
      00262C 91                    2989 	.db #0x91	; 145
      00262D 00                    2990 	.db #0x00	; 0
      00262E C0                    2991 	.db #0xc0	; 192
      00262F                       2992 _configDescriptor:
      00262F 09                    2993 	.db #0x09	; 9
      002630 02                    2994 	.db #0x02	; 2
      002631 29                    2995 	.db #0x29	; 41
      002632 00                    2996 	.db #0x00	; 0
      002633 01                    2997 	.db #0x01	; 1
      002634 01                    2998 	.db #0x01	; 1
      002635 00                    2999 	.db #0x00	; 0
      002636 C0                    3000 	.db #0xc0	; 192
      002637 32                    3001 	.db #0x32	; 50	'2'
      002638 09                    3002 	.db #0x09	; 9
      002639 04                    3003 	.db #0x04	; 4
      00263A 00                    3004 	.db #0x00	; 0
      00263B 00                    3005 	.db #0x00	; 0
      00263C 02                    3006 	.db #0x02	; 2
      00263D 03                    3007 	.db #0x03	; 3
      00263E 00                    3008 	.db #0x00	; 0
      00263F 00                    3009 	.db #0x00	; 0
      002640 00                    3010 	.db #0x00	; 0
      002641 09                    3011 	.db #0x09	; 9
      002642 21                    3012 	.db #0x21	; 33
      002643 11                    3013 	.db #0x11	; 17
      002644 01                    3014 	.db #0x01	; 1
      002645 00                    3015 	.db #0x00	; 0
      002646 01                    3016 	.db #0x01	; 1
      002647 22                    3017 	.db #0x22	; 34
      002648 1C                    3018 	.db #0x1c	; 28
      002649 00                    3019 	.db #0x00	; 0
      00264A 07                    3020 	.db #0x07	; 7
      00264B 05                    3021 	.db #0x05	; 5
      00264C 81                    3022 	.db #0x81	; 129
      00264D 03                    3023 	.db #0x03	; 3
      00264E 40                    3024 	.db #0x40	; 64
      00264F 00                    3025 	.db #0x00	; 0
      002650 01                    3026 	.db #0x01	; 1
      002651 07                    3027 	.db #0x07	; 7
      002652 05                    3028 	.db #0x05	; 5
      002653 01                    3029 	.db #0x01	; 1
      002654 03                    3030 	.db #0x03	; 3
      002655 40                    3031 	.db #0x40	; 64
      002656 00                    3032 	.db #0x00	; 0
      002657 01                    3033 	.db #0x01	; 1
      002658                       3034 _stringDescriptor:
      002658 04                    3035 	.db #0x04	; 4
      002659 03                    3036 	.db #0x03	; 3
      00265A 09                    3037 	.db #0x09	; 9
      00265B 04                    3038 	.db #0x04	; 4
      00265C                       3039 _manufacturerDescriptor:
      00265C 26                    3040 	.db #0x26	; 38
      00265D 03                    3041 	.db #0x03	; 3
      00265E 77                    3042 	.db #0x77	; 119	'w'
      00265F 00                    3043 	.db #0x00	; 0
      002660 77                    3044 	.db #0x77	; 119	'w'
      002661 00                    3045 	.db #0x00	; 0
      002662 77                    3046 	.db #0x77	; 119	'w'
      002663 00                    3047 	.db #0x00	; 0
      002664 2E                    3048 	.db #0x2e	; 46
      002665 00                    3049 	.db #0x00	; 0
      002666 6C                    3050 	.db #0x6c	; 108	'l'
      002667 00                    3051 	.db #0x00	; 0
      002668 69                    3052 	.db #0x69	; 105	'i'
      002669 00                    3053 	.db #0x00	; 0
      00266A 6E                    3054 	.db #0x6e	; 110	'n'
      00266B 00                    3055 	.db #0x00	; 0
      00266C 68                    3056 	.db #0x68	; 104	'h'
      00266D 00                    3057 	.db #0x00	; 0
      00266E 6B                    3058 	.db #0x6b	; 107	'k'
      00266F 00                    3059 	.db #0x00	; 0
      002670 69                    3060 	.db #0x69	; 105	'i'
      002671 00                    3061 	.db #0x00	; 0
      002672 65                    3062 	.db #0x65	; 101	'e'
      002673 00                    3063 	.db #0x00	; 0
      002674 6E                    3064 	.db #0x6e	; 110	'n'
      002675 00                    3065 	.db #0x00	; 0
      002676 32                    3066 	.db #0x32	; 50	'2'
      002677 00                    3067 	.db #0x00	; 0
      002678 34                    3068 	.db #0x34	; 52	'4'
      002679 00                    3069 	.db #0x00	; 0
      00267A 37                    3070 	.db #0x37	; 55	'7'
      00267B 00                    3071 	.db #0x00	; 0
      00267C 2E                    3072 	.db #0x2e	; 46
      00267D 00                    3073 	.db #0x00	; 0
      00267E 76                    3074 	.db #0x76	; 118	'v'
      00267F 00                    3075 	.db #0x00	; 0
      002680 6E                    3076 	.db #0x6e	; 110	'n'
      002681 00                    3077 	.db #0x00	; 0
      002682                       3078 _productDescriptor:
      002682 14                    3079 	.db #0x14	; 20
      002683 03                    3080 	.db #0x03	; 3
      002684 43                    3081 	.db #0x43	; 67	'C'
      002685 00                    3082 	.db #0x00	; 0
      002686 4D                    3083 	.db #0x4d	; 77	'M'
      002687 00                    3084 	.db #0x00	; 0
      002688 53                    3085 	.db #0x53	; 83	'S'
      002689 00                    3086 	.db #0x00	; 0
      00268A 49                    3087 	.db #0x49	; 73	'I'
      00268B 00                    3088 	.db #0x00	; 0
      00268C 53                    3089 	.db #0x53	; 83	'S'
      00268D 00                    3090 	.db #0x00	; 0
      00268E 2D                    3091 	.db #0x2d	; 45
      00268F 00                    3092 	.db #0x00	; 0
      002690 44                    3093 	.db #0x44	; 68	'D'
      002691 00                    3094 	.db #0x00	; 0
      002692 41                    3095 	.db #0x41	; 65	'A'
      002693 00                    3096 	.db #0x00	; 0
      002694 50                    3097 	.db #0x50	; 80	'P'
      002695 00                    3098 	.db #0x00	; 0
      002696                       3099 _serialDescriptor:
      002696 1A                    3100 	.db #0x1a	; 26
      002697 03                    3101 	.db #0x03	; 3
      002698 2B                    3102 	.db #0x2b	; 43
      002699 00                    3103 	.db #0x00	; 0
      00269A 38                    3104 	.db #0x38	; 56	'8'
      00269B 00                    3105 	.db #0x00	; 0
      00269C 34                    3106 	.db #0x34	; 52	'4'
      00269D 00                    3107 	.db #0x00	; 0
      00269E 39                    3108 	.db #0x39	; 57	'9'
      00269F 00                    3109 	.db #0x00	; 0
      0026A0 38                    3110 	.db #0x38	; 56	'8'
      0026A1 00                    3111 	.db #0x00	; 0
      0026A2 39                    3112 	.db #0x39	; 57	'9'
      0026A3 00                    3113 	.db #0x00	; 0
      0026A4 36                    3114 	.db #0x36	; 54	'6'
      0026A5 00                    3115 	.db #0x00	; 0
      0026A6 39                    3116 	.db #0x39	; 57	'9'
      0026A7 00                    3117 	.db #0x00	; 0
      0026A8 36                    3118 	.db #0x36	; 54	'6'
      0026A9 00                    3119 	.db #0x00	; 0
      0026AA 39                    3120 	.db #0x39	; 57	'9'
      0026AB 00                    3121 	.db #0x00	; 0
      0026AC 37                    3122 	.db #0x37	; 55	'7'
      0026AD 00                    3123 	.db #0x00	; 0
      0026AE 31                    3124 	.db #0x31	; 49	'1'
      0026AF 00                    3125 	.db #0x00	; 0
      0026B0                       3126 _u8Ver:
      0026B0 6D 63 75 50 72 6F 67  3127 	.ascii "mcuProg v1.0 b181231"
             20 76 31 2E 30 20 62
             31 38 31 32 33 31
      0026C4 00                    3128 	.db 0x00
                                   3129 	.area XINIT   (CODE)
                                   3130 	.area CABS    (ABS,CODE)
