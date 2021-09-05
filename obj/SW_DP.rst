                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module SW_DP
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _SWD_Transfer_PARM_2
                                     12 	.globl _SWD_Sequence_PARM_3
                                     13 	.globl _SWD_Sequence_PARM_2
                                     14 	.globl _SWJ_Sequence_PARM_2
                                     15 	.globl _P1_4
                                     16 	.globl _P1_7
                                     17 	.globl _P3_2
                                     18 	.globl _P1_5
                                     19 	.globl _UIF_BUS_RST
                                     20 	.globl _UIF_TRANSFER
                                     21 	.globl _UIF_SUSPEND
                                     22 	.globl _UIF_FIFO_OV
                                     23 	.globl _U_SIE_FREE
                                     24 	.globl _U_TOG_OK
                                     25 	.globl _U_IS_NAK
                                     26 	.globl _ADC_CHAN0
                                     27 	.globl _ADC_CHAN1
                                     28 	.globl _CMP_CHAN
                                     29 	.globl _ADC_START
                                     30 	.globl _ADC_IF
                                     31 	.globl _CMP_IF
                                     32 	.globl _CMPO
                                     33 	.globl _U1RI
                                     34 	.globl _U1TI
                                     35 	.globl _U1RB8
                                     36 	.globl _U1TB8
                                     37 	.globl _U1REN
                                     38 	.globl _U1SMOD
                                     39 	.globl _U1SM0
                                     40 	.globl _S0_R_FIFO
                                     41 	.globl _S0_T_FIFO
                                     42 	.globl _S0_FREE
                                     43 	.globl _S0_IF_BYTE
                                     44 	.globl _S0_IF_FIRST
                                     45 	.globl _S0_IF_OV
                                     46 	.globl _S0_FST_ACT
                                     47 	.globl _CP_RL2
                                     48 	.globl _C_T2
                                     49 	.globl _TR2
                                     50 	.globl _EXEN2
                                     51 	.globl _TCLK
                                     52 	.globl _RCLK
                                     53 	.globl _EXF2
                                     54 	.globl _CAP1F
                                     55 	.globl _TF2
                                     56 	.globl _RI
                                     57 	.globl _TI
                                     58 	.globl _RB8
                                     59 	.globl _TB8
                                     60 	.globl _REN
                                     61 	.globl _SM2
                                     62 	.globl _SM1
                                     63 	.globl _SM0
                                     64 	.globl _IT0
                                     65 	.globl _IE0
                                     66 	.globl _IT1
                                     67 	.globl _IE1
                                     68 	.globl _TR0
                                     69 	.globl _TF0
                                     70 	.globl _TR1
                                     71 	.globl _TF1
                                     72 	.globl _RXD
                                     73 	.globl _PWM1_
                                     74 	.globl _TXD
                                     75 	.globl _PWM2_
                                     76 	.globl _AIN3
                                     77 	.globl _VBUS1
                                     78 	.globl _INT0
                                     79 	.globl _TXD1_
                                     80 	.globl _INT1
                                     81 	.globl _T0
                                     82 	.globl _RXD1_
                                     83 	.globl _PWM2
                                     84 	.globl _T1
                                     85 	.globl _UDP
                                     86 	.globl _UDM
                                     87 	.globl _TIN0
                                     88 	.globl _CAP1
                                     89 	.globl _T2
                                     90 	.globl _AIN0
                                     91 	.globl _VBUS2
                                     92 	.globl _TIN1
                                     93 	.globl _CAP2
                                     94 	.globl _T2EX
                                     95 	.globl _RXD_
                                     96 	.globl _TXD_
                                     97 	.globl _AIN1
                                     98 	.globl _UCC1
                                     99 	.globl _TIN2
                                    100 	.globl _SCS
                                    101 	.globl _CAP1_
                                    102 	.globl _T2_
                                    103 	.globl _AIN2
                                    104 	.globl _UCC2
                                    105 	.globl _TIN3
                                    106 	.globl _PWM1
                                    107 	.globl _MOSI
                                    108 	.globl _TIN4
                                    109 	.globl _RXD1
                                    110 	.globl _MISO
                                    111 	.globl _TIN5
                                    112 	.globl _TXD1
                                    113 	.globl _SCK
                                    114 	.globl _IE_SPI0
                                    115 	.globl _IE_TKEY
                                    116 	.globl _IE_USB
                                    117 	.globl _IE_ADC
                                    118 	.globl _IE_UART1
                                    119 	.globl _IE_PWMX
                                    120 	.globl _IE_GPIO
                                    121 	.globl _IE_WDOG
                                    122 	.globl _PX0
                                    123 	.globl _PT0
                                    124 	.globl _PX1
                                    125 	.globl _PT1
                                    126 	.globl _PS
                                    127 	.globl _PT2
                                    128 	.globl _PL_FLAG
                                    129 	.globl _PH_FLAG
                                    130 	.globl _EX0
                                    131 	.globl _ET0
                                    132 	.globl _EX1
                                    133 	.globl _ET1
                                    134 	.globl _ES
                                    135 	.globl _ET2
                                    136 	.globl _E_DIS
                                    137 	.globl _EA
                                    138 	.globl _P
                                    139 	.globl _F1
                                    140 	.globl _OV
                                    141 	.globl _RS0
                                    142 	.globl _RS1
                                    143 	.globl _F0
                                    144 	.globl _AC
                                    145 	.globl _CY
                                    146 	.globl _UEP1_DMA_H
                                    147 	.globl _UEP1_DMA_L
                                    148 	.globl _UEP1_DMA
                                    149 	.globl _UEP0_DMA_H
                                    150 	.globl _UEP0_DMA_L
                                    151 	.globl _UEP0_DMA
                                    152 	.globl _UEP2_3_MOD
                                    153 	.globl _UEP4_1_MOD
                                    154 	.globl _UEP3_DMA_H
                                    155 	.globl _UEP3_DMA_L
                                    156 	.globl _UEP3_DMA
                                    157 	.globl _UEP2_DMA_H
                                    158 	.globl _UEP2_DMA_L
                                    159 	.globl _UEP2_DMA
                                    160 	.globl _USB_DEV_AD
                                    161 	.globl _USB_CTRL
                                    162 	.globl _USB_INT_EN
                                    163 	.globl _UEP4_T_LEN
                                    164 	.globl _UEP4_CTRL
                                    165 	.globl _UEP0_T_LEN
                                    166 	.globl _UEP0_CTRL
                                    167 	.globl _USB_RX_LEN
                                    168 	.globl _USB_MIS_ST
                                    169 	.globl _USB_INT_ST
                                    170 	.globl _USB_INT_FG
                                    171 	.globl _UEP3_T_LEN
                                    172 	.globl _UEP3_CTRL
                                    173 	.globl _UEP2_T_LEN
                                    174 	.globl _UEP2_CTRL
                                    175 	.globl _UEP1_T_LEN
                                    176 	.globl _UEP1_CTRL
                                    177 	.globl _UDEV_CTRL
                                    178 	.globl _USB_C_CTRL
                                    179 	.globl _TKEY_DATH
                                    180 	.globl _TKEY_DATL
                                    181 	.globl _TKEY_DAT
                                    182 	.globl _TKEY_CTRL
                                    183 	.globl _ADC_DATA
                                    184 	.globl _ADC_CFG
                                    185 	.globl _ADC_CTRL
                                    186 	.globl _SBAUD1
                                    187 	.globl _SBUF1
                                    188 	.globl _SCON1
                                    189 	.globl _SPI0_SETUP
                                    190 	.globl _SPI0_CK_SE
                                    191 	.globl _SPI0_CTRL
                                    192 	.globl _SPI0_DATA
                                    193 	.globl _SPI0_STAT
                                    194 	.globl _PWM_CK_SE
                                    195 	.globl _PWM_CTRL
                                    196 	.globl _PWM_DATA1
                                    197 	.globl _PWM_DATA2
                                    198 	.globl _T2CAP1H
                                    199 	.globl _T2CAP1L
                                    200 	.globl _T2CAP1
                                    201 	.globl _TH2
                                    202 	.globl _TL2
                                    203 	.globl _T2COUNT
                                    204 	.globl _RCAP2H
                                    205 	.globl _RCAP2L
                                    206 	.globl _RCAP2
                                    207 	.globl _T2MOD
                                    208 	.globl _T2CON
                                    209 	.globl _SBUF
                                    210 	.globl _SCON
                                    211 	.globl _TH1
                                    212 	.globl _TH0
                                    213 	.globl _TL1
                                    214 	.globl _TL0
                                    215 	.globl _TMOD
                                    216 	.globl _TCON
                                    217 	.globl _XBUS_AUX
                                    218 	.globl _PIN_FUNC
                                    219 	.globl _P3_DIR_PU
                                    220 	.globl _P3_MOD_OC
                                    221 	.globl _P3
                                    222 	.globl _P2
                                    223 	.globl _P1_DIR_PU
                                    224 	.globl _P1_MOD_OC
                                    225 	.globl _P1
                                    226 	.globl _ROM_CTRL
                                    227 	.globl _ROM_DATA_H
                                    228 	.globl _ROM_DATA_L
                                    229 	.globl _ROM_DATA
                                    230 	.globl _ROM_ADDR_H
                                    231 	.globl _ROM_ADDR_L
                                    232 	.globl _ROM_ADDR
                                    233 	.globl _GPIO_IE
                                    234 	.globl _IP_EX
                                    235 	.globl _IE_EX
                                    236 	.globl _IP
                                    237 	.globl _IE
                                    238 	.globl _WDOG_COUNT
                                    239 	.globl _RESET_KEEP
                                    240 	.globl _WAKE_CTRL
                                    241 	.globl _CLOCK_CFG
                                    242 	.globl _PCON
                                    243 	.globl _GLOBAL_CFG
                                    244 	.globl _SAFE_MOD
                                    245 	.globl _DPH
                                    246 	.globl _DPL
                                    247 	.globl _SP
                                    248 	.globl _B
                                    249 	.globl _ACC
                                    250 	.globl _PSW
                                    251 	.globl _PORT_SWD_SETUP
                                    252 	.globl _SWJ_Sequence
                                    253 	.globl _SWD_Sequence
                                    254 	.globl _SWD_Transfer
                                    255 ;--------------------------------------------------------
                                    256 ; special function registers
                                    257 ;--------------------------------------------------------
                                    258 	.area RSEG    (ABS,DATA)
      000000                        259 	.org 0x0000
                           0000D0   260 _PSW	=	0x00d0
                           0000E0   261 _ACC	=	0x00e0
                           0000F0   262 _B	=	0x00f0
                           000081   263 _SP	=	0x0081
                           000082   264 _DPL	=	0x0082
                           000083   265 _DPH	=	0x0083
                           0000A1   266 _SAFE_MOD	=	0x00a1
                           0000B1   267 _GLOBAL_CFG	=	0x00b1
                           000087   268 _PCON	=	0x0087
                           0000B9   269 _CLOCK_CFG	=	0x00b9
                           0000A9   270 _WAKE_CTRL	=	0x00a9
                           0000FE   271 _RESET_KEEP	=	0x00fe
                           0000FF   272 _WDOG_COUNT	=	0x00ff
                           0000A8   273 _IE	=	0x00a8
                           0000B8   274 _IP	=	0x00b8
                           0000E8   275 _IE_EX	=	0x00e8
                           0000E9   276 _IP_EX	=	0x00e9
                           0000C7   277 _GPIO_IE	=	0x00c7
                           008584   278 _ROM_ADDR	=	0x8584
                           000084   279 _ROM_ADDR_L	=	0x0084
                           000085   280 _ROM_ADDR_H	=	0x0085
                           008F8E   281 _ROM_DATA	=	0x8f8e
                           00008E   282 _ROM_DATA_L	=	0x008e
                           00008F   283 _ROM_DATA_H	=	0x008f
                           000086   284 _ROM_CTRL	=	0x0086
                           000090   285 _P1	=	0x0090
                           000092   286 _P1_MOD_OC	=	0x0092
                           000093   287 _P1_DIR_PU	=	0x0093
                           0000A0   288 _P2	=	0x00a0
                           0000B0   289 _P3	=	0x00b0
                           000096   290 _P3_MOD_OC	=	0x0096
                           000097   291 _P3_DIR_PU	=	0x0097
                           0000C6   292 _PIN_FUNC	=	0x00c6
                           0000A2   293 _XBUS_AUX	=	0x00a2
                           000088   294 _TCON	=	0x0088
                           000089   295 _TMOD	=	0x0089
                           00008A   296 _TL0	=	0x008a
                           00008B   297 _TL1	=	0x008b
                           00008C   298 _TH0	=	0x008c
                           00008D   299 _TH1	=	0x008d
                           000098   300 _SCON	=	0x0098
                           000099   301 _SBUF	=	0x0099
                           0000C8   302 _T2CON	=	0x00c8
                           0000C9   303 _T2MOD	=	0x00c9
                           00CBCA   304 _RCAP2	=	0xcbca
                           0000CA   305 _RCAP2L	=	0x00ca
                           0000CB   306 _RCAP2H	=	0x00cb
                           00CDCC   307 _T2COUNT	=	0xcdcc
                           0000CC   308 _TL2	=	0x00cc
                           0000CD   309 _TH2	=	0x00cd
                           00CFCE   310 _T2CAP1	=	0xcfce
                           0000CE   311 _T2CAP1L	=	0x00ce
                           0000CF   312 _T2CAP1H	=	0x00cf
                           00009B   313 _PWM_DATA2	=	0x009b
                           00009C   314 _PWM_DATA1	=	0x009c
                           00009D   315 _PWM_CTRL	=	0x009d
                           00009E   316 _PWM_CK_SE	=	0x009e
                           0000F8   317 _SPI0_STAT	=	0x00f8
                           0000F9   318 _SPI0_DATA	=	0x00f9
                           0000FA   319 _SPI0_CTRL	=	0x00fa
                           0000FB   320 _SPI0_CK_SE	=	0x00fb
                           0000FC   321 _SPI0_SETUP	=	0x00fc
                           0000C0   322 _SCON1	=	0x00c0
                           0000C1   323 _SBUF1	=	0x00c1
                           0000C2   324 _SBAUD1	=	0x00c2
                           000080   325 _ADC_CTRL	=	0x0080
                           00009A   326 _ADC_CFG	=	0x009a
                           00009F   327 _ADC_DATA	=	0x009f
                           0000C3   328 _TKEY_CTRL	=	0x00c3
                           00C5C4   329 _TKEY_DAT	=	0xc5c4
                           0000C4   330 _TKEY_DATL	=	0x00c4
                           0000C5   331 _TKEY_DATH	=	0x00c5
                           000091   332 _USB_C_CTRL	=	0x0091
                           0000D1   333 _UDEV_CTRL	=	0x00d1
                           0000D2   334 _UEP1_CTRL	=	0x00d2
                           0000D3   335 _UEP1_T_LEN	=	0x00d3
                           0000D4   336 _UEP2_CTRL	=	0x00d4
                           0000D5   337 _UEP2_T_LEN	=	0x00d5
                           0000D6   338 _UEP3_CTRL	=	0x00d6
                           0000D7   339 _UEP3_T_LEN	=	0x00d7
                           0000D8   340 _USB_INT_FG	=	0x00d8
                           0000D9   341 _USB_INT_ST	=	0x00d9
                           0000DA   342 _USB_MIS_ST	=	0x00da
                           0000DB   343 _USB_RX_LEN	=	0x00db
                           0000DC   344 _UEP0_CTRL	=	0x00dc
                           0000DD   345 _UEP0_T_LEN	=	0x00dd
                           0000DE   346 _UEP4_CTRL	=	0x00de
                           0000DF   347 _UEP4_T_LEN	=	0x00df
                           0000E1   348 _USB_INT_EN	=	0x00e1
                           0000E2   349 _USB_CTRL	=	0x00e2
                           0000E3   350 _USB_DEV_AD	=	0x00e3
                           00E5E4   351 _UEP2_DMA	=	0xe5e4
                           0000E4   352 _UEP2_DMA_L	=	0x00e4
                           0000E5   353 _UEP2_DMA_H	=	0x00e5
                           00E7E6   354 _UEP3_DMA	=	0xe7e6
                           0000E6   355 _UEP3_DMA_L	=	0x00e6
                           0000E7   356 _UEP3_DMA_H	=	0x00e7
                           0000EA   357 _UEP4_1_MOD	=	0x00ea
                           0000EB   358 _UEP2_3_MOD	=	0x00eb
                           00EDEC   359 _UEP0_DMA	=	0xedec
                           0000EC   360 _UEP0_DMA_L	=	0x00ec
                           0000ED   361 _UEP0_DMA_H	=	0x00ed
                           00EFEE   362 _UEP1_DMA	=	0xefee
                           0000EE   363 _UEP1_DMA_L	=	0x00ee
                           0000EF   364 _UEP1_DMA_H	=	0x00ef
                                    365 ;--------------------------------------------------------
                                    366 ; special function bits
                                    367 ;--------------------------------------------------------
                                    368 	.area RSEG    (ABS,DATA)
      000000                        369 	.org 0x0000
                           0000D7   370 _CY	=	0x00d7
                           0000D6   371 _AC	=	0x00d6
                           0000D5   372 _F0	=	0x00d5
                           0000D4   373 _RS1	=	0x00d4
                           0000D3   374 _RS0	=	0x00d3
                           0000D2   375 _OV	=	0x00d2
                           0000D1   376 _F1	=	0x00d1
                           0000D0   377 _P	=	0x00d0
                           0000AF   378 _EA	=	0x00af
                           0000AE   379 _E_DIS	=	0x00ae
                           0000AD   380 _ET2	=	0x00ad
                           0000AC   381 _ES	=	0x00ac
                           0000AB   382 _ET1	=	0x00ab
                           0000AA   383 _EX1	=	0x00aa
                           0000A9   384 _ET0	=	0x00a9
                           0000A8   385 _EX0	=	0x00a8
                           0000BF   386 _PH_FLAG	=	0x00bf
                           0000BE   387 _PL_FLAG	=	0x00be
                           0000BD   388 _PT2	=	0x00bd
                           0000BC   389 _PS	=	0x00bc
                           0000BB   390 _PT1	=	0x00bb
                           0000BA   391 _PX1	=	0x00ba
                           0000B9   392 _PT0	=	0x00b9
                           0000B8   393 _PX0	=	0x00b8
                           0000EF   394 _IE_WDOG	=	0x00ef
                           0000EE   395 _IE_GPIO	=	0x00ee
                           0000ED   396 _IE_PWMX	=	0x00ed
                           0000EC   397 _IE_UART1	=	0x00ec
                           0000EB   398 _IE_ADC	=	0x00eb
                           0000EA   399 _IE_USB	=	0x00ea
                           0000E9   400 _IE_TKEY	=	0x00e9
                           0000E8   401 _IE_SPI0	=	0x00e8
                           000097   402 _SCK	=	0x0097
                           000097   403 _TXD1	=	0x0097
                           000097   404 _TIN5	=	0x0097
                           000096   405 _MISO	=	0x0096
                           000096   406 _RXD1	=	0x0096
                           000096   407 _TIN4	=	0x0096
                           000095   408 _MOSI	=	0x0095
                           000095   409 _PWM1	=	0x0095
                           000095   410 _TIN3	=	0x0095
                           000095   411 _UCC2	=	0x0095
                           000095   412 _AIN2	=	0x0095
                           000094   413 _T2_	=	0x0094
                           000094   414 _CAP1_	=	0x0094
                           000094   415 _SCS	=	0x0094
                           000094   416 _TIN2	=	0x0094
                           000094   417 _UCC1	=	0x0094
                           000094   418 _AIN1	=	0x0094
                           000093   419 _TXD_	=	0x0093
                           000092   420 _RXD_	=	0x0092
                           000091   421 _T2EX	=	0x0091
                           000091   422 _CAP2	=	0x0091
                           000091   423 _TIN1	=	0x0091
                           000091   424 _VBUS2	=	0x0091
                           000091   425 _AIN0	=	0x0091
                           000090   426 _T2	=	0x0090
                           000090   427 _CAP1	=	0x0090
                           000090   428 _TIN0	=	0x0090
                           0000B7   429 _UDM	=	0x00b7
                           0000B6   430 _UDP	=	0x00b6
                           0000B5   431 _T1	=	0x00b5
                           0000B4   432 _PWM2	=	0x00b4
                           0000B4   433 _RXD1_	=	0x00b4
                           0000B4   434 _T0	=	0x00b4
                           0000B3   435 _INT1	=	0x00b3
                           0000B2   436 _TXD1_	=	0x00b2
                           0000B2   437 _INT0	=	0x00b2
                           0000B2   438 _VBUS1	=	0x00b2
                           0000B2   439 _AIN3	=	0x00b2
                           0000B1   440 _PWM2_	=	0x00b1
                           0000B1   441 _TXD	=	0x00b1
                           0000B0   442 _PWM1_	=	0x00b0
                           0000B0   443 _RXD	=	0x00b0
                           00008F   444 _TF1	=	0x008f
                           00008E   445 _TR1	=	0x008e
                           00008D   446 _TF0	=	0x008d
                           00008C   447 _TR0	=	0x008c
                           00008B   448 _IE1	=	0x008b
                           00008A   449 _IT1	=	0x008a
                           000089   450 _IE0	=	0x0089
                           000088   451 _IT0	=	0x0088
                           00009F   452 _SM0	=	0x009f
                           00009E   453 _SM1	=	0x009e
                           00009D   454 _SM2	=	0x009d
                           00009C   455 _REN	=	0x009c
                           00009B   456 _TB8	=	0x009b
                           00009A   457 _RB8	=	0x009a
                           000099   458 _TI	=	0x0099
                           000098   459 _RI	=	0x0098
                           0000CF   460 _TF2	=	0x00cf
                           0000CF   461 _CAP1F	=	0x00cf
                           0000CE   462 _EXF2	=	0x00ce
                           0000CD   463 _RCLK	=	0x00cd
                           0000CC   464 _TCLK	=	0x00cc
                           0000CB   465 _EXEN2	=	0x00cb
                           0000CA   466 _TR2	=	0x00ca
                           0000C9   467 _C_T2	=	0x00c9
                           0000C8   468 _CP_RL2	=	0x00c8
                           0000FF   469 _S0_FST_ACT	=	0x00ff
                           0000FE   470 _S0_IF_OV	=	0x00fe
                           0000FD   471 _S0_IF_FIRST	=	0x00fd
                           0000FC   472 _S0_IF_BYTE	=	0x00fc
                           0000FB   473 _S0_FREE	=	0x00fb
                           0000FA   474 _S0_T_FIFO	=	0x00fa
                           0000F8   475 _S0_R_FIFO	=	0x00f8
                           0000C7   476 _U1SM0	=	0x00c7
                           0000C5   477 _U1SMOD	=	0x00c5
                           0000C4   478 _U1REN	=	0x00c4
                           0000C3   479 _U1TB8	=	0x00c3
                           0000C2   480 _U1RB8	=	0x00c2
                           0000C1   481 _U1TI	=	0x00c1
                           0000C0   482 _U1RI	=	0x00c0
                           000087   483 _CMPO	=	0x0087
                           000086   484 _CMP_IF	=	0x0086
                           000085   485 _ADC_IF	=	0x0085
                           000084   486 _ADC_START	=	0x0084
                           000083   487 _CMP_CHAN	=	0x0083
                           000081   488 _ADC_CHAN1	=	0x0081
                           000080   489 _ADC_CHAN0	=	0x0080
                           0000DF   490 _U_IS_NAK	=	0x00df
                           0000DE   491 _U_TOG_OK	=	0x00de
                           0000DD   492 _U_SIE_FREE	=	0x00dd
                           0000DC   493 _UIF_FIFO_OV	=	0x00dc
                           0000DA   494 _UIF_SUSPEND	=	0x00da
                           0000D9   495 _UIF_TRANSFER	=	0x00d9
                           0000D8   496 _UIF_BUS_RST	=	0x00d8
                           000095   497 _P1_5	=	0x0095
                           0000B2   498 _P3_2	=	0x00b2
                           000097   499 _P1_7	=	0x0097
                           000094   500 _P1_4	=	0x0094
                                    501 ;--------------------------------------------------------
                                    502 ; overlayable register banks
                                    503 ;--------------------------------------------------------
                                    504 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        505 	.ds 8
                                    506 ;--------------------------------------------------------
                                    507 ; internal ram data
                                    508 ;--------------------------------------------------------
                                    509 	.area DSEG    (DATA)
                                    510 ;--------------------------------------------------------
                                    511 ; overlayable items in internal ram 
                                    512 ;--------------------------------------------------------
                                    513 	.area	OSEG    (OVR,DATA)
      000048                        514 _SWJ_Sequence_PARM_2:
      000048                        515 	.ds 3
                                    516 	.area	OSEG    (OVR,DATA)
      000048                        517 _SWD_Sequence_PARM_2:
      000048                        518 	.ds 3
      00004B                        519 _SWD_Sequence_PARM_3:
      00004B                        520 	.ds 3
      00004E                        521 _SWD_Sequence_bits_65536_48:
      00004E                        522 	.ds 1
      00004F                        523 _SWD_Sequence_k_65536_48:
      00004F                        524 	.ds 1
                                    525 	.area	OSEG    (OVR,DATA)
      000048                        526 _SWD_Transfer_PARM_2:
      000048                        527 	.ds 2
      00004A                        528 _SWD_Transfer_val_65536_59:
      00004A                        529 	.ds 1
      00004B                        530 _SWD_Transfer_m_65536_59:
      00004B                        531 	.ds 1
                                    532 ;--------------------------------------------------------
                                    533 ; indirectly addressable internal ram data
                                    534 ;--------------------------------------------------------
                                    535 	.area ISEG    (DATA)
                                    536 ;--------------------------------------------------------
                                    537 ; absolute internal ram data
                                    538 ;--------------------------------------------------------
                                    539 	.area IABS    (ABS,DATA)
                                    540 	.area IABS    (ABS,DATA)
                                    541 ;--------------------------------------------------------
                                    542 ; bit data
                                    543 ;--------------------------------------------------------
                                    544 	.area BSEG    (BIT)
                                    545 ;--------------------------------------------------------
                                    546 ; paged external ram data
                                    547 ;--------------------------------------------------------
                                    548 	.area PSEG    (PAG,XDATA)
                                    549 ;--------------------------------------------------------
                                    550 ; external ram data
                                    551 ;--------------------------------------------------------
                                    552 	.area XSEG    (XDATA)
                                    553 ;--------------------------------------------------------
                                    554 ; absolute external ram data
                                    555 ;--------------------------------------------------------
                                    556 	.area XABS    (ABS,XDATA)
                                    557 ;--------------------------------------------------------
                                    558 ; external initialized ram data
                                    559 ;--------------------------------------------------------
                                    560 	.area XISEG   (XDATA)
                                    561 	.area HOME    (CODE)
                                    562 	.area GSINIT0 (CODE)
                                    563 	.area GSINIT1 (CODE)
                                    564 	.area GSINIT2 (CODE)
                                    565 	.area GSINIT3 (CODE)
                                    566 	.area GSINIT4 (CODE)
                                    567 	.area GSINIT5 (CODE)
                                    568 	.area GSINIT  (CODE)
                                    569 	.area GSFINAL (CODE)
                                    570 	.area CSEG    (CODE)
                                    571 ;--------------------------------------------------------
                                    572 ; global & static initialisations
                                    573 ;--------------------------------------------------------
                                    574 	.area HOME    (CODE)
                                    575 	.area GSINIT  (CODE)
                                    576 	.area GSFINAL (CODE)
                                    577 	.area GSINIT  (CODE)
                                    578 ;--------------------------------------------------------
                                    579 ; Home
                                    580 ;--------------------------------------------------------
                                    581 	.area HOME    (CODE)
                                    582 	.area HOME    (CODE)
                                    583 ;--------------------------------------------------------
                                    584 ; code
                                    585 ;--------------------------------------------------------
                                    586 	.area CSEG    (CODE)
                                    587 ;------------------------------------------------------------
                                    588 ;Allocation info for local variables in function 'PORT_SWD_SETUP'
                                    589 ;------------------------------------------------------------
                                    590 ;	SW_DP.c:49: void PORT_SWD_SETUP(void)
                                    591 ;	-----------------------------------------
                                    592 ;	 function PORT_SWD_SETUP
                                    593 ;	-----------------------------------------
      0014A2                        594 _PORT_SWD_SETUP:
                           000007   595 	ar7 = 0x07
                           000006   596 	ar6 = 0x06
                           000005   597 	ar5 = 0x05
                           000004   598 	ar4 = 0x04
                           000003   599 	ar3 = 0x03
                           000002   600 	ar2 = 0x02
                           000001   601 	ar1 = 0x01
                           000000   602 	ar0 = 0x00
                                    603 ;	SW_DP.c:55: P3_MOD_OC = P3_MOD_OC | (1 << 2);
      0014A2 43 96 04         [24]  604 	orl	_P3_MOD_OC,#0x04
                                    605 ;	SW_DP.c:56: P3_DIR_PU = P3_DIR_PU | (1 << 2);
      0014A5 43 97 04         [24]  606 	orl	_P3_DIR_PU,#0x04
                                    607 ;	SW_DP.c:57: SWK = 1;
                                    608 ;	assignBit
      0014A8 D2 B2            [12]  609 	setb	_P3_2
                                    610 ;	SW_DP.c:61: P1_MOD_OC = P1_MOD_OC | (1 << 7);
      0014AA 43 92 80         [24]  611 	orl	_P1_MOD_OC,#0x80
                                    612 ;	SW_DP.c:62: P1_DIR_PU = P1_DIR_PU | (1 << 7);
      0014AD 43 93 80         [24]  613 	orl	_P1_DIR_PU,#0x80
                                    614 ;	SW_DP.c:63: SWD = 1;
                                    615 ;	assignBit
      0014B0 D2 97            [12]  616 	setb	_P1_7
                                    617 ;	SW_DP.c:67: P1_MOD_OC = P1_MOD_OC | (1 << 5);
      0014B2 43 92 20         [24]  618 	orl	_P1_MOD_OC,#0x20
                                    619 ;	SW_DP.c:68: P1_DIR_PU = P1_DIR_PU | (1 << 5);
      0014B5 43 93 20         [24]  620 	orl	_P1_DIR_PU,#0x20
                                    621 ;	SW_DP.c:69: RST = 1;
                                    622 ;	assignBit
      0014B8 D2 95            [12]  623 	setb	_P1_5
                                    624 ;	SW_DP.c:70: }
      0014BA 22               [24]  625 	ret
                                    626 ;------------------------------------------------------------
                                    627 ;Allocation info for local variables in function 'SWJ_Sequence'
                                    628 ;------------------------------------------------------------
                                    629 ;datas                     Allocated with name '_SWJ_Sequence_PARM_2'
                                    630 ;count                     Allocated to registers 
                                    631 ;val                       Allocated to registers r6 
                                    632 ;n                         Allocated to registers r5 
                                    633 ;------------------------------------------------------------
                                    634 ;	SW_DP.c:76: void SWJ_Sequence(uint8_t count, const uint8_t *datas)
                                    635 ;	-----------------------------------------
                                    636 ;	 function SWJ_Sequence
                                    637 ;	-----------------------------------------
      0014BB                        638 _SWJ_Sequence:
      0014BB AF 82            [24]  639 	mov	r7,dpl
                                    640 ;	SW_DP.c:81: val = 0U;
      0014BD 7E 00            [12]  641 	mov	r6,#0x00
                                    642 ;	SW_DP.c:82: n = 0U;
      0014BF 7D 00            [12]  643 	mov	r5,#0x00
                                    644 ;	SW_DP.c:83: while (count--)
      0014C1 AA 48            [24]  645 	mov	r2,_SWJ_Sequence_PARM_2
      0014C3 AB 49            [24]  646 	mov	r3,(_SWJ_Sequence_PARM_2 + 1)
      0014C5 AC 4A            [24]  647 	mov	r4,(_SWJ_Sequence_PARM_2 + 2)
      0014C7                        648 00112$:
      0014C7 8F 01            [24]  649 	mov	ar1,r7
      0014C9 1F               [12]  650 	dec	r7
      0014CA E9               [12]  651 	mov	a,r1
      0014CB 60 47            [24]  652 	jz	00115$
                                    653 ;	SW_DP.c:85: if (n == 0U)
      0014CD ED               [12]  654 	mov	a,r5
      0014CE 70 11            [24]  655 	jnz	00103$
                                    656 ;	SW_DP.c:87: val = *datas++;
      0014D0 8A 82            [24]  657 	mov	dpl,r2
      0014D2 8B 83            [24]  658 	mov	dph,r3
      0014D4 8C F0            [24]  659 	mov	b,r4
      0014D6 12 25 DC         [24]  660 	lcall	__gptrget
      0014D9 FE               [12]  661 	mov	r6,a
      0014DA A3               [24]  662 	inc	dptr
      0014DB AA 82            [24]  663 	mov	r2,dpl
      0014DD AB 83            [24]  664 	mov	r3,dph
                                    665 ;	SW_DP.c:88: n = 8U;
      0014DF 7D 08            [12]  666 	mov	r5,#0x08
                                    667 ;	SW_DP.c:90: while(!TF2);
      0014E1                        668 00103$:
      0014E1 30 CF FD         [24]  669 	jnb	_TF2,00103$
                                    670 ;	SW_DP.c:91: if (val & 1U)
      0014E4 EE               [12]  671 	mov	a,r6
      0014E5 30 E0 04         [24]  672 	jnb	acc.0,00107$
                                    673 ;	SW_DP.c:93: SWD = 1;
                                    674 ;	assignBit
      0014E8 D2 97            [12]  675 	setb	_P1_7
      0014EA 80 02            [24]  676 	sjmp	00108$
      0014EC                        677 00107$:
                                    678 ;	SW_DP.c:97: SWD = 0;
                                    679 ;	assignBit
      0014EC C2 97            [12]  680 	clr	_P1_7
      0014EE                        681 00108$:
                                    682 ;	SW_DP.c:100: SWK = 0; TR2=0;TL2=RCAP2L;TH2=RCAP2H;TF2=0;TR2=1;
                                    683 ;	assignBit
      0014EE C2 B2            [12]  684 	clr	_P3_2
                                    685 ;	assignBit
      0014F0 C2 CA            [12]  686 	clr	_TR2
      0014F2 85 CA CC         [24]  687 	mov	_TL2,_RCAP2L
      0014F5 85 CB CD         [24]  688 	mov	_TH2,_RCAP2H
                                    689 ;	assignBit
      0014F8 C2 CF            [12]  690 	clr	_TF2
                                    691 ;	assignBit
      0014FA D2 CA            [12]  692 	setb	_TR2
                                    693 ;	SW_DP.c:101: while(!TF2); SWK = 1; TR2=0;TL2=RCAP2L;TH2=RCAP2H;TF2=0;TR2=1;
      0014FC                        694 00109$:
      0014FC 30 CF FD         [24]  695 	jnb	_TF2,00109$
                                    696 ;	assignBit
      0014FF D2 B2            [12]  697 	setb	_P3_2
                                    698 ;	assignBit
      001501 C2 CA            [12]  699 	clr	_TR2
      001503 85 CA CC         [24]  700 	mov	_TL2,_RCAP2L
      001506 85 CB CD         [24]  701 	mov	_TH2,_RCAP2H
                                    702 ;	assignBit
      001509 C2 CF            [12]  703 	clr	_TF2
                                    704 ;	assignBit
      00150B D2 CA            [12]  705 	setb	_TR2
                                    706 ;	SW_DP.c:102: val >>= 1;
      00150D EE               [12]  707 	mov	a,r6
      00150E C3               [12]  708 	clr	c
      00150F 13               [12]  709 	rrc	a
      001510 FE               [12]  710 	mov	r6,a
                                    711 ;	SW_DP.c:103: n--;
      001511 1D               [12]  712 	dec	r5
      001512 80 B3            [24]  713 	sjmp	00112$
      001514                        714 00115$:
                                    715 ;	SW_DP.c:105: }
      001514 22               [24]  716 	ret
                                    717 ;------------------------------------------------------------
                                    718 ;Allocation info for local variables in function 'SWD_Sequence'
                                    719 ;------------------------------------------------------------
                                    720 ;swdo                      Allocated with name '_SWD_Sequence_PARM_2'
                                    721 ;swdi                      Allocated with name '_SWD_Sequence_PARM_3'
                                    722 ;info                      Allocated to registers r7 
                                    723 ;val                       Allocated to registers r3 
                                    724 ;bits                      Allocated with name '_SWD_Sequence_bits_65536_48'
                                    725 ;n                         Allocated to registers r6 
                                    726 ;k                         Allocated with name '_SWD_Sequence_k_65536_48'
                                    727 ;------------------------------------------------------------
                                    728 ;	SW_DP.c:112: void SWD_Sequence(uint8_t info, const uint8_t *swdo, uint8_t *swdi)
                                    729 ;	-----------------------------------------
                                    730 ;	 function SWD_Sequence
                                    731 ;	-----------------------------------------
      001515                        732 _SWD_Sequence:
      001515 AF 82            [24]  733 	mov	r7,dpl
                                    734 ;	SW_DP.c:118: n = info & SWD_SEQUENCE_CLK;
      001517 74 3F            [12]  735 	mov	a,#0x3f
      001519 5F               [12]  736 	anl	a,r7
                                    737 ;	SW_DP.c:119: if (n == 0U)
      00151A FE               [12]  738 	mov	r6,a
      00151B 70 02            [24]  739 	jnz	00102$
                                    740 ;	SW_DP.c:121: n = 64U;
      00151D 7E 40            [12]  741 	mov	r6,#0x40
      00151F                        742 00102$:
                                    743 ;	SW_DP.c:124: if (info & SWD_SEQUENCE_DIN)
      00151F EF               [12]  744 	mov	a,r7
      001520 30 E7 71         [24]  745 	jnb	acc.7,00146$
                                    746 ;	SW_DP.c:126: while (n)
      001523 AC 4B            [24]  747 	mov	r4,_SWD_Sequence_PARM_3
      001525 AD 4C            [24]  748 	mov	r5,(_SWD_Sequence_PARM_3 + 1)
      001527 AF 4D            [24]  749 	mov	r7,(_SWD_Sequence_PARM_3 + 2)
      001529                        750 00110$:
      001529 EE               [12]  751 	mov	a,r6
      00152A 70 01            [24]  752 	jnz	00230$
      00152C 22               [24]  753 	ret
      00152D                        754 00230$:
                                    755 ;	SW_DP.c:128: val = 0U;
      00152D 7B 00            [12]  756 	mov	r3,#0x00
                                    757 ;	SW_DP.c:129: for (k = 8U; k && n; k--, n--)
      00152F 75 4F 08         [24]  758 	mov	_SWD_Sequence_k_65536_48,#0x08
      001532 8E 01            [24]  759 	mov	ar1,r6
      001534                        760 00128$:
      001534 E5 4F            [12]  761 	mov	a,_SWD_Sequence_k_65536_48
      001536 60 3C            [24]  762 	jz	00153$
      001538 E9               [12]  763 	mov	a,r1
      001539 60 39            [24]  764 	jz	00153$
                                    765 ;	SW_DP.c:131: SW_READ_BIT(bits);
      00153B                        766 00103$:
      00153B 30 CF FD         [24]  767 	jnb	_TF2,00103$
                                    768 ;	assignBit
      00153E C2 B2            [12]  769 	clr	_P3_2
                                    770 ;	assignBit
      001540 C2 CA            [12]  771 	clr	_TR2
      001542 85 CA CC         [24]  772 	mov	_TL2,_RCAP2L
      001545 85 CB CD         [24]  773 	mov	_TH2,_RCAP2H
                                    774 ;	assignBit
      001548 C2 CF            [12]  775 	clr	_TF2
                                    776 ;	assignBit
      00154A D2 CA            [12]  777 	setb	_TR2
      00154C                        778 00106$:
      00154C 30 CF FD         [24]  779 	jnb	_TF2,00106$
      00154F A2 97            [12]  780 	mov	c,_P1_7
      001551 E4               [12]  781 	clr	a
      001552 33               [12]  782 	rlc	a
      001553 F5 4E            [12]  783 	mov	_SWD_Sequence_bits_65536_48,a
                                    784 ;	assignBit
      001555 D2 B2            [12]  785 	setb	_P3_2
                                    786 ;	assignBit
      001557 C2 CA            [12]  787 	clr	_TR2
      001559 85 CA CC         [24]  788 	mov	_TL2,_RCAP2L
      00155C 85 CB CD         [24]  789 	mov	_TH2,_RCAP2H
                                    790 ;	assignBit
      00155F C2 CF            [12]  791 	clr	_TF2
                                    792 ;	assignBit
      001561 D2 CA            [12]  793 	setb	_TR2
                                    794 ;	SW_DP.c:132: val >>= 1;
      001563 EB               [12]  795 	mov	a,r3
      001564 C3               [12]  796 	clr	c
      001565 13               [12]  797 	rrc	a
      001566 F8               [12]  798 	mov	r0,a
                                    799 ;	SW_DP.c:133: val |= bits << 7;
      001567 E5 4E            [12]  800 	mov	a,_SWD_Sequence_bits_65536_48
      001569 03               [12]  801 	rr	a
      00156A 54 80            [12]  802 	anl	a,#0x80
      00156C FA               [12]  803 	mov	r2,a
      00156D 48               [12]  804 	orl	a,r0
      00156E FB               [12]  805 	mov	r3,a
                                    806 ;	SW_DP.c:129: for (k = 8U; k && n; k--, n--)
      00156F 15 4F            [12]  807 	dec	_SWD_Sequence_k_65536_48
      001571 19               [12]  808 	dec	r1
      001572 80 C0            [24]  809 	sjmp	00128$
      001574                        810 00153$:
      001574 89 06            [24]  811 	mov	ar6,r1
                                    812 ;	SW_DP.c:135: val >>= k;
      001576 85 4F F0         [24]  813 	mov	b,_SWD_Sequence_k_65536_48
      001579 05 F0            [12]  814 	inc	b
      00157B EB               [12]  815 	mov	a,r3
      00157C 80 02            [24]  816 	sjmp	00236$
      00157E                        817 00235$:
      00157E C3               [12]  818 	clr	c
      00157F 13               [12]  819 	rrc	a
      001580                        820 00236$:
      001580 D5 F0 FB         [24]  821 	djnz	b,00235$
                                    822 ;	SW_DP.c:136: *swdi++ = (uint8_t)val;
      001583 FB               [12]  823 	mov	r3,a
      001584 8C 82            [24]  824 	mov	dpl,r4
      001586 8D 83            [24]  825 	mov	dph,r5
      001588 8F F0            [24]  826 	mov	b,r7
      00158A 12 25 C1         [24]  827 	lcall	__gptrput
      00158D A3               [24]  828 	inc	dptr
      00158E AC 82            [24]  829 	mov	r4,dpl
      001590 AD 83            [24]  830 	mov	r5,dph
                                    831 ;	SW_DP.c:141: while (n)
      001592 80 95            [24]  832 	sjmp	00110$
      001594                        833 00146$:
      001594 AC 48            [24]  834 	mov	r4,_SWD_Sequence_PARM_2
      001596 AD 49            [24]  835 	mov	r5,(_SWD_Sequence_PARM_2 + 1)
      001598 AF 4A            [24]  836 	mov	r7,(_SWD_Sequence_PARM_2 + 2)
      00159A                        837 00120$:
      00159A EE               [12]  838 	mov	a,r6
      00159B 60 4C            [24]  839 	jz	00134$
                                    840 ;	SW_DP.c:143: val = *swdo++;
      00159D 8C 82            [24]  841 	mov	dpl,r4
      00159F 8D 83            [24]  842 	mov	dph,r5
      0015A1 8F F0            [24]  843 	mov	b,r7
      0015A3 12 25 DC         [24]  844 	lcall	__gptrget
      0015A6 FB               [12]  845 	mov	r3,a
      0015A7 A3               [24]  846 	inc	dptr
      0015A8 AC 82            [24]  847 	mov	r4,dpl
      0015AA AD 83            [24]  848 	mov	r5,dph
                                    849 ;	SW_DP.c:144: for (k = 8U; k && n; k--, n--)
      0015AC 7A 08            [12]  850 	mov	r2,#0x08
      0015AE 8E 01            [24]  851 	mov	ar1,r6
      0015B0                        852 00132$:
      0015B0 EA               [12]  853 	mov	a,r2
      0015B1 60 E7            [24]  854 	jz	00120$
      0015B3 E9               [12]  855 	mov	a,r1
      0015B4 60 E4            [24]  856 	jz	00120$
                                    857 ;	SW_DP.c:146: SW_WRITE_BIT(val);
      0015B6                        858 00113$:
      0015B6 30 CF FD         [24]  859 	jnb	_TF2,00113$
      0015B9 EB               [12]  860 	mov	a,r3
      0015BA 54 01            [12]  861 	anl	a,#0x01
      0015BC 24 FF            [12]  862 	add	a,#0xff
      0015BE 92 97            [24]  863 	mov	_P1_7,c
                                    864 ;	assignBit
      0015C0 C2 B2            [12]  865 	clr	_P3_2
                                    866 ;	assignBit
      0015C2 C2 CA            [12]  867 	clr	_TR2
      0015C4 85 CA CC         [24]  868 	mov	_TL2,_RCAP2L
      0015C7 85 CB CD         [24]  869 	mov	_TH2,_RCAP2H
                                    870 ;	assignBit
      0015CA C2 CF            [12]  871 	clr	_TF2
                                    872 ;	assignBit
      0015CC D2 CA            [12]  873 	setb	_TR2
      0015CE                        874 00116$:
      0015CE 30 CF FD         [24]  875 	jnb	_TF2,00116$
                                    876 ;	assignBit
      0015D1 D2 B2            [12]  877 	setb	_P3_2
                                    878 ;	assignBit
      0015D3 C2 CA            [12]  879 	clr	_TR2
      0015D5 85 CA CC         [24]  880 	mov	_TL2,_RCAP2L
      0015D8 85 CB CD         [24]  881 	mov	_TH2,_RCAP2H
                                    882 ;	assignBit
      0015DB C2 CF            [12]  883 	clr	_TF2
                                    884 ;	assignBit
      0015DD D2 CA            [12]  885 	setb	_TR2
                                    886 ;	SW_DP.c:147: val >>= 1;
      0015DF EB               [12]  887 	mov	a,r3
      0015E0 C3               [12]  888 	clr	c
      0015E1 13               [12]  889 	rrc	a
      0015E2 FB               [12]  890 	mov	r3,a
                                    891 ;	SW_DP.c:144: for (k = 8U; k && n; k--, n--)
      0015E3 1A               [12]  892 	dec	r2
      0015E4 19               [12]  893 	dec	r1
      0015E5 89 06            [24]  894 	mov	ar6,r1
      0015E7 80 C7            [24]  895 	sjmp	00132$
      0015E9                        896 00134$:
                                    897 ;	SW_DP.c:151: }
      0015E9 22               [24]  898 	ret
                                    899 ;------------------------------------------------------------
                                    900 ;Allocation info for local variables in function 'SWD_Transfer'
                                    901 ;------------------------------------------------------------
                                    902 ;datas                     Allocated with name '_SWD_Transfer_PARM_2'
                                    903 ;req                       Allocated to registers r7 
                                    904 ;ack                       Allocated to registers r6 
                                    905 ;bits                      Allocated to registers r6 
                                    906 ;val                       Allocated with name '_SWD_Transfer_val_65536_59'
                                    907 ;parity                    Allocated to registers r6 
                                    908 ;m                         Allocated with name '_SWD_Transfer_m_65536_59'
                                    909 ;n                         Allocated to registers r5 
                                    910 ;------------------------------------------------------------
                                    911 ;	SW_DP.c:157: uint8_t SWD_Transfer(uint8_t req, uint8_t __xdata *datas)
                                    912 ;	-----------------------------------------
                                    913 ;	 function SWD_Transfer
                                    914 ;	-----------------------------------------
      0015EA                        915 _SWD_Transfer:
      0015EA AF 82            [24]  916 	mov	r7,dpl
                                    917 ;	SW_DP.c:168: SW_WRITE_BIT(1U); /* Start Bit */
      0015EC                        918 00101$:
      0015EC 30 CF FD         [24]  919 	jnb	_TF2,00101$
                                    920 ;	assignBit
      0015EF D2 97            [12]  921 	setb	_P1_7
                                    922 ;	assignBit
      0015F1 C2 B2            [12]  923 	clr	_P3_2
                                    924 ;	assignBit
      0015F3 C2 CA            [12]  925 	clr	_TR2
      0015F5 85 CA CC         [24]  926 	mov	_TL2,_RCAP2L
      0015F8 85 CB CD         [24]  927 	mov	_TH2,_RCAP2H
                                    928 ;	assignBit
      0015FB C2 CF            [12]  929 	clr	_TF2
                                    930 ;	assignBit
      0015FD D2 CA            [12]  931 	setb	_TR2
      0015FF                        932 00104$:
      0015FF 30 CF FD         [24]  933 	jnb	_TF2,00104$
                                    934 ;	assignBit
      001602 D2 B2            [12]  935 	setb	_P3_2
                                    936 ;	assignBit
      001604 C2 CA            [12]  937 	clr	_TR2
      001606 85 CA CC         [24]  938 	mov	_TL2,_RCAP2L
      001609 85 CB CD         [24]  939 	mov	_TH2,_RCAP2H
                                    940 ;	assignBit
      00160C C2 CF            [12]  941 	clr	_TF2
                                    942 ;	assignBit
      00160E D2 CA            [12]  943 	setb	_TR2
                                    944 ;	SW_DP.c:169: bits = req >> 0;
      001610 8F 06            [24]  945 	mov	ar6,r7
                                    946 ;	SW_DP.c:170: SW_WRITE_BIT(bits); /* APnDP Bit */
      001612                        947 00107$:
      001612 30 CF FD         [24]  948 	jnb	_TF2,00107$
      001615 EE               [12]  949 	mov	a,r6
      001616 54 01            [12]  950 	anl	a,#0x01
      001618 24 FF            [12]  951 	add	a,#0xff
      00161A 92 97            [24]  952 	mov	_P1_7,c
                                    953 ;	assignBit
      00161C C2 B2            [12]  954 	clr	_P3_2
                                    955 ;	assignBit
      00161E C2 CA            [12]  956 	clr	_TR2
      001620 85 CA CC         [24]  957 	mov	_TL2,_RCAP2L
      001623 85 CB CD         [24]  958 	mov	_TH2,_RCAP2H
                                    959 ;	assignBit
      001626 C2 CF            [12]  960 	clr	_TF2
                                    961 ;	assignBit
      001628 D2 CA            [12]  962 	setb	_TR2
      00162A                        963 00110$:
      00162A 30 CF FD         [24]  964 	jnb	_TF2,00110$
                                    965 ;	assignBit
      00162D D2 B2            [12]  966 	setb	_P3_2
                                    967 ;	assignBit
      00162F C2 CA            [12]  968 	clr	_TR2
      001631 85 CA CC         [24]  969 	mov	_TL2,_RCAP2L
      001634 85 CB CD         [24]  970 	mov	_TH2,_RCAP2H
                                    971 ;	assignBit
      001637 C2 CF            [12]  972 	clr	_TF2
                                    973 ;	assignBit
      001639 D2 CA            [12]  974 	setb	_TR2
                                    975 ;	SW_DP.c:171: parity += bits;
                                    976 ;	SW_DP.c:172: bits = req >> 1;
      00163B EF               [12]  977 	mov	a,r7
      00163C C3               [12]  978 	clr	c
      00163D 13               [12]  979 	rrc	a
      00163E FD               [12]  980 	mov	r5,a
                                    981 ;	SW_DP.c:173: SW_WRITE_BIT(bits); /* RnW Bit */
      00163F                        982 00113$:
      00163F 30 CF FD         [24]  983 	jnb	_TF2,00113$
      001642 ED               [12]  984 	mov	a,r5
      001643 54 01            [12]  985 	anl	a,#0x01
      001645 24 FF            [12]  986 	add	a,#0xff
      001647 92 97            [24]  987 	mov	_P1_7,c
                                    988 ;	assignBit
      001649 C2 B2            [12]  989 	clr	_P3_2
                                    990 ;	assignBit
      00164B C2 CA            [12]  991 	clr	_TR2
      00164D 85 CA CC         [24]  992 	mov	_TL2,_RCAP2L
      001650 85 CB CD         [24]  993 	mov	_TH2,_RCAP2H
                                    994 ;	assignBit
      001653 C2 CF            [12]  995 	clr	_TF2
                                    996 ;	assignBit
      001655 D2 CA            [12]  997 	setb	_TR2
      001657                        998 00116$:
      001657 30 CF FD         [24]  999 	jnb	_TF2,00116$
                                   1000 ;	assignBit
      00165A D2 B2            [12] 1001 	setb	_P3_2
                                   1002 ;	assignBit
      00165C C2 CA            [12] 1003 	clr	_TR2
      00165E 85 CA CC         [24] 1004 	mov	_TL2,_RCAP2L
      001661 85 CB CD         [24] 1005 	mov	_TH2,_RCAP2H
                                   1006 ;	assignBit
      001664 C2 CF            [12] 1007 	clr	_TF2
                                   1008 ;	assignBit
      001666 D2 CA            [12] 1009 	setb	_TR2
                                   1010 ;	SW_DP.c:174: parity += bits;
      001668 ED               [12] 1011 	mov	a,r5
      001669 2E               [12] 1012 	add	a,r6
      00166A FE               [12] 1013 	mov	r6,a
                                   1014 ;	SW_DP.c:175: bits = req >> 2;
      00166B EF               [12] 1015 	mov	a,r7
      00166C 03               [12] 1016 	rr	a
      00166D 03               [12] 1017 	rr	a
      00166E 54 3F            [12] 1018 	anl	a,#0x3f
      001670 FD               [12] 1019 	mov	r5,a
                                   1020 ;	SW_DP.c:176: SW_WRITE_BIT(bits); /* A2 Bit */
      001671                       1021 00119$:
      001671 30 CF FD         [24] 1022 	jnb	_TF2,00119$
      001674 ED               [12] 1023 	mov	a,r5
      001675 54 01            [12] 1024 	anl	a,#0x01
      001677 24 FF            [12] 1025 	add	a,#0xff
      001679 92 97            [24] 1026 	mov	_P1_7,c
                                   1027 ;	assignBit
      00167B C2 B2            [12] 1028 	clr	_P3_2
                                   1029 ;	assignBit
      00167D C2 CA            [12] 1030 	clr	_TR2
      00167F 85 CA CC         [24] 1031 	mov	_TL2,_RCAP2L
      001682 85 CB CD         [24] 1032 	mov	_TH2,_RCAP2H
                                   1033 ;	assignBit
      001685 C2 CF            [12] 1034 	clr	_TF2
                                   1035 ;	assignBit
      001687 D2 CA            [12] 1036 	setb	_TR2
      001689                       1037 00122$:
      001689 30 CF FD         [24] 1038 	jnb	_TF2,00122$
                                   1039 ;	assignBit
      00168C D2 B2            [12] 1040 	setb	_P3_2
                                   1041 ;	assignBit
      00168E C2 CA            [12] 1042 	clr	_TR2
      001690 85 CA CC         [24] 1043 	mov	_TL2,_RCAP2L
      001693 85 CB CD         [24] 1044 	mov	_TH2,_RCAP2H
                                   1045 ;	assignBit
      001696 C2 CF            [12] 1046 	clr	_TF2
                                   1047 ;	assignBit
      001698 D2 CA            [12] 1048 	setb	_TR2
                                   1049 ;	SW_DP.c:177: parity += bits;
      00169A ED               [12] 1050 	mov	a,r5
      00169B 2E               [12] 1051 	add	a,r6
      00169C FE               [12] 1052 	mov	r6,a
                                   1053 ;	SW_DP.c:178: bits = req >> 3;
      00169D EF               [12] 1054 	mov	a,r7
      00169E C4               [12] 1055 	swap	a
      00169F 23               [12] 1056 	rl	a
      0016A0 54 1F            [12] 1057 	anl	a,#0x1f
      0016A2 FD               [12] 1058 	mov	r5,a
                                   1059 ;	SW_DP.c:179: SW_WRITE_BIT(bits); /* A3 Bit */
      0016A3                       1060 00125$:
      0016A3 30 CF FD         [24] 1061 	jnb	_TF2,00125$
      0016A6 ED               [12] 1062 	mov	a,r5
      0016A7 54 01            [12] 1063 	anl	a,#0x01
      0016A9 FC               [12] 1064 	mov	r4,a
      0016AA 24 FF            [12] 1065 	add	a,#0xff
      0016AC 92 97            [24] 1066 	mov	_P1_7,c
                                   1067 ;	assignBit
      0016AE C2 B2            [12] 1068 	clr	_P3_2
                                   1069 ;	assignBit
      0016B0 C2 CA            [12] 1070 	clr	_TR2
      0016B2 85 CA CC         [24] 1071 	mov	_TL2,_RCAP2L
      0016B5 85 CB CD         [24] 1072 	mov	_TH2,_RCAP2H
                                   1073 ;	assignBit
      0016B8 C2 CF            [12] 1074 	clr	_TF2
                                   1075 ;	assignBit
      0016BA D2 CA            [12] 1076 	setb	_TR2
      0016BC                       1077 00128$:
      0016BC 30 CF FD         [24] 1078 	jnb	_TF2,00128$
                                   1079 ;	assignBit
      0016BF D2 B2            [12] 1080 	setb	_P3_2
                                   1081 ;	assignBit
      0016C1 C2 CA            [12] 1082 	clr	_TR2
      0016C3 85 CA CC         [24] 1083 	mov	_TL2,_RCAP2L
      0016C6 85 CB CD         [24] 1084 	mov	_TH2,_RCAP2H
                                   1085 ;	assignBit
      0016C9 C2 CF            [12] 1086 	clr	_TF2
                                   1087 ;	assignBit
      0016CB D2 CA            [12] 1088 	setb	_TR2
                                   1089 ;	SW_DP.c:180: parity += bits;
      0016CD ED               [12] 1090 	mov	a,r5
      0016CE 2E               [12] 1091 	add	a,r6
      0016CF FE               [12] 1092 	mov	r6,a
                                   1093 ;	SW_DP.c:181: SW_WRITE_BIT(parity); /* Parity Bit */
      0016D0                       1094 00131$:
      0016D0 30 CF FD         [24] 1095 	jnb	_TF2,00131$
      0016D3 EE               [12] 1096 	mov	a,r6
      0016D4 54 01            [12] 1097 	anl	a,#0x01
      0016D6 24 FF            [12] 1098 	add	a,#0xff
      0016D8 92 97            [24] 1099 	mov	_P1_7,c
                                   1100 ;	assignBit
      0016DA C2 B2            [12] 1101 	clr	_P3_2
                                   1102 ;	assignBit
      0016DC C2 CA            [12] 1103 	clr	_TR2
      0016DE 85 CA CC         [24] 1104 	mov	_TL2,_RCAP2L
      0016E1 85 CB CD         [24] 1105 	mov	_TH2,_RCAP2H
                                   1106 ;	assignBit
      0016E4 C2 CF            [12] 1107 	clr	_TF2
                                   1108 ;	assignBit
      0016E6 D2 CA            [12] 1109 	setb	_TR2
      0016E8                       1110 00134$:
      0016E8 30 CF FD         [24] 1111 	jnb	_TF2,00134$
                                   1112 ;	assignBit
      0016EB D2 B2            [12] 1113 	setb	_P3_2
                                   1114 ;	assignBit
      0016ED C2 CA            [12] 1115 	clr	_TR2
      0016EF 85 CA CC         [24] 1116 	mov	_TL2,_RCAP2L
      0016F2 85 CB CD         [24] 1117 	mov	_TH2,_RCAP2H
                                   1118 ;	assignBit
      0016F5 C2 CF            [12] 1119 	clr	_TF2
                                   1120 ;	assignBit
      0016F7 D2 CA            [12] 1121 	setb	_TR2
                                   1122 ;	SW_DP.c:182: SW_WRITE_BIT(0U);     /* Stop Bit */
      0016F9                       1123 00137$:
      0016F9 30 CF FD         [24] 1124 	jnb	_TF2,00137$
                                   1125 ;	assignBit
      0016FC C2 97            [12] 1126 	clr	_P1_7
                                   1127 ;	assignBit
      0016FE C2 B2            [12] 1128 	clr	_P3_2
                                   1129 ;	assignBit
      001700 C2 CA            [12] 1130 	clr	_TR2
      001702 85 CA CC         [24] 1131 	mov	_TL2,_RCAP2L
      001705 85 CB CD         [24] 1132 	mov	_TH2,_RCAP2H
                                   1133 ;	assignBit
      001708 C2 CF            [12] 1134 	clr	_TF2
                                   1135 ;	assignBit
      00170A D2 CA            [12] 1136 	setb	_TR2
      00170C                       1137 00140$:
      00170C 30 CF FD         [24] 1138 	jnb	_TF2,00140$
                                   1139 ;	assignBit
      00170F D2 B2            [12] 1140 	setb	_P3_2
                                   1141 ;	assignBit
      001711 C2 CA            [12] 1142 	clr	_TR2
      001713 85 CA CC         [24] 1143 	mov	_TL2,_RCAP2L
      001716 85 CB CD         [24] 1144 	mov	_TH2,_RCAP2H
                                   1145 ;	assignBit
      001719 C2 CF            [12] 1146 	clr	_TF2
                                   1147 ;	assignBit
      00171B D2 CA            [12] 1148 	setb	_TR2
                                   1149 ;	SW_DP.c:183: SW_WRITE_BIT(1U);     /* Park Bit */
      00171D                       1150 00143$:
      00171D 30 CF FD         [24] 1151 	jnb	_TF2,00143$
                                   1152 ;	assignBit
      001720 D2 97            [12] 1153 	setb	_P1_7
                                   1154 ;	assignBit
      001722 C2 B2            [12] 1155 	clr	_P3_2
                                   1156 ;	assignBit
      001724 C2 CA            [12] 1157 	clr	_TR2
      001726 85 CA CC         [24] 1158 	mov	_TL2,_RCAP2L
      001729 85 CB CD         [24] 1159 	mov	_TH2,_RCAP2H
                                   1160 ;	assignBit
      00172C C2 CF            [12] 1161 	clr	_TF2
                                   1162 ;	assignBit
      00172E D2 CA            [12] 1163 	setb	_TR2
      001730                       1164 00146$:
      001730 30 CF FD         [24] 1165 	jnb	_TF2,00146$
                                   1166 ;	assignBit
      001733 D2 B2            [12] 1167 	setb	_P3_2
                                   1168 ;	assignBit
      001735 C2 CA            [12] 1169 	clr	_TR2
      001737 85 CA CC         [24] 1170 	mov	_TL2,_RCAP2L
      00173A 85 CB CD         [24] 1171 	mov	_TH2,_RCAP2H
                                   1172 ;	assignBit
      00173D C2 CF            [12] 1173 	clr	_TF2
                                   1174 ;	assignBit
      00173F D2 CA            [12] 1175 	setb	_TR2
                                   1176 ;	SW_DP.c:186: SWD = 1;
                                   1177 ;	assignBit
      001741 D2 97            [12] 1178 	setb	_P1_7
                                   1179 ;	SW_DP.c:187: for (n = turnaround; n; n--)
      001743 78 56            [12] 1180 	mov	r0,#_turnaround
      001745 86 06            [24] 1181 	mov	ar6,@r0
      001747                       1182 00272$:
      001747 EE               [12] 1183 	mov	a,r6
      001748 60 25            [24] 1184 	jz	00156$
                                   1185 ;	SW_DP.c:189: SW_CLOCK_CYCLE();
      00174A                       1186 00149$:
      00174A 30 CF FD         [24] 1187 	jnb	_TF2,00149$
                                   1188 ;	assignBit
      00174D C2 B2            [12] 1189 	clr	_P3_2
                                   1190 ;	assignBit
      00174F C2 CA            [12] 1191 	clr	_TR2
      001751 85 CA CC         [24] 1192 	mov	_TL2,_RCAP2L
      001754 85 CB CD         [24] 1193 	mov	_TH2,_RCAP2H
                                   1194 ;	assignBit
      001757 C2 CF            [12] 1195 	clr	_TF2
                                   1196 ;	assignBit
      001759 D2 CA            [12] 1197 	setb	_TR2
      00175B                       1198 00152$:
      00175B 30 CF FD         [24] 1199 	jnb	_TF2,00152$
                                   1200 ;	assignBit
      00175E D2 B2            [12] 1201 	setb	_P3_2
                                   1202 ;	assignBit
      001760 C2 CA            [12] 1203 	clr	_TR2
      001762 85 CA CC         [24] 1204 	mov	_TL2,_RCAP2L
      001765 85 CB CD         [24] 1205 	mov	_TH2,_RCAP2H
                                   1206 ;	assignBit
      001768 C2 CF            [12] 1207 	clr	_TF2
                                   1208 ;	assignBit
      00176A D2 CA            [12] 1209 	setb	_TR2
                                   1210 ;	SW_DP.c:187: for (n = turnaround; n; n--)
      00176C 1E               [12] 1211 	dec	r6
                                   1212 ;	SW_DP.c:193: SW_READ_BIT(bits);
      00176D 80 D8            [24] 1213 	sjmp	00272$
      00176F                       1214 00156$:
      00176F 30 CF FD         [24] 1215 	jnb	_TF2,00156$
                                   1216 ;	assignBit
      001772 C2 B2            [12] 1217 	clr	_P3_2
                                   1218 ;	assignBit
      001774 C2 CA            [12] 1219 	clr	_TR2
      001776 85 CA CC         [24] 1220 	mov	_TL2,_RCAP2L
      001779 85 CB CD         [24] 1221 	mov	_TH2,_RCAP2H
                                   1222 ;	assignBit
      00177C C2 CF            [12] 1223 	clr	_TF2
                                   1224 ;	assignBit
      00177E D2 CA            [12] 1225 	setb	_TR2
      001780                       1226 00159$:
      001780 30 CF FD         [24] 1227 	jnb	_TF2,00159$
      001783 A2 97            [12] 1228 	mov	c,_P1_7
      001785 E4               [12] 1229 	clr	a
      001786 33               [12] 1230 	rlc	a
      001787 FE               [12] 1231 	mov	r6,a
                                   1232 ;	assignBit
      001788 D2 B2            [12] 1233 	setb	_P3_2
                                   1234 ;	assignBit
      00178A C2 CA            [12] 1235 	clr	_TR2
      00178C 85 CA CC         [24] 1236 	mov	_TL2,_RCAP2L
      00178F 85 CB CD         [24] 1237 	mov	_TH2,_RCAP2H
                                   1238 ;	assignBit
      001792 C2 CF            [12] 1239 	clr	_TF2
                                   1240 ;	assignBit
      001794 D2 CA            [12] 1241 	setb	_TR2
                                   1242 ;	SW_DP.c:194: ack = bits << 0;
                                   1243 ;	SW_DP.c:195: SW_READ_BIT(bits);
      001796                       1244 00162$:
      001796 30 CF FD         [24] 1245 	jnb	_TF2,00162$
                                   1246 ;	assignBit
      001799 C2 B2            [12] 1247 	clr	_P3_2
                                   1248 ;	assignBit
      00179B C2 CA            [12] 1249 	clr	_TR2
      00179D 85 CA CC         [24] 1250 	mov	_TL2,_RCAP2L
      0017A0 85 CB CD         [24] 1251 	mov	_TH2,_RCAP2H
                                   1252 ;	assignBit
      0017A3 C2 CF            [12] 1253 	clr	_TF2
                                   1254 ;	assignBit
      0017A5 D2 CA            [12] 1255 	setb	_TR2
      0017A7                       1256 00165$:
      0017A7 30 CF FD         [24] 1257 	jnb	_TF2,00165$
      0017AA A2 97            [12] 1258 	mov	c,_P1_7
      0017AC E4               [12] 1259 	clr	a
      0017AD 33               [12] 1260 	rlc	a
      0017AE FD               [12] 1261 	mov	r5,a
                                   1262 ;	assignBit
      0017AF D2 B2            [12] 1263 	setb	_P3_2
                                   1264 ;	assignBit
      0017B1 C2 CA            [12] 1265 	clr	_TR2
      0017B3 85 CA CC         [24] 1266 	mov	_TL2,_RCAP2L
      0017B6 85 CB CD         [24] 1267 	mov	_TH2,_RCAP2H
                                   1268 ;	assignBit
      0017B9 C2 CF            [12] 1269 	clr	_TF2
                                   1270 ;	assignBit
      0017BB D2 CA            [12] 1271 	setb	_TR2
                                   1272 ;	SW_DP.c:196: ack |= bits << 1;
      0017BD ED               [12] 1273 	mov	a,r5
      0017BE 2D               [12] 1274 	add	a,r5
      0017BF 42 06            [12] 1275 	orl	ar6,a
                                   1276 ;	SW_DP.c:197: SW_READ_BIT(bits);
      0017C1                       1277 00168$:
      0017C1 30 CF FD         [24] 1278 	jnb	_TF2,00168$
                                   1279 ;	assignBit
      0017C4 C2 B2            [12] 1280 	clr	_P3_2
                                   1281 ;	assignBit
      0017C6 C2 CA            [12] 1282 	clr	_TR2
      0017C8 85 CA CC         [24] 1283 	mov	_TL2,_RCAP2L
      0017CB 85 CB CD         [24] 1284 	mov	_TH2,_RCAP2H
                                   1285 ;	assignBit
      0017CE C2 CF            [12] 1286 	clr	_TF2
                                   1287 ;	assignBit
      0017D0 D2 CA            [12] 1288 	setb	_TR2
      0017D2                       1289 00171$:
      0017D2 30 CF FD         [24] 1290 	jnb	_TF2,00171$
      0017D5 A2 97            [12] 1291 	mov	c,_P1_7
      0017D7 E4               [12] 1292 	clr	a
      0017D8 33               [12] 1293 	rlc	a
      0017D9 FD               [12] 1294 	mov	r5,a
                                   1295 ;	assignBit
      0017DA D2 B2            [12] 1296 	setb	_P3_2
                                   1297 ;	assignBit
      0017DC C2 CA            [12] 1298 	clr	_TR2
      0017DE 85 CA CC         [24] 1299 	mov	_TL2,_RCAP2L
      0017E1 85 CB CD         [24] 1300 	mov	_TH2,_RCAP2H
                                   1301 ;	assignBit
      0017E4 C2 CF            [12] 1302 	clr	_TF2
                                   1303 ;	assignBit
      0017E6 D2 CA            [12] 1304 	setb	_TR2
                                   1305 ;	SW_DP.c:198: ack |= bits << 2;
      0017E8 ED               [12] 1306 	mov	a,r5
      0017E9 2D               [12] 1307 	add	a,r5
      0017EA 25 E0            [12] 1308 	add	a,acc
      0017EC FD               [12] 1309 	mov	r5,a
      0017ED 42 06            [12] 1310 	orl	ar6,a
                                   1311 ;	SW_DP.c:200: if (ack == DAP_TRANSFER_OK)
      0017EF BE 01 02         [24] 1312 	cjne	r6,#0x01,00900$
      0017F2 80 03            [24] 1313 	sjmp	00901$
      0017F4                       1314 00900$:
      0017F4 02 19 94         [24] 1315 	ljmp	00233$
      0017F7                       1316 00901$:
                                   1317 ;	SW_DP.c:204: if (req & DAP_TRANSFER_RnW)
      0017F7 EF               [12] 1318 	mov	a,r7
      0017F8 20 E1 03         [24] 1319 	jb	acc.1,00902$
      0017FB 02 18 B9         [24] 1320 	ljmp	00221$
      0017FE                       1321 00902$:
                                   1322 ;	SW_DP.c:207: val = 0U;
      0017FE 7D 00            [12] 1323 	mov	r5,#0x00
                                   1324 ;	SW_DP.c:208: parity = 0U;
      001800 7C 00            [12] 1325 	mov	r4,#0x00
                                   1326 ;	SW_DP.c:209: for (m = 0; m < 4; m++)
                                   1327 ;	1-genFromRTrack replaced	mov	_SWD_Transfer_m_65536_59,#0x00
      001802 8D 4B            [24] 1328 	mov	_SWD_Transfer_m_65536_59,r5
                                   1329 ;	SW_DP.c:213: SW_READ_BIT(bits); /* Read RDATA[0:31] */
      001804                       1330 00354$:
      001804 7A 08            [12] 1331 	mov	r2,#0x08
      001806                       1332 00174$:
      001806 30 CF FD         [24] 1333 	jnb	_TF2,00174$
                                   1334 ;	assignBit
      001809 C2 B2            [12] 1335 	clr	_P3_2
                                   1336 ;	assignBit
      00180B C2 CA            [12] 1337 	clr	_TR2
      00180D 85 CA CC         [24] 1338 	mov	_TL2,_RCAP2L
      001810 85 CB CD         [24] 1339 	mov	_TH2,_RCAP2H
                                   1340 ;	assignBit
      001813 C2 CF            [12] 1341 	clr	_TF2
                                   1342 ;	assignBit
      001815 D2 CA            [12] 1343 	setb	_TR2
      001817                       1344 00177$:
      001817 30 CF FD         [24] 1345 	jnb	_TF2,00177$
      00181A A2 97            [12] 1346 	mov	c,_P1_7
      00181C E4               [12] 1347 	clr	a
      00181D 33               [12] 1348 	rlc	a
      00181E FB               [12] 1349 	mov	r3,a
                                   1350 ;	assignBit
      00181F D2 B2            [12] 1351 	setb	_P3_2
                                   1352 ;	assignBit
      001821 C2 CA            [12] 1353 	clr	_TR2
      001823 85 CA CC         [24] 1354 	mov	_TL2,_RCAP2L
      001826 85 CB CD         [24] 1355 	mov	_TH2,_RCAP2H
                                   1356 ;	assignBit
      001829 C2 CF            [12] 1357 	clr	_TF2
                                   1358 ;	assignBit
      00182B D2 CA            [12] 1359 	setb	_TR2
                                   1360 ;	SW_DP.c:214: parity += bits;
      00182D EB               [12] 1361 	mov	a,r3
      00182E 2C               [12] 1362 	add	a,r4
      00182F FC               [12] 1363 	mov	r4,a
                                   1364 ;	SW_DP.c:215: val >>= 1;
      001830 ED               [12] 1365 	mov	a,r5
      001831 C3               [12] 1366 	clr	c
      001832 13               [12] 1367 	rrc	a
      001833 F5 4A            [12] 1368 	mov	_SWD_Transfer_val_65536_59,a
                                   1369 ;	SW_DP.c:216: val |= bits << 7;
      001835 EB               [12] 1370 	mov	a,r3
      001836 03               [12] 1371 	rr	a
      001837 54 80            [12] 1372 	anl	a,#0x80
      001839 FB               [12] 1373 	mov	r3,a
      00183A 45 4A            [12] 1374 	orl	a,_SWD_Transfer_val_65536_59
      00183C FD               [12] 1375 	mov	r5,a
                                   1376 ;	SW_DP.c:211: for (n = 8U; n; n--)
      00183D DA C7            [24] 1377 	djnz	r2,00174$
                                   1378 ;	SW_DP.c:218: if (datas)
      00183F E5 48            [12] 1379 	mov	a,_SWD_Transfer_PARM_2
      001841 45 49            [12] 1380 	orl	a,(_SWD_Transfer_PARM_2 + 1)
      001843 60 0D            [24] 1381 	jz	00277$
                                   1382 ;	SW_DP.c:220: datas[m] = val;
      001845 E5 4B            [12] 1383 	mov	a,_SWD_Transfer_m_65536_59
      001847 25 48            [12] 1384 	add	a,_SWD_Transfer_PARM_2
      001849 F5 82            [12] 1385 	mov	dpl,a
      00184B E4               [12] 1386 	clr	a
      00184C 35 49            [12] 1387 	addc	a,(_SWD_Transfer_PARM_2 + 1)
      00184E F5 83            [12] 1388 	mov	dph,a
      001850 ED               [12] 1389 	mov	a,r5
      001851 F0               [24] 1390 	movx	@dptr,a
      001852                       1391 00277$:
                                   1392 ;	SW_DP.c:209: for (m = 0; m < 4; m++)
      001852 05 4B            [12] 1393 	inc	_SWD_Transfer_m_65536_59
      001854 74 FC            [12] 1394 	mov	a,#0x100 - 0x04
      001856 25 4B            [12] 1395 	add	a,_SWD_Transfer_m_65536_59
      001858 50 AA            [24] 1396 	jnc	00354$
                                   1397 ;	SW_DP.c:223: SW_READ_BIT(bits); /* Read Parity */
      00185A                       1398 00184$:
      00185A 30 CF FD         [24] 1399 	jnb	_TF2,00184$
                                   1400 ;	assignBit
      00185D C2 B2            [12] 1401 	clr	_P3_2
                                   1402 ;	assignBit
      00185F C2 CA            [12] 1403 	clr	_TR2
      001861 85 CA CC         [24] 1404 	mov	_TL2,_RCAP2L
      001864 85 CB CD         [24] 1405 	mov	_TH2,_RCAP2H
                                   1406 ;	assignBit
      001867 C2 CF            [12] 1407 	clr	_TF2
                                   1408 ;	assignBit
      001869 D2 CA            [12] 1409 	setb	_TR2
      00186B                       1410 00187$:
      00186B 30 CF FD         [24] 1411 	jnb	_TF2,00187$
      00186E A2 97            [12] 1412 	mov	c,_P1_7
      001870 E4               [12] 1413 	clr	a
      001871 33               [12] 1414 	rlc	a
      001872 FD               [12] 1415 	mov	r5,a
                                   1416 ;	assignBit
      001873 D2 B2            [12] 1417 	setb	_P3_2
                                   1418 ;	assignBit
      001875 C2 CA            [12] 1419 	clr	_TR2
      001877 85 CA CC         [24] 1420 	mov	_TL2,_RCAP2L
      00187A 85 CB CD         [24] 1421 	mov	_TH2,_RCAP2H
                                   1422 ;	assignBit
      00187D C2 CF            [12] 1423 	clr	_TF2
                                   1424 ;	assignBit
      00187F D2 CA            [12] 1425 	setb	_TR2
                                   1426 ;	SW_DP.c:224: if ((parity ^ bits) & 1U)
      001881 ED               [12] 1427 	mov	a,r5
      001882 6C               [12] 1428 	xrl	a,r4
      001883 30 E0 02         [24] 1429 	jnb	acc.0,00191$
                                   1430 ;	SW_DP.c:226: ack = DAP_TRANSFER_ERROR;
      001886 7E 08            [12] 1431 	mov	r6,#0x08
      001888                       1432 00191$:
                                   1433 ;	SW_DP.c:230: for (n = turnaround; n; n--)
      001888 78 56            [12] 1434 	mov	r0,#_turnaround
      00188A 86 05            [24] 1435 	mov	ar5,@r0
      00188C                       1436 00279$:
      00188C ED               [12] 1437 	mov	a,r5
      00188D 60 25            [24] 1438 	jz	00198$
                                   1439 ;	SW_DP.c:232: SW_CLOCK_CYCLE();
      00188F                       1440 00192$:
      00188F 30 CF FD         [24] 1441 	jnb	_TF2,00192$
                                   1442 ;	assignBit
      001892 C2 B2            [12] 1443 	clr	_P3_2
                                   1444 ;	assignBit
      001894 C2 CA            [12] 1445 	clr	_TR2
      001896 85 CA CC         [24] 1446 	mov	_TL2,_RCAP2L
      001899 85 CB CD         [24] 1447 	mov	_TH2,_RCAP2H
                                   1448 ;	assignBit
      00189C C2 CF            [12] 1449 	clr	_TF2
                                   1450 ;	assignBit
      00189E D2 CA            [12] 1451 	setb	_TR2
      0018A0                       1452 00195$:
      0018A0 30 CF FD         [24] 1453 	jnb	_TF2,00195$
                                   1454 ;	assignBit
      0018A3 D2 B2            [12] 1455 	setb	_P3_2
                                   1456 ;	assignBit
      0018A5 C2 CA            [12] 1457 	clr	_TR2
      0018A7 85 CA CC         [24] 1458 	mov	_TL2,_RCAP2L
      0018AA 85 CB CD         [24] 1459 	mov	_TH2,_RCAP2H
                                   1460 ;	assignBit
      0018AD C2 CF            [12] 1461 	clr	_TF2
                                   1462 ;	assignBit
      0018AF D2 CA            [12] 1463 	setb	_TR2
                                   1464 ;	SW_DP.c:230: for (n = turnaround; n; n--)
      0018B1 1D               [12] 1465 	dec	r5
      0018B2 80 D8            [24] 1466 	sjmp	00279$
      0018B4                       1467 00198$:
                                   1468 ;	SW_DP.c:234: SWD = 1;
                                   1469 ;	assignBit
      0018B4 D2 97            [12] 1470 	setb	_P1_7
      0018B6 02 19 5F         [24] 1471 	ljmp	00222$
      0018B9                       1472 00221$:
                                   1473 ;	SW_DP.c:239: for (n = turnaround; n; n--)
      0018B9 78 56            [12] 1474 	mov	r0,#_turnaround
      0018BB 86 05            [24] 1475 	mov	ar5,@r0
      0018BD                       1476 00282$:
      0018BD ED               [12] 1477 	mov	a,r5
      0018BE 60 25            [24] 1478 	jz	00205$
                                   1479 ;	SW_DP.c:241: SW_CLOCK_CYCLE();
      0018C0                       1480 00199$:
      0018C0 30 CF FD         [24] 1481 	jnb	_TF2,00199$
                                   1482 ;	assignBit
      0018C3 C2 B2            [12] 1483 	clr	_P3_2
                                   1484 ;	assignBit
      0018C5 C2 CA            [12] 1485 	clr	_TR2
      0018C7 85 CA CC         [24] 1486 	mov	_TL2,_RCAP2L
      0018CA 85 CB CD         [24] 1487 	mov	_TH2,_RCAP2H
                                   1488 ;	assignBit
      0018CD C2 CF            [12] 1489 	clr	_TF2
                                   1490 ;	assignBit
      0018CF D2 CA            [12] 1491 	setb	_TR2
      0018D1                       1492 00202$:
      0018D1 30 CF FD         [24] 1493 	jnb	_TF2,00202$
                                   1494 ;	assignBit
      0018D4 D2 B2            [12] 1495 	setb	_P3_2
                                   1496 ;	assignBit
      0018D6 C2 CA            [12] 1497 	clr	_TR2
      0018D8 85 CA CC         [24] 1498 	mov	_TL2,_RCAP2L
      0018DB 85 CB CD         [24] 1499 	mov	_TH2,_RCAP2H
                                   1500 ;	assignBit
      0018DE C2 CF            [12] 1501 	clr	_TF2
                                   1502 ;	assignBit
      0018E0 D2 CA            [12] 1503 	setb	_TR2
                                   1504 ;	SW_DP.c:239: for (n = turnaround; n; n--)
      0018E2 1D               [12] 1505 	dec	r5
      0018E3 80 D8            [24] 1506 	sjmp	00282$
      0018E5                       1507 00205$:
                                   1508 ;	SW_DP.c:243: SWD = 1;
                                   1509 ;	assignBit
      0018E5 D2 97            [12] 1510 	setb	_P1_7
                                   1511 ;	SW_DP.c:245: parity = 0U;
      0018E7 7D 00            [12] 1512 	mov	r5,#0x00
                                   1513 ;	SW_DP.c:246: for (m = 0; m < 4; m++)
                                   1514 ;	1-genFromRTrack replaced	mov	_SWD_Transfer_m_65536_59,#0x00
      0018E9 8D 4B            [24] 1515 	mov	_SWD_Transfer_m_65536_59,r5
      0018EB                       1516 00286$:
                                   1517 ;	SW_DP.c:248: val = datas[m];
      0018EB E5 4B            [12] 1518 	mov	a,_SWD_Transfer_m_65536_59
      0018ED 25 48            [12] 1519 	add	a,_SWD_Transfer_PARM_2
      0018EF F5 82            [12] 1520 	mov	dpl,a
      0018F1 E4               [12] 1521 	clr	a
      0018F2 35 49            [12] 1522 	addc	a,(_SWD_Transfer_PARM_2 + 1)
      0018F4 F5 83            [12] 1523 	mov	dph,a
      0018F6 E0               [24] 1524 	movx	a,@dptr
      0018F7 FB               [12] 1525 	mov	r3,a
                                   1526 ;	SW_DP.c:251: SW_WRITE_BIT(val); /* Write WDATA[0:31] */
      0018F8 7A 08            [12] 1527 	mov	r2,#0x08
      0018FA                       1528 00206$:
      0018FA 30 CF FD         [24] 1529 	jnb	_TF2,00206$
      0018FD EB               [12] 1530 	mov	a,r3
      0018FE 54 01            [12] 1531 	anl	a,#0x01
      001900 FC               [12] 1532 	mov	r4,a
      001901 24 FF            [12] 1533 	add	a,#0xff
      001903 92 97            [24] 1534 	mov	_P1_7,c
                                   1535 ;	assignBit
      001905 C2 B2            [12] 1536 	clr	_P3_2
                                   1537 ;	assignBit
      001907 C2 CA            [12] 1538 	clr	_TR2
      001909 85 CA CC         [24] 1539 	mov	_TL2,_RCAP2L
      00190C 85 CB CD         [24] 1540 	mov	_TH2,_RCAP2H
                                   1541 ;	assignBit
      00190F C2 CF            [12] 1542 	clr	_TF2
                                   1543 ;	assignBit
      001911 D2 CA            [12] 1544 	setb	_TR2
      001913                       1545 00209$:
      001913 30 CF FD         [24] 1546 	jnb	_TF2,00209$
                                   1547 ;	assignBit
      001916 D2 B2            [12] 1548 	setb	_P3_2
                                   1549 ;	assignBit
      001918 C2 CA            [12] 1550 	clr	_TR2
      00191A 85 CA CC         [24] 1551 	mov	_TL2,_RCAP2L
      00191D 85 CB CD         [24] 1552 	mov	_TH2,_RCAP2H
                                   1553 ;	assignBit
      001920 C2 CF            [12] 1554 	clr	_TF2
                                   1555 ;	assignBit
      001922 D2 CA            [12] 1556 	setb	_TR2
                                   1557 ;	SW_DP.c:252: parity += val;
      001924 EB               [12] 1558 	mov	a,r3
      001925 2D               [12] 1559 	add	a,r5
      001926 FD               [12] 1560 	mov	r5,a
                                   1561 ;	SW_DP.c:253: val >>= 1;
      001927 EB               [12] 1562 	mov	a,r3
      001928 C3               [12] 1563 	clr	c
      001929 13               [12] 1564 	rrc	a
      00192A FB               [12] 1565 	mov	r3,a
                                   1566 ;	SW_DP.c:249: for (n = 8U; n; n--)
      00192B DA CD            [24] 1567 	djnz	r2,00206$
                                   1568 ;	SW_DP.c:246: for (m = 0; m < 4; m++)
      00192D 05 4B            [12] 1569 	inc	_SWD_Transfer_m_65536_59
      00192F 74 FC            [12] 1570 	mov	a,#0x100 - 0x04
      001931 25 4B            [12] 1571 	add	a,_SWD_Transfer_m_65536_59
      001933 50 B6            [24] 1572 	jnc	00286$
                                   1573 ;	SW_DP.c:256: SW_WRITE_BIT(parity); /* Write Parity Bit */
      001935                       1574 00214$:
      001935 30 CF FD         [24] 1575 	jnb	_TF2,00214$
      001938 ED               [12] 1576 	mov	a,r5
      001939 54 01            [12] 1577 	anl	a,#0x01
      00193B FD               [12] 1578 	mov	r5,a
      00193C 24 FF            [12] 1579 	add	a,#0xff
      00193E 92 97            [24] 1580 	mov	_P1_7,c
                                   1581 ;	assignBit
      001940 C2 B2            [12] 1582 	clr	_P3_2
                                   1583 ;	assignBit
      001942 C2 CA            [12] 1584 	clr	_TR2
      001944 85 CA CC         [24] 1585 	mov	_TL2,_RCAP2L
      001947 85 CB CD         [24] 1586 	mov	_TH2,_RCAP2H
                                   1587 ;	assignBit
      00194A C2 CF            [12] 1588 	clr	_TF2
                                   1589 ;	assignBit
      00194C D2 CA            [12] 1590 	setb	_TR2
      00194E                       1591 00217$:
      00194E 30 CF FD         [24] 1592 	jnb	_TF2,00217$
                                   1593 ;	assignBit
      001951 D2 B2            [12] 1594 	setb	_P3_2
                                   1595 ;	assignBit
      001953 C2 CA            [12] 1596 	clr	_TR2
      001955 85 CA CC         [24] 1597 	mov	_TL2,_RCAP2L
      001958 85 CB CD         [24] 1598 	mov	_TH2,_RCAP2H
                                   1599 ;	assignBit
      00195B C2 CF            [12] 1600 	clr	_TF2
                                   1601 ;	assignBit
      00195D D2 CA            [12] 1602 	setb	_TR2
      00195F                       1603 00222$:
                                   1604 ;	SW_DP.c:259: n = idle_cycles;
      00195F 78 58            [12] 1605 	mov	r0,#_idle_cycles
                                   1606 ;	SW_DP.c:260: if (n)
      001961 E6               [12] 1607 	mov	a,@r0
      001962 FD               [12] 1608 	mov	r5,a
      001963 60 2A            [24] 1609 	jz	00231$
                                   1610 ;	SW_DP.c:262: SWD = 0;
                                   1611 ;	assignBit
      001965 C2 97            [12] 1612 	clr	_P1_7
      001967                       1613 00289$:
                                   1614 ;	SW_DP.c:263: for (; n; n--)
      001967 ED               [12] 1615 	mov	a,r5
      001968 60 25            [24] 1616 	jz	00231$
                                   1617 ;	SW_DP.c:265: SW_CLOCK_CYCLE();
      00196A                       1618 00223$:
      00196A 30 CF FD         [24] 1619 	jnb	_TF2,00223$
                                   1620 ;	assignBit
      00196D C2 B2            [12] 1621 	clr	_P3_2
                                   1622 ;	assignBit
      00196F C2 CA            [12] 1623 	clr	_TR2
      001971 85 CA CC         [24] 1624 	mov	_TL2,_RCAP2L
      001974 85 CB CD         [24] 1625 	mov	_TH2,_RCAP2H
                                   1626 ;	assignBit
      001977 C2 CF            [12] 1627 	clr	_TF2
                                   1628 ;	assignBit
      001979 D2 CA            [12] 1629 	setb	_TR2
      00197B                       1630 00226$:
      00197B 30 CF FD         [24] 1631 	jnb	_TF2,00226$
                                   1632 ;	assignBit
      00197E D2 B2            [12] 1633 	setb	_P3_2
                                   1634 ;	assignBit
      001980 C2 CA            [12] 1635 	clr	_TR2
      001982 85 CA CC         [24] 1636 	mov	_TL2,_RCAP2L
      001985 85 CB CD         [24] 1637 	mov	_TH2,_RCAP2H
                                   1638 ;	assignBit
      001988 C2 CF            [12] 1639 	clr	_TF2
                                   1640 ;	assignBit
      00198A D2 CA            [12] 1641 	setb	_TR2
                                   1642 ;	SW_DP.c:263: for (; n; n--)
      00198C 1D               [12] 1643 	dec	r5
      00198D 80 D8            [24] 1644 	sjmp	00289$
      00198F                       1645 00231$:
                                   1646 ;	SW_DP.c:268: SWD = 1;
                                   1647 ;	assignBit
      00198F D2 97            [12] 1648 	setb	_P1_7
                                   1649 ;	SW_DP.c:269: return ((uint8_t)ack);
      001991 8E 82            [24] 1650 	mov	dpl,r6
      001993 22               [24] 1651 	ret
      001994                       1652 00233$:
                                   1653 ;	SW_DP.c:272: if ((ack == DAP_TRANSFER_WAIT) || (ack == DAP_TRANSFER_FAULT))
      001994 BE 02 02         [24] 1654 	cjne	r6,#0x02,00927$
      001997 80 08            [24] 1655 	sjmp	00261$
      001999                       1656 00927$:
      001999 BE 04 02         [24] 1657 	cjne	r6,#0x04,00928$
      00199C 80 03            [24] 1658 	sjmp	00929$
      00199E                       1659 00928$:
      00199E 02 1A 34         [24] 1660 	ljmp	00262$
      0019A1                       1661 00929$:
      0019A1                       1662 00261$:
                                   1663 ;	SW_DP.c:275: if (data_phase && ((req & DAP_TRANSFER_RnW) != 0U))
      0019A1 78 57            [12] 1664 	mov	r0,#_data_phase
      0019A3 E6               [12] 1665 	mov	a,@r0
      0019A4 60 2A            [24] 1666 	jz	00242$
      0019A6 EF               [12] 1667 	mov	a,r7
      0019A7 30 E1 26         [24] 1668 	jnb	acc.1,00242$
                                   1669 ;	SW_DP.c:279: SW_CLOCK_CYCLE(); /* Dummy Read RDATA[0:31] + Parity */
      0019AA 7D 21            [12] 1670 	mov	r5,#0x21
      0019AC                       1671 00234$:
      0019AC 30 CF FD         [24] 1672 	jnb	_TF2,00234$
                                   1673 ;	assignBit
      0019AF C2 B2            [12] 1674 	clr	_P3_2
                                   1675 ;	assignBit
      0019B1 C2 CA            [12] 1676 	clr	_TR2
      0019B3 85 CA CC         [24] 1677 	mov	_TL2,_RCAP2L
      0019B6 85 CB CD         [24] 1678 	mov	_TH2,_RCAP2H
                                   1679 ;	assignBit
      0019B9 C2 CF            [12] 1680 	clr	_TF2
                                   1681 ;	assignBit
      0019BB D2 CA            [12] 1682 	setb	_TR2
      0019BD                       1683 00237$:
      0019BD 30 CF FD         [24] 1684 	jnb	_TF2,00237$
                                   1685 ;	assignBit
      0019C0 D2 B2            [12] 1686 	setb	_P3_2
                                   1687 ;	assignBit
      0019C2 C2 CA            [12] 1688 	clr	_TR2
      0019C4 85 CA CC         [24] 1689 	mov	_TL2,_RCAP2L
      0019C7 85 CB CD         [24] 1690 	mov	_TH2,_RCAP2H
                                   1691 ;	assignBit
      0019CA C2 CF            [12] 1692 	clr	_TF2
                                   1693 ;	assignBit
      0019CC D2 CA            [12] 1694 	setb	_TR2
                                   1695 ;	SW_DP.c:277: for (n = 32U + 1U; n; n--)
      0019CE DD DC            [24] 1696 	djnz	r5,00234$
      0019D0                       1697 00242$:
                                   1698 ;	SW_DP.c:283: for (n = turnaround; n; n--)
      0019D0 78 56            [12] 1699 	mov	r0,#_turnaround
      0019D2 86 05            [24] 1700 	mov	ar5,@r0
      0019D4                       1701 00294$:
      0019D4 ED               [12] 1702 	mov	a,r5
      0019D5 60 25            [24] 1703 	jz	00250$
                                   1704 ;	SW_DP.c:285: SW_CLOCK_CYCLE();
      0019D7                       1705 00244$:
      0019D7 30 CF FD         [24] 1706 	jnb	_TF2,00244$
                                   1707 ;	assignBit
      0019DA C2 B2            [12] 1708 	clr	_P3_2
                                   1709 ;	assignBit
      0019DC C2 CA            [12] 1710 	clr	_TR2
      0019DE 85 CA CC         [24] 1711 	mov	_TL2,_RCAP2L
      0019E1 85 CB CD         [24] 1712 	mov	_TH2,_RCAP2H
                                   1713 ;	assignBit
      0019E4 C2 CF            [12] 1714 	clr	_TF2
                                   1715 ;	assignBit
      0019E6 D2 CA            [12] 1716 	setb	_TR2
      0019E8                       1717 00247$:
      0019E8 30 CF FD         [24] 1718 	jnb	_TF2,00247$
                                   1719 ;	assignBit
      0019EB D2 B2            [12] 1720 	setb	_P3_2
                                   1721 ;	assignBit
      0019ED C2 CA            [12] 1722 	clr	_TR2
      0019EF 85 CA CC         [24] 1723 	mov	_TL2,_RCAP2L
      0019F2 85 CB CD         [24] 1724 	mov	_TH2,_RCAP2H
                                   1725 ;	assignBit
      0019F5 C2 CF            [12] 1726 	clr	_TF2
                                   1727 ;	assignBit
      0019F7 D2 CA            [12] 1728 	setb	_TR2
                                   1729 ;	SW_DP.c:283: for (n = turnaround; n; n--)
      0019F9 1D               [12] 1730 	dec	r5
      0019FA 80 D8            [24] 1731 	sjmp	00294$
      0019FC                       1732 00250$:
                                   1733 ;	SW_DP.c:287: SWD = 1;
                                   1734 ;	assignBit
      0019FC D2 97            [12] 1735 	setb	_P1_7
                                   1736 ;	SW_DP.c:288: if (data_phase && ((req & DAP_TRANSFER_RnW) == 0U))
      0019FE 78 57            [12] 1737 	mov	r0,#_data_phase
      001A00 E6               [12] 1738 	mov	a,@r0
      001A01 60 2C            [24] 1739 	jz	00259$
      001A03 EF               [12] 1740 	mov	a,r7
      001A04 20 E1 28         [24] 1741 	jb	acc.1,00259$
                                   1742 ;	SW_DP.c:290: SWD = 0;
                                   1743 ;	assignBit
      001A07 C2 97            [12] 1744 	clr	_P1_7
                                   1745 ;	SW_DP.c:293: SW_CLOCK_CYCLE(); /* Dummy Write WDATA[0:31] + Parity */
      001A09 7F 21            [12] 1746 	mov	r7,#0x21
      001A0B                       1747 00251$:
      001A0B 30 CF FD         [24] 1748 	jnb	_TF2,00251$
                                   1749 ;	assignBit
      001A0E C2 B2            [12] 1750 	clr	_P3_2
                                   1751 ;	assignBit
      001A10 C2 CA            [12] 1752 	clr	_TR2
      001A12 85 CA CC         [24] 1753 	mov	_TL2,_RCAP2L
      001A15 85 CB CD         [24] 1754 	mov	_TH2,_RCAP2H
                                   1755 ;	assignBit
      001A18 C2 CF            [12] 1756 	clr	_TF2
                                   1757 ;	assignBit
      001A1A D2 CA            [12] 1758 	setb	_TR2
      001A1C                       1759 00254$:
      001A1C 30 CF FD         [24] 1760 	jnb	_TF2,00254$
                                   1761 ;	assignBit
      001A1F D2 B2            [12] 1762 	setb	_P3_2
                                   1763 ;	assignBit
      001A21 C2 CA            [12] 1764 	clr	_TR2
      001A23 85 CA CC         [24] 1765 	mov	_TL2,_RCAP2L
      001A26 85 CB CD         [24] 1766 	mov	_TH2,_RCAP2H
                                   1767 ;	assignBit
      001A29 C2 CF            [12] 1768 	clr	_TF2
                                   1769 ;	assignBit
      001A2B D2 CA            [12] 1770 	setb	_TR2
                                   1771 ;	SW_DP.c:291: for (n = 32U + 1U; n; n--)
      001A2D DF DC            [24] 1772 	djnz	r7,00251$
      001A2F                       1773 00259$:
                                   1774 ;	SW_DP.c:296: SWD = 1;
                                   1775 ;	assignBit
      001A2F D2 97            [12] 1776 	setb	_P1_7
                                   1777 ;	SW_DP.c:297: return ((uint8_t)ack);
      001A31 8E 82            [24] 1778 	mov	dpl,r6
      001A33 22               [24] 1779 	ret
      001A34                       1780 00262$:
                                   1781 ;	SW_DP.c:301: for (n = turnaround + 32U + 1U; n; n--)
      001A34 78 56            [12] 1782 	mov	r0,#_turnaround
      001A36 74 21            [12] 1783 	mov	a,#0x21
      001A38 26               [12] 1784 	add	a,@r0
      001A39 FF               [12] 1785 	mov	r7,a
      001A3A                       1786 00299$:
      001A3A EF               [12] 1787 	mov	a,r7
      001A3B 60 25            [24] 1788 	jz	00270$
                                   1789 ;	SW_DP.c:303: SW_CLOCK_CYCLE(); /* Back off datas phase */
      001A3D                       1790 00264$:
      001A3D 30 CF FD         [24] 1791 	jnb	_TF2,00264$
                                   1792 ;	assignBit
      001A40 C2 B2            [12] 1793 	clr	_P3_2
                                   1794 ;	assignBit
      001A42 C2 CA            [12] 1795 	clr	_TR2
      001A44 85 CA CC         [24] 1796 	mov	_TL2,_RCAP2L
      001A47 85 CB CD         [24] 1797 	mov	_TH2,_RCAP2H
                                   1798 ;	assignBit
      001A4A C2 CF            [12] 1799 	clr	_TF2
                                   1800 ;	assignBit
      001A4C D2 CA            [12] 1801 	setb	_TR2
      001A4E                       1802 00267$:
      001A4E 30 CF FD         [24] 1803 	jnb	_TF2,00267$
                                   1804 ;	assignBit
      001A51 D2 B2            [12] 1805 	setb	_P3_2
                                   1806 ;	assignBit
      001A53 C2 CA            [12] 1807 	clr	_TR2
      001A55 85 CA CC         [24] 1808 	mov	_TL2,_RCAP2L
      001A58 85 CB CD         [24] 1809 	mov	_TH2,_RCAP2H
                                   1810 ;	assignBit
      001A5B C2 CF            [12] 1811 	clr	_TF2
                                   1812 ;	assignBit
      001A5D D2 CA            [12] 1813 	setb	_TR2
                                   1814 ;	SW_DP.c:301: for (n = turnaround + 32U + 1U; n; n--)
      001A5F 1F               [12] 1815 	dec	r7
      001A60 80 D8            [24] 1816 	sjmp	00299$
      001A62                       1817 00270$:
                                   1818 ;	SW_DP.c:305: SWD = 1;
                                   1819 ;	assignBit
      001A62 D2 97            [12] 1820 	setb	_P1_7
                                   1821 ;	SW_DP.c:306: return ((uint8_t)ack);
      001A64 8E 82            [24] 1822 	mov	dpl,r6
                                   1823 ;	SW_DP.c:307: }
      001A66 22               [24] 1824 	ret
                                   1825 	.area CSEG    (CODE)
                                   1826 	.area CONST   (CODE)
                                   1827 	.area XINIT   (CODE)
                                   1828 	.area CABS    (ABS,CODE)
