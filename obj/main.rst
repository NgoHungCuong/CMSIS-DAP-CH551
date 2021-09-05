                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _Led_Off
                                     13 	.globl _Led_On
                                     14 	.globl _Led_Init
                                     15 	.globl _calc
                                     16 	.globl _USB_Task
                                     17 	.globl _USB_Init
                                     18 	.globl _USB_InitClock
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
                                    251 	.globl _i
                                    252 	.globl _TIM0_Init
                                    253 	.globl _Delay_Ms
                                    254 	.globl ___delay_ms
                                    255 	.globl ___delay_us
                                    256 	.globl _UART0_Send
                                    257 ;--------------------------------------------------------
                                    258 ; special function registers
                                    259 ;--------------------------------------------------------
                                    260 	.area RSEG    (ABS,DATA)
      000000                        261 	.org 0x0000
                           0000D0   262 _PSW	=	0x00d0
                           0000E0   263 _ACC	=	0x00e0
                           0000F0   264 _B	=	0x00f0
                           000081   265 _SP	=	0x0081
                           000082   266 _DPL	=	0x0082
                           000083   267 _DPH	=	0x0083
                           0000A1   268 _SAFE_MOD	=	0x00a1
                           0000B1   269 _GLOBAL_CFG	=	0x00b1
                           000087   270 _PCON	=	0x0087
                           0000B9   271 _CLOCK_CFG	=	0x00b9
                           0000A9   272 _WAKE_CTRL	=	0x00a9
                           0000FE   273 _RESET_KEEP	=	0x00fe
                           0000FF   274 _WDOG_COUNT	=	0x00ff
                           0000A8   275 _IE	=	0x00a8
                           0000B8   276 _IP	=	0x00b8
                           0000E8   277 _IE_EX	=	0x00e8
                           0000E9   278 _IP_EX	=	0x00e9
                           0000C7   279 _GPIO_IE	=	0x00c7
                           008584   280 _ROM_ADDR	=	0x8584
                           000084   281 _ROM_ADDR_L	=	0x0084
                           000085   282 _ROM_ADDR_H	=	0x0085
                           008F8E   283 _ROM_DATA	=	0x8f8e
                           00008E   284 _ROM_DATA_L	=	0x008e
                           00008F   285 _ROM_DATA_H	=	0x008f
                           000086   286 _ROM_CTRL	=	0x0086
                           000090   287 _P1	=	0x0090
                           000092   288 _P1_MOD_OC	=	0x0092
                           000093   289 _P1_DIR_PU	=	0x0093
                           0000A0   290 _P2	=	0x00a0
                           0000B0   291 _P3	=	0x00b0
                           000096   292 _P3_MOD_OC	=	0x0096
                           000097   293 _P3_DIR_PU	=	0x0097
                           0000C6   294 _PIN_FUNC	=	0x00c6
                           0000A2   295 _XBUS_AUX	=	0x00a2
                           000088   296 _TCON	=	0x0088
                           000089   297 _TMOD	=	0x0089
                           00008A   298 _TL0	=	0x008a
                           00008B   299 _TL1	=	0x008b
                           00008C   300 _TH0	=	0x008c
                           00008D   301 _TH1	=	0x008d
                           000098   302 _SCON	=	0x0098
                           000099   303 _SBUF	=	0x0099
                           0000C8   304 _T2CON	=	0x00c8
                           0000C9   305 _T2MOD	=	0x00c9
                           00CBCA   306 _RCAP2	=	0xcbca
                           0000CA   307 _RCAP2L	=	0x00ca
                           0000CB   308 _RCAP2H	=	0x00cb
                           00CDCC   309 _T2COUNT	=	0xcdcc
                           0000CC   310 _TL2	=	0x00cc
                           0000CD   311 _TH2	=	0x00cd
                           00CFCE   312 _T2CAP1	=	0xcfce
                           0000CE   313 _T2CAP1L	=	0x00ce
                           0000CF   314 _T2CAP1H	=	0x00cf
                           00009B   315 _PWM_DATA2	=	0x009b
                           00009C   316 _PWM_DATA1	=	0x009c
                           00009D   317 _PWM_CTRL	=	0x009d
                           00009E   318 _PWM_CK_SE	=	0x009e
                           0000F8   319 _SPI0_STAT	=	0x00f8
                           0000F9   320 _SPI0_DATA	=	0x00f9
                           0000FA   321 _SPI0_CTRL	=	0x00fa
                           0000FB   322 _SPI0_CK_SE	=	0x00fb
                           0000FC   323 _SPI0_SETUP	=	0x00fc
                           0000C0   324 _SCON1	=	0x00c0
                           0000C1   325 _SBUF1	=	0x00c1
                           0000C2   326 _SBAUD1	=	0x00c2
                           000080   327 _ADC_CTRL	=	0x0080
                           00009A   328 _ADC_CFG	=	0x009a
                           00009F   329 _ADC_DATA	=	0x009f
                           0000C3   330 _TKEY_CTRL	=	0x00c3
                           00C5C4   331 _TKEY_DAT	=	0xc5c4
                           0000C4   332 _TKEY_DATL	=	0x00c4
                           0000C5   333 _TKEY_DATH	=	0x00c5
                           000091   334 _USB_C_CTRL	=	0x0091
                           0000D1   335 _UDEV_CTRL	=	0x00d1
                           0000D2   336 _UEP1_CTRL	=	0x00d2
                           0000D3   337 _UEP1_T_LEN	=	0x00d3
                           0000D4   338 _UEP2_CTRL	=	0x00d4
                           0000D5   339 _UEP2_T_LEN	=	0x00d5
                           0000D6   340 _UEP3_CTRL	=	0x00d6
                           0000D7   341 _UEP3_T_LEN	=	0x00d7
                           0000D8   342 _USB_INT_FG	=	0x00d8
                           0000D9   343 _USB_INT_ST	=	0x00d9
                           0000DA   344 _USB_MIS_ST	=	0x00da
                           0000DB   345 _USB_RX_LEN	=	0x00db
                           0000DC   346 _UEP0_CTRL	=	0x00dc
                           0000DD   347 _UEP0_T_LEN	=	0x00dd
                           0000DE   348 _UEP4_CTRL	=	0x00de
                           0000DF   349 _UEP4_T_LEN	=	0x00df
                           0000E1   350 _USB_INT_EN	=	0x00e1
                           0000E2   351 _USB_CTRL	=	0x00e2
                           0000E3   352 _USB_DEV_AD	=	0x00e3
                           00E5E4   353 _UEP2_DMA	=	0xe5e4
                           0000E4   354 _UEP2_DMA_L	=	0x00e4
                           0000E5   355 _UEP2_DMA_H	=	0x00e5
                           00E7E6   356 _UEP3_DMA	=	0xe7e6
                           0000E6   357 _UEP3_DMA_L	=	0x00e6
                           0000E7   358 _UEP3_DMA_H	=	0x00e7
                           0000EA   359 _UEP4_1_MOD	=	0x00ea
                           0000EB   360 _UEP2_3_MOD	=	0x00eb
                           00EDEC   361 _UEP0_DMA	=	0xedec
                           0000EC   362 _UEP0_DMA_L	=	0x00ec
                           0000ED   363 _UEP0_DMA_H	=	0x00ed
                           00EFEE   364 _UEP1_DMA	=	0xefee
                           0000EE   365 _UEP1_DMA_L	=	0x00ee
                           0000EF   366 _UEP1_DMA_H	=	0x00ef
                                    367 ;--------------------------------------------------------
                                    368 ; special function bits
                                    369 ;--------------------------------------------------------
                                    370 	.area RSEG    (ABS,DATA)
      000000                        371 	.org 0x0000
                           0000D7   372 _CY	=	0x00d7
                           0000D6   373 _AC	=	0x00d6
                           0000D5   374 _F0	=	0x00d5
                           0000D4   375 _RS1	=	0x00d4
                           0000D3   376 _RS0	=	0x00d3
                           0000D2   377 _OV	=	0x00d2
                           0000D1   378 _F1	=	0x00d1
                           0000D0   379 _P	=	0x00d0
                           0000AF   380 _EA	=	0x00af
                           0000AE   381 _E_DIS	=	0x00ae
                           0000AD   382 _ET2	=	0x00ad
                           0000AC   383 _ES	=	0x00ac
                           0000AB   384 _ET1	=	0x00ab
                           0000AA   385 _EX1	=	0x00aa
                           0000A9   386 _ET0	=	0x00a9
                           0000A8   387 _EX0	=	0x00a8
                           0000BF   388 _PH_FLAG	=	0x00bf
                           0000BE   389 _PL_FLAG	=	0x00be
                           0000BD   390 _PT2	=	0x00bd
                           0000BC   391 _PS	=	0x00bc
                           0000BB   392 _PT1	=	0x00bb
                           0000BA   393 _PX1	=	0x00ba
                           0000B9   394 _PT0	=	0x00b9
                           0000B8   395 _PX0	=	0x00b8
                           0000EF   396 _IE_WDOG	=	0x00ef
                           0000EE   397 _IE_GPIO	=	0x00ee
                           0000ED   398 _IE_PWMX	=	0x00ed
                           0000EC   399 _IE_UART1	=	0x00ec
                           0000EB   400 _IE_ADC	=	0x00eb
                           0000EA   401 _IE_USB	=	0x00ea
                           0000E9   402 _IE_TKEY	=	0x00e9
                           0000E8   403 _IE_SPI0	=	0x00e8
                           000097   404 _SCK	=	0x0097
                           000097   405 _TXD1	=	0x0097
                           000097   406 _TIN5	=	0x0097
                           000096   407 _MISO	=	0x0096
                           000096   408 _RXD1	=	0x0096
                           000096   409 _TIN4	=	0x0096
                           000095   410 _MOSI	=	0x0095
                           000095   411 _PWM1	=	0x0095
                           000095   412 _TIN3	=	0x0095
                           000095   413 _UCC2	=	0x0095
                           000095   414 _AIN2	=	0x0095
                           000094   415 _T2_	=	0x0094
                           000094   416 _CAP1_	=	0x0094
                           000094   417 _SCS	=	0x0094
                           000094   418 _TIN2	=	0x0094
                           000094   419 _UCC1	=	0x0094
                           000094   420 _AIN1	=	0x0094
                           000093   421 _TXD_	=	0x0093
                           000092   422 _RXD_	=	0x0092
                           000091   423 _T2EX	=	0x0091
                           000091   424 _CAP2	=	0x0091
                           000091   425 _TIN1	=	0x0091
                           000091   426 _VBUS2	=	0x0091
                           000091   427 _AIN0	=	0x0091
                           000090   428 _T2	=	0x0090
                           000090   429 _CAP1	=	0x0090
                           000090   430 _TIN0	=	0x0090
                           0000B7   431 _UDM	=	0x00b7
                           0000B6   432 _UDP	=	0x00b6
                           0000B5   433 _T1	=	0x00b5
                           0000B4   434 _PWM2	=	0x00b4
                           0000B4   435 _RXD1_	=	0x00b4
                           0000B4   436 _T0	=	0x00b4
                           0000B3   437 _INT1	=	0x00b3
                           0000B2   438 _TXD1_	=	0x00b2
                           0000B2   439 _INT0	=	0x00b2
                           0000B2   440 _VBUS1	=	0x00b2
                           0000B2   441 _AIN3	=	0x00b2
                           0000B1   442 _PWM2_	=	0x00b1
                           0000B1   443 _TXD	=	0x00b1
                           0000B0   444 _PWM1_	=	0x00b0
                           0000B0   445 _RXD	=	0x00b0
                           00008F   446 _TF1	=	0x008f
                           00008E   447 _TR1	=	0x008e
                           00008D   448 _TF0	=	0x008d
                           00008C   449 _TR0	=	0x008c
                           00008B   450 _IE1	=	0x008b
                           00008A   451 _IT1	=	0x008a
                           000089   452 _IE0	=	0x0089
                           000088   453 _IT0	=	0x0088
                           00009F   454 _SM0	=	0x009f
                           00009E   455 _SM1	=	0x009e
                           00009D   456 _SM2	=	0x009d
                           00009C   457 _REN	=	0x009c
                           00009B   458 _TB8	=	0x009b
                           00009A   459 _RB8	=	0x009a
                           000099   460 _TI	=	0x0099
                           000098   461 _RI	=	0x0098
                           0000CF   462 _TF2	=	0x00cf
                           0000CF   463 _CAP1F	=	0x00cf
                           0000CE   464 _EXF2	=	0x00ce
                           0000CD   465 _RCLK	=	0x00cd
                           0000CC   466 _TCLK	=	0x00cc
                           0000CB   467 _EXEN2	=	0x00cb
                           0000CA   468 _TR2	=	0x00ca
                           0000C9   469 _C_T2	=	0x00c9
                           0000C8   470 _CP_RL2	=	0x00c8
                           0000FF   471 _S0_FST_ACT	=	0x00ff
                           0000FE   472 _S0_IF_OV	=	0x00fe
                           0000FD   473 _S0_IF_FIRST	=	0x00fd
                           0000FC   474 _S0_IF_BYTE	=	0x00fc
                           0000FB   475 _S0_FREE	=	0x00fb
                           0000FA   476 _S0_T_FIFO	=	0x00fa
                           0000F8   477 _S0_R_FIFO	=	0x00f8
                           0000C7   478 _U1SM0	=	0x00c7
                           0000C5   479 _U1SMOD	=	0x00c5
                           0000C4   480 _U1REN	=	0x00c4
                           0000C3   481 _U1TB8	=	0x00c3
                           0000C2   482 _U1RB8	=	0x00c2
                           0000C1   483 _U1TI	=	0x00c1
                           0000C0   484 _U1RI	=	0x00c0
                           000087   485 _CMPO	=	0x0087
                           000086   486 _CMP_IF	=	0x0086
                           000085   487 _ADC_IF	=	0x0085
                           000084   488 _ADC_START	=	0x0084
                           000083   489 _CMP_CHAN	=	0x0083
                           000081   490 _ADC_CHAN1	=	0x0081
                           000080   491 _ADC_CHAN0	=	0x0080
                           0000DF   492 _U_IS_NAK	=	0x00df
                           0000DE   493 _U_TOG_OK	=	0x00de
                           0000DD   494 _U_SIE_FREE	=	0x00dd
                           0000DC   495 _UIF_FIFO_OV	=	0x00dc
                           0000DA   496 _UIF_SUSPEND	=	0x00da
                           0000D9   497 _UIF_TRANSFER	=	0x00d9
                           0000D8   498 _UIF_BUS_RST	=	0x00d8
                                    499 ;--------------------------------------------------------
                                    500 ; overlayable register banks
                                    501 ;--------------------------------------------------------
                                    502 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        503 	.ds 8
                                    504 ;--------------------------------------------------------
                                    505 ; internal ram data
                                    506 ;--------------------------------------------------------
                                    507 	.area DSEG    (DATA)
      000008                        508 _i::
      000008                        509 	.ds 1
                                    510 ;--------------------------------------------------------
                                    511 ; overlayable items in internal ram 
                                    512 ;--------------------------------------------------------
                                    513 	.area	OSEG    (OVR,DATA)
                                    514 	.area	OSEG    (OVR,DATA)
                                    515 	.area	OSEG    (OVR,DATA)
                                    516 	.area	OSEG    (OVR,DATA)
                                    517 ;--------------------------------------------------------
                                    518 ; Stack segment in internal ram 
                                    519 ;--------------------------------------------------------
                                    520 	.area	SSEG
      00006C                        521 __start__stack:
      00006C                        522 	.ds	1
                                    523 
                                    524 ;--------------------------------------------------------
                                    525 ; indirectly addressable internal ram data
                                    526 ;--------------------------------------------------------
                                    527 	.area ISEG    (DATA)
                                    528 ;--------------------------------------------------------
                                    529 ; absolute internal ram data
                                    530 ;--------------------------------------------------------
                                    531 	.area IABS    (ABS,DATA)
                                    532 	.area IABS    (ABS,DATA)
                                    533 ;--------------------------------------------------------
                                    534 ; bit data
                                    535 ;--------------------------------------------------------
                                    536 	.area BSEG    (BIT)
                                    537 ;--------------------------------------------------------
                                    538 ; paged external ram data
                                    539 ;--------------------------------------------------------
                                    540 	.area PSEG    (PAG,XDATA)
                                    541 ;--------------------------------------------------------
                                    542 ; external ram data
                                    543 ;--------------------------------------------------------
                                    544 	.area XSEG    (XDATA)
                                    545 ;--------------------------------------------------------
                                    546 ; absolute external ram data
                                    547 ;--------------------------------------------------------
                                    548 	.area XABS    (ABS,XDATA)
                                    549 ;--------------------------------------------------------
                                    550 ; external initialized ram data
                                    551 ;--------------------------------------------------------
                                    552 	.area XISEG   (XDATA)
                                    553 	.area HOME    (CODE)
                                    554 	.area GSINIT0 (CODE)
                                    555 	.area GSINIT1 (CODE)
                                    556 	.area GSINIT2 (CODE)
                                    557 	.area GSINIT3 (CODE)
                                    558 	.area GSINIT4 (CODE)
                                    559 	.area GSINIT5 (CODE)
                                    560 	.area GSINIT  (CODE)
                                    561 	.area GSFINAL (CODE)
                                    562 	.area CSEG    (CODE)
                                    563 ;--------------------------------------------------------
                                    564 ; interrupt vector 
                                    565 ;--------------------------------------------------------
                                    566 	.area HOME    (CODE)
      000000                        567 __interrupt_vect:
      000000 02 00 06         [24]  568 	ljmp	__sdcc_gsinit_startup
                                    569 ;--------------------------------------------------------
                                    570 ; global & static initialisations
                                    571 ;--------------------------------------------------------
                                    572 	.area HOME    (CODE)
                                    573 	.area GSINIT  (CODE)
                                    574 	.area GSFINAL (CODE)
                                    575 	.area GSINIT  (CODE)
                                    576 	.globl __sdcc_gsinit_startup
                                    577 	.globl __sdcc_program_startup
                                    578 	.globl __start__stack
                                    579 	.globl __mcs51_genXINIT
                                    580 	.globl __mcs51_genXRAMCLEAR
                                    581 	.globl __mcs51_genRAMCLEAR
                                    582 	.area GSFINAL (CODE)
      000075 02 00 03         [24]  583 	ljmp	__sdcc_program_startup
                                    584 ;--------------------------------------------------------
                                    585 ; Home
                                    586 ;--------------------------------------------------------
                                    587 	.area HOME    (CODE)
                                    588 	.area HOME    (CODE)
      000003                        589 __sdcc_program_startup:
      000003 02 00 E4         [24]  590 	ljmp	_main
                                    591 ;	return from main will return to caller
                                    592 ;--------------------------------------------------------
                                    593 ; code
                                    594 ;--------------------------------------------------------
                                    595 	.area CSEG    (CODE)
                                    596 ;------------------------------------------------------------
                                    597 ;Allocation info for local variables in function 'TIM0_Init'
                                    598 ;------------------------------------------------------------
                                    599 ;	main.c:11: void TIM0_Init(void)
                                    600 ;	-----------------------------------------
                                    601 ;	 function TIM0_Init
                                    602 ;	-----------------------------------------
      000078                        603 _TIM0_Init:
                           000007   604 	ar7 = 0x07
                           000006   605 	ar6 = 0x06
                           000005   606 	ar5 = 0x05
                           000004   607 	ar4 = 0x04
                           000003   608 	ar3 = 0x03
                           000002   609 	ar2 = 0x02
                           000001   610 	ar1 = 0x01
                           000000   611 	ar0 = 0x00
                                    612 ;	main.c:13: TMOD = 0x01;
      000078 75 89 01         [24]  613 	mov	_TMOD,#0x01
                                    614 ;	main.c:14: }
      00007B 22               [24]  615 	ret
                                    616 ;------------------------------------------------------------
                                    617 ;Allocation info for local variables in function 'Delay_Ms'
                                    618 ;------------------------------------------------------------
                                    619 ;u16Delay                  Allocated to registers 
                                    620 ;------------------------------------------------------------
                                    621 ;	main.c:15: void Delay_Ms(uint16_t u16Delay)
                                    622 ;	-----------------------------------------
                                    623 ;	 function Delay_Ms
                                    624 ;	-----------------------------------------
      00007C                        625 _Delay_Ms:
      00007C AE 82            [24]  626 	mov	r6,dpl
      00007E AF 83            [24]  627 	mov	r7,dph
                                    628 ;	main.c:17: while (u16Delay--) {
      000080                        629 00104$:
      000080 8E 04            [24]  630 	mov	ar4,r6
      000082 8F 05            [24]  631 	mov	ar5,r7
      000084 1E               [12]  632 	dec	r6
      000085 BE FF 01         [24]  633 	cjne	r6,#0xff,00126$
      000088 1F               [12]  634 	dec	r7
      000089                        635 00126$:
      000089 EC               [12]  636 	mov	a,r4
      00008A 4D               [12]  637 	orl	a,r5
      00008B 60 13            [24]  638 	jz	00107$
                                    639 ;	main.c:18: TH0 = 0xF8;
      00008D 75 8C F8         [24]  640 	mov	_TH0,#0xf8
                                    641 ;	main.c:19: TL0 = 0x30;
      000090 75 8A 30         [24]  642 	mov	_TL0,#0x30
                                    643 ;	main.c:20: TF0 = 0;
                                    644 ;	assignBit
      000093 C2 8D            [12]  645 	clr	_TF0
                                    646 ;	main.c:21: TR0 = 1;
                                    647 ;	assignBit
      000095 D2 8C            [12]  648 	setb	_TR0
                                    649 ;	main.c:22: while (!TF0);
      000097                        650 00101$:
      000097 30 8D FD         [24]  651 	jnb	_TF0,00101$
                                    652 ;	main.c:23: TR0 = 0;
                                    653 ;	assignBit
      00009A C2 8C            [12]  654 	clr	_TR0
                                    655 ;	main.c:24: TF0 = 0;
                                    656 ;	assignBit
      00009C C2 8D            [12]  657 	clr	_TF0
      00009E 80 E0            [24]  658 	sjmp	00104$
      0000A0                        659 00107$:
                                    660 ;	main.c:26: }
      0000A0 22               [24]  661 	ret
                                    662 ;------------------------------------------------------------
                                    663 ;Allocation info for local variables in function '__delay_ms'
                                    664 ;------------------------------------------------------------
                                    665 ;u16Delay                  Allocated to registers 
                                    666 ;------------------------------------------------------------
                                    667 ;	main.c:27: void __delay_ms(uint16_t u16Delay)
                                    668 ;	-----------------------------------------
                                    669 ;	 function __delay_ms
                                    670 ;	-----------------------------------------
      0000A1                        671 ___delay_ms:
      0000A1 AE 82            [24]  672 	mov	r6,dpl
      0000A3 AF 83            [24]  673 	mov	r7,dph
                                    674 ;	main.c:29: while (u16Delay--) {
      0000A5                        675 00104$:
      0000A5 8E 04            [24]  676 	mov	ar4,r6
      0000A7 8F 05            [24]  677 	mov	ar5,r7
      0000A9 1E               [12]  678 	dec	r6
      0000AA BE FF 01         [24]  679 	cjne	r6,#0xff,00126$
      0000AD 1F               [12]  680 	dec	r7
      0000AE                        681 00126$:
      0000AE EC               [12]  682 	mov	a,r4
      0000AF 4D               [12]  683 	orl	a,r5
      0000B0 60 13            [24]  684 	jz	00107$
                                    685 ;	main.c:30: TH0 = 0xF8;
      0000B2 75 8C F8         [24]  686 	mov	_TH0,#0xf8
                                    687 ;	main.c:31: TL0 = 0x30;
      0000B5 75 8A 30         [24]  688 	mov	_TL0,#0x30
                                    689 ;	main.c:32: TF0 = 0;
                                    690 ;	assignBit
      0000B8 C2 8D            [12]  691 	clr	_TF0
                                    692 ;	main.c:33: TR0 = 1;
                                    693 ;	assignBit
      0000BA D2 8C            [12]  694 	setb	_TR0
                                    695 ;	main.c:34: while (!TF0);
      0000BC                        696 00101$:
      0000BC 30 8D FD         [24]  697 	jnb	_TF0,00101$
                                    698 ;	main.c:35: TR0 = 0;
                                    699 ;	assignBit
      0000BF C2 8C            [12]  700 	clr	_TR0
                                    701 ;	main.c:36: TF0 = 0;
                                    702 ;	assignBit
      0000C1 C2 8D            [12]  703 	clr	_TF0
      0000C3 80 E0            [24]  704 	sjmp	00104$
      0000C5                        705 00107$:
                                    706 ;	main.c:38: }
      0000C5 22               [24]  707 	ret
                                    708 ;------------------------------------------------------------
                                    709 ;Allocation info for local variables in function '__delay_us'
                                    710 ;------------------------------------------------------------
                                    711 ;u16Delay                  Allocated to registers 
                                    712 ;------------------------------------------------------------
                                    713 ;	main.c:39: void __delay_us(uint16_t u16Delay)
                                    714 ;	-----------------------------------------
                                    715 ;	 function __delay_us
                                    716 ;	-----------------------------------------
      0000C6                        717 ___delay_us:
      0000C6 AE 82            [24]  718 	mov	r6,dpl
      0000C8 AF 83            [24]  719 	mov	r7,dph
                                    720 ;	main.c:41: while (u16Delay--) {
      0000CA                        721 00101$:
      0000CA 8E 04            [24]  722 	mov	ar4,r6
      0000CC 8F 05            [24]  723 	mov	ar5,r7
      0000CE 1E               [12]  724 	dec	r6
      0000CF BE FF 01         [24]  725 	cjne	r6,#0xff,00111$
      0000D2 1F               [12]  726 	dec	r7
      0000D3                        727 00111$:
      0000D3 EC               [12]  728 	mov	a,r4
      0000D4 4D               [12]  729 	orl	a,r5
      0000D5 70 F3            [24]  730 	jnz	00101$
                                    731 ;	main.c:52: }
      0000D7 22               [24]  732 	ret
                                    733 ;------------------------------------------------------------
                                    734 ;Allocation info for local variables in function 'UART0_Send'
                                    735 ;------------------------------------------------------------
                                    736 ;u8Data                    Allocated to registers r7 
                                    737 ;------------------------------------------------------------
                                    738 ;	main.c:56: void UART0_Send(uint8_t u8Data)
                                    739 ;	-----------------------------------------
                                    740 ;	 function UART0_Send
                                    741 ;	-----------------------------------------
      0000D8                        742 _UART0_Send:
      0000D8 AF 82            [24]  743 	mov	r7,dpl
                                    744 ;	main.c:58: U1TI = 0;
                                    745 ;	assignBit
      0000DA C2 C1            [12]  746 	clr	_U1TI
                                    747 ;	main.c:59: SBUF1 = u8Data;
      0000DC 8F C1            [24]  748 	mov	_SBUF1,r7
                                    749 ;	main.c:60: while (!U1TI) {
      0000DE                        750 00101$:
                                    751 ;	main.c:62: U1TI = 0;
                                    752 ;	assignBit
      0000DE 10 C1 02         [24]  753 	jbc	_U1TI,00114$
      0000E1 80 FB            [24]  754 	sjmp	00101$
      0000E3                        755 00114$:
                                    756 ;	main.c:63: }
      0000E3 22               [24]  757 	ret
                                    758 ;------------------------------------------------------------
                                    759 ;Allocation info for local variables in function 'main'
                                    760 ;------------------------------------------------------------
                                    761 ;	main.c:67: int main(void)
                                    762 ;	-----------------------------------------
                                    763 ;	 function main
                                    764 ;	-----------------------------------------
      0000E4                        765 _main:
                                    766 ;	main.c:69: SAFE_MOD = 0x55;
      0000E4 75 A1 55         [24]  767 	mov	_SAFE_MOD,#0x55
                                    768 ;	main.c:70: SAFE_MOD = 0xAA;
      0000E7 75 A1 AA         [24]  769 	mov	_SAFE_MOD,#0xaa
                                    770 ;	main.c:71: CLOCK_CFG = 0x86;
      0000EA 75 B9 86         [24]  771 	mov	_CLOCK_CFG,#0x86
                                    772 ;	main.c:72: SAFE_MOD = 0x00;
      0000ED 75 A1 00         [24]  773 	mov	_SAFE_MOD,#0x00
                                    774 ;	main.c:74: Led_Init();
      0000F0 12 14 93         [24]  775 	lcall	_Led_Init
                                    776 ;	main.c:75: TIM0_Init();
      0000F3 12 00 78         [24]  777 	lcall	_TIM0_Init
                                    778 ;	main.c:77: if (calc() != 0x00001629) {
      0000F6 12 1A 67         [24]  779 	lcall	_calc
      0000F9 AC 82            [24]  780 	mov	r4,dpl
      0000FB AD 83            [24]  781 	mov	r5,dph
      0000FD AE F0            [24]  782 	mov	r6,b
      0000FF FF               [12]  783 	mov	r7,a
      000100 BC 29 0B         [24]  784 	cjne	r4,#0x29,00119$
      000103 BD 16 08         [24]  785 	cjne	r5,#0x16,00119$
      000106 BE 00 05         [24]  786 	cjne	r6,#0x00,00119$
      000109 BF 00 02         [24]  787 	cjne	r7,#0x00,00119$
      00010C 80 14            [24]  788 	sjmp	00105$
      00010E                        789 00119$:
                                    790 ;	main.c:78: while (1) {
      00010E                        791 00102$:
                                    792 ;	main.c:79: Led_On();
      00010E 12 14 9C         [24]  793 	lcall	_Led_On
                                    794 ;	main.c:80: Delay_Ms(100);
      000111 90 00 64         [24]  795 	mov	dptr,#0x0064
      000114 12 00 7C         [24]  796 	lcall	_Delay_Ms
                                    797 ;	main.c:81: Led_Off();
      000117 12 14 9F         [24]  798 	lcall	_Led_Off
                                    799 ;	main.c:82: Delay_Ms(100);
      00011A 90 00 64         [24]  800 	mov	dptr,#0x0064
      00011D 12 00 7C         [24]  801 	lcall	_Delay_Ms
      000120 80 EC            [24]  802 	sjmp	00102$
      000122                        803 00105$:
                                    804 ;	main.c:91: USB_InitClock();
      000122 12 1D C1         [24]  805 	lcall	_USB_InitClock
                                    806 ;	main.c:92: USB_Init();
      000125 12 1D C2         [24]  807 	lcall	_USB_Init
                                    808 ;	main.c:94: while (1) {
      000128                        809 00107$:
                                    810 ;	main.c:95: USB_Task();
      000128 12 1D CD         [24]  811 	lcall	_USB_Task
                                    812 ;	main.c:97: }
      00012B 80 FB            [24]  813 	sjmp	00107$
                                    814 	.area CSEG    (CODE)
                                    815 	.area CONST   (CODE)
                                    816 	.area XINIT   (CODE)
                                    817 	.area CABS    (ABS,CODE)
