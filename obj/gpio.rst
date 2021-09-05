                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module gpio
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _UIF_BUS_RST
                                     12 	.globl _UIF_TRANSFER
                                     13 	.globl _UIF_SUSPEND
                                     14 	.globl _UIF_FIFO_OV
                                     15 	.globl _U_SIE_FREE
                                     16 	.globl _U_TOG_OK
                                     17 	.globl _U_IS_NAK
                                     18 	.globl _ADC_CHAN0
                                     19 	.globl _ADC_CHAN1
                                     20 	.globl _CMP_CHAN
                                     21 	.globl _ADC_START
                                     22 	.globl _ADC_IF
                                     23 	.globl _CMP_IF
                                     24 	.globl _CMPO
                                     25 	.globl _U1RI
                                     26 	.globl _U1TI
                                     27 	.globl _U1RB8
                                     28 	.globl _U1TB8
                                     29 	.globl _U1REN
                                     30 	.globl _U1SMOD
                                     31 	.globl _U1SM0
                                     32 	.globl _S0_R_FIFO
                                     33 	.globl _S0_T_FIFO
                                     34 	.globl _S0_FREE
                                     35 	.globl _S0_IF_BYTE
                                     36 	.globl _S0_IF_FIRST
                                     37 	.globl _S0_IF_OV
                                     38 	.globl _S0_FST_ACT
                                     39 	.globl _CP_RL2
                                     40 	.globl _C_T2
                                     41 	.globl _TR2
                                     42 	.globl _EXEN2
                                     43 	.globl _TCLK
                                     44 	.globl _RCLK
                                     45 	.globl _EXF2
                                     46 	.globl _CAP1F
                                     47 	.globl _TF2
                                     48 	.globl _RI
                                     49 	.globl _TI
                                     50 	.globl _RB8
                                     51 	.globl _TB8
                                     52 	.globl _REN
                                     53 	.globl _SM2
                                     54 	.globl _SM1
                                     55 	.globl _SM0
                                     56 	.globl _IT0
                                     57 	.globl _IE0
                                     58 	.globl _IT1
                                     59 	.globl _IE1
                                     60 	.globl _TR0
                                     61 	.globl _TF0
                                     62 	.globl _TR1
                                     63 	.globl _TF1
                                     64 	.globl _RXD
                                     65 	.globl _PWM1_
                                     66 	.globl _TXD
                                     67 	.globl _PWM2_
                                     68 	.globl _AIN3
                                     69 	.globl _VBUS1
                                     70 	.globl _INT0
                                     71 	.globl _TXD1_
                                     72 	.globl _INT1
                                     73 	.globl _T0
                                     74 	.globl _RXD1_
                                     75 	.globl _PWM2
                                     76 	.globl _T1
                                     77 	.globl _UDP
                                     78 	.globl _UDM
                                     79 	.globl _TIN0
                                     80 	.globl _CAP1
                                     81 	.globl _T2
                                     82 	.globl _AIN0
                                     83 	.globl _VBUS2
                                     84 	.globl _TIN1
                                     85 	.globl _CAP2
                                     86 	.globl _T2EX
                                     87 	.globl _RXD_
                                     88 	.globl _TXD_
                                     89 	.globl _AIN1
                                     90 	.globl _UCC1
                                     91 	.globl _TIN2
                                     92 	.globl _SCS
                                     93 	.globl _CAP1_
                                     94 	.globl _T2_
                                     95 	.globl _AIN2
                                     96 	.globl _UCC2
                                     97 	.globl _TIN3
                                     98 	.globl _PWM1
                                     99 	.globl _MOSI
                                    100 	.globl _TIN4
                                    101 	.globl _RXD1
                                    102 	.globl _MISO
                                    103 	.globl _TIN5
                                    104 	.globl _TXD1
                                    105 	.globl _SCK
                                    106 	.globl _IE_SPI0
                                    107 	.globl _IE_TKEY
                                    108 	.globl _IE_USB
                                    109 	.globl _IE_ADC
                                    110 	.globl _IE_UART1
                                    111 	.globl _IE_PWMX
                                    112 	.globl _IE_GPIO
                                    113 	.globl _IE_WDOG
                                    114 	.globl _PX0
                                    115 	.globl _PT0
                                    116 	.globl _PX1
                                    117 	.globl _PT1
                                    118 	.globl _PS
                                    119 	.globl _PT2
                                    120 	.globl _PL_FLAG
                                    121 	.globl _PH_FLAG
                                    122 	.globl _EX0
                                    123 	.globl _ET0
                                    124 	.globl _EX1
                                    125 	.globl _ET1
                                    126 	.globl _ES
                                    127 	.globl _ET2
                                    128 	.globl _E_DIS
                                    129 	.globl _EA
                                    130 	.globl _P
                                    131 	.globl _F1
                                    132 	.globl _OV
                                    133 	.globl _RS0
                                    134 	.globl _RS1
                                    135 	.globl _F0
                                    136 	.globl _AC
                                    137 	.globl _CY
                                    138 	.globl _UEP1_DMA_H
                                    139 	.globl _UEP1_DMA_L
                                    140 	.globl _UEP1_DMA
                                    141 	.globl _UEP0_DMA_H
                                    142 	.globl _UEP0_DMA_L
                                    143 	.globl _UEP0_DMA
                                    144 	.globl _UEP2_3_MOD
                                    145 	.globl _UEP4_1_MOD
                                    146 	.globl _UEP3_DMA_H
                                    147 	.globl _UEP3_DMA_L
                                    148 	.globl _UEP3_DMA
                                    149 	.globl _UEP2_DMA_H
                                    150 	.globl _UEP2_DMA_L
                                    151 	.globl _UEP2_DMA
                                    152 	.globl _USB_DEV_AD
                                    153 	.globl _USB_CTRL
                                    154 	.globl _USB_INT_EN
                                    155 	.globl _UEP4_T_LEN
                                    156 	.globl _UEP4_CTRL
                                    157 	.globl _UEP0_T_LEN
                                    158 	.globl _UEP0_CTRL
                                    159 	.globl _USB_RX_LEN
                                    160 	.globl _USB_MIS_ST
                                    161 	.globl _USB_INT_ST
                                    162 	.globl _USB_INT_FG
                                    163 	.globl _UEP3_T_LEN
                                    164 	.globl _UEP3_CTRL
                                    165 	.globl _UEP2_T_LEN
                                    166 	.globl _UEP2_CTRL
                                    167 	.globl _UEP1_T_LEN
                                    168 	.globl _UEP1_CTRL
                                    169 	.globl _UDEV_CTRL
                                    170 	.globl _USB_C_CTRL
                                    171 	.globl _TKEY_DATH
                                    172 	.globl _TKEY_DATL
                                    173 	.globl _TKEY_DAT
                                    174 	.globl _TKEY_CTRL
                                    175 	.globl _ADC_DATA
                                    176 	.globl _ADC_CFG
                                    177 	.globl _ADC_CTRL
                                    178 	.globl _SBAUD1
                                    179 	.globl _SBUF1
                                    180 	.globl _SCON1
                                    181 	.globl _SPI0_SETUP
                                    182 	.globl _SPI0_CK_SE
                                    183 	.globl _SPI0_CTRL
                                    184 	.globl _SPI0_DATA
                                    185 	.globl _SPI0_STAT
                                    186 	.globl _PWM_CK_SE
                                    187 	.globl _PWM_CTRL
                                    188 	.globl _PWM_DATA1
                                    189 	.globl _PWM_DATA2
                                    190 	.globl _T2CAP1H
                                    191 	.globl _T2CAP1L
                                    192 	.globl _T2CAP1
                                    193 	.globl _TH2
                                    194 	.globl _TL2
                                    195 	.globl _T2COUNT
                                    196 	.globl _RCAP2H
                                    197 	.globl _RCAP2L
                                    198 	.globl _RCAP2
                                    199 	.globl _T2MOD
                                    200 	.globl _T2CON
                                    201 	.globl _SBUF
                                    202 	.globl _SCON
                                    203 	.globl _TH1
                                    204 	.globl _TH0
                                    205 	.globl _TL1
                                    206 	.globl _TL0
                                    207 	.globl _TMOD
                                    208 	.globl _TCON
                                    209 	.globl _XBUS_AUX
                                    210 	.globl _PIN_FUNC
                                    211 	.globl _P3_DIR_PU
                                    212 	.globl _P3_MOD_OC
                                    213 	.globl _P3
                                    214 	.globl _P2
                                    215 	.globl _P1_DIR_PU
                                    216 	.globl _P1_MOD_OC
                                    217 	.globl _P1
                                    218 	.globl _ROM_CTRL
                                    219 	.globl _ROM_DATA_H
                                    220 	.globl _ROM_DATA_L
                                    221 	.globl _ROM_DATA
                                    222 	.globl _ROM_ADDR_H
                                    223 	.globl _ROM_ADDR_L
                                    224 	.globl _ROM_ADDR
                                    225 	.globl _GPIO_IE
                                    226 	.globl _IP_EX
                                    227 	.globl _IE_EX
                                    228 	.globl _IP
                                    229 	.globl _IE
                                    230 	.globl _WDOG_COUNT
                                    231 	.globl _RESET_KEEP
                                    232 	.globl _WAKE_CTRL
                                    233 	.globl _CLOCK_CFG
                                    234 	.globl _PCON
                                    235 	.globl _GLOBAL_CFG
                                    236 	.globl _SAFE_MOD
                                    237 	.globl _DPH
                                    238 	.globl _DPL
                                    239 	.globl _SP
                                    240 	.globl _B
                                    241 	.globl _ACC
                                    242 	.globl _PSW
                                    243 	.globl _Led_Init
                                    244 	.globl _Led_On
                                    245 	.globl _Led_Off
                                    246 ;--------------------------------------------------------
                                    247 ; special function registers
                                    248 ;--------------------------------------------------------
                                    249 	.area RSEG    (ABS,DATA)
      000000                        250 	.org 0x0000
                           0000D0   251 _PSW	=	0x00d0
                           0000E0   252 _ACC	=	0x00e0
                           0000F0   253 _B	=	0x00f0
                           000081   254 _SP	=	0x0081
                           000082   255 _DPL	=	0x0082
                           000083   256 _DPH	=	0x0083
                           0000A1   257 _SAFE_MOD	=	0x00a1
                           0000B1   258 _GLOBAL_CFG	=	0x00b1
                           000087   259 _PCON	=	0x0087
                           0000B9   260 _CLOCK_CFG	=	0x00b9
                           0000A9   261 _WAKE_CTRL	=	0x00a9
                           0000FE   262 _RESET_KEEP	=	0x00fe
                           0000FF   263 _WDOG_COUNT	=	0x00ff
                           0000A8   264 _IE	=	0x00a8
                           0000B8   265 _IP	=	0x00b8
                           0000E8   266 _IE_EX	=	0x00e8
                           0000E9   267 _IP_EX	=	0x00e9
                           0000C7   268 _GPIO_IE	=	0x00c7
                           008584   269 _ROM_ADDR	=	0x8584
                           000084   270 _ROM_ADDR_L	=	0x0084
                           000085   271 _ROM_ADDR_H	=	0x0085
                           008F8E   272 _ROM_DATA	=	0x8f8e
                           00008E   273 _ROM_DATA_L	=	0x008e
                           00008F   274 _ROM_DATA_H	=	0x008f
                           000086   275 _ROM_CTRL	=	0x0086
                           000090   276 _P1	=	0x0090
                           000092   277 _P1_MOD_OC	=	0x0092
                           000093   278 _P1_DIR_PU	=	0x0093
                           0000A0   279 _P2	=	0x00a0
                           0000B0   280 _P3	=	0x00b0
                           000096   281 _P3_MOD_OC	=	0x0096
                           000097   282 _P3_DIR_PU	=	0x0097
                           0000C6   283 _PIN_FUNC	=	0x00c6
                           0000A2   284 _XBUS_AUX	=	0x00a2
                           000088   285 _TCON	=	0x0088
                           000089   286 _TMOD	=	0x0089
                           00008A   287 _TL0	=	0x008a
                           00008B   288 _TL1	=	0x008b
                           00008C   289 _TH0	=	0x008c
                           00008D   290 _TH1	=	0x008d
                           000098   291 _SCON	=	0x0098
                           000099   292 _SBUF	=	0x0099
                           0000C8   293 _T2CON	=	0x00c8
                           0000C9   294 _T2MOD	=	0x00c9
                           00CBCA   295 _RCAP2	=	0xcbca
                           0000CA   296 _RCAP2L	=	0x00ca
                           0000CB   297 _RCAP2H	=	0x00cb
                           00CDCC   298 _T2COUNT	=	0xcdcc
                           0000CC   299 _TL2	=	0x00cc
                           0000CD   300 _TH2	=	0x00cd
                           00CFCE   301 _T2CAP1	=	0xcfce
                           0000CE   302 _T2CAP1L	=	0x00ce
                           0000CF   303 _T2CAP1H	=	0x00cf
                           00009B   304 _PWM_DATA2	=	0x009b
                           00009C   305 _PWM_DATA1	=	0x009c
                           00009D   306 _PWM_CTRL	=	0x009d
                           00009E   307 _PWM_CK_SE	=	0x009e
                           0000F8   308 _SPI0_STAT	=	0x00f8
                           0000F9   309 _SPI0_DATA	=	0x00f9
                           0000FA   310 _SPI0_CTRL	=	0x00fa
                           0000FB   311 _SPI0_CK_SE	=	0x00fb
                           0000FC   312 _SPI0_SETUP	=	0x00fc
                           0000C0   313 _SCON1	=	0x00c0
                           0000C1   314 _SBUF1	=	0x00c1
                           0000C2   315 _SBAUD1	=	0x00c2
                           000080   316 _ADC_CTRL	=	0x0080
                           00009A   317 _ADC_CFG	=	0x009a
                           00009F   318 _ADC_DATA	=	0x009f
                           0000C3   319 _TKEY_CTRL	=	0x00c3
                           00C5C4   320 _TKEY_DAT	=	0xc5c4
                           0000C4   321 _TKEY_DATL	=	0x00c4
                           0000C5   322 _TKEY_DATH	=	0x00c5
                           000091   323 _USB_C_CTRL	=	0x0091
                           0000D1   324 _UDEV_CTRL	=	0x00d1
                           0000D2   325 _UEP1_CTRL	=	0x00d2
                           0000D3   326 _UEP1_T_LEN	=	0x00d3
                           0000D4   327 _UEP2_CTRL	=	0x00d4
                           0000D5   328 _UEP2_T_LEN	=	0x00d5
                           0000D6   329 _UEP3_CTRL	=	0x00d6
                           0000D7   330 _UEP3_T_LEN	=	0x00d7
                           0000D8   331 _USB_INT_FG	=	0x00d8
                           0000D9   332 _USB_INT_ST	=	0x00d9
                           0000DA   333 _USB_MIS_ST	=	0x00da
                           0000DB   334 _USB_RX_LEN	=	0x00db
                           0000DC   335 _UEP0_CTRL	=	0x00dc
                           0000DD   336 _UEP0_T_LEN	=	0x00dd
                           0000DE   337 _UEP4_CTRL	=	0x00de
                           0000DF   338 _UEP4_T_LEN	=	0x00df
                           0000E1   339 _USB_INT_EN	=	0x00e1
                           0000E2   340 _USB_CTRL	=	0x00e2
                           0000E3   341 _USB_DEV_AD	=	0x00e3
                           00E5E4   342 _UEP2_DMA	=	0xe5e4
                           0000E4   343 _UEP2_DMA_L	=	0x00e4
                           0000E5   344 _UEP2_DMA_H	=	0x00e5
                           00E7E6   345 _UEP3_DMA	=	0xe7e6
                           0000E6   346 _UEP3_DMA_L	=	0x00e6
                           0000E7   347 _UEP3_DMA_H	=	0x00e7
                           0000EA   348 _UEP4_1_MOD	=	0x00ea
                           0000EB   349 _UEP2_3_MOD	=	0x00eb
                           00EDEC   350 _UEP0_DMA	=	0xedec
                           0000EC   351 _UEP0_DMA_L	=	0x00ec
                           0000ED   352 _UEP0_DMA_H	=	0x00ed
                           00EFEE   353 _UEP1_DMA	=	0xefee
                           0000EE   354 _UEP1_DMA_L	=	0x00ee
                           0000EF   355 _UEP1_DMA_H	=	0x00ef
                                    356 ;--------------------------------------------------------
                                    357 ; special function bits
                                    358 ;--------------------------------------------------------
                                    359 	.area RSEG    (ABS,DATA)
      000000                        360 	.org 0x0000
                           0000D7   361 _CY	=	0x00d7
                           0000D6   362 _AC	=	0x00d6
                           0000D5   363 _F0	=	0x00d5
                           0000D4   364 _RS1	=	0x00d4
                           0000D3   365 _RS0	=	0x00d3
                           0000D2   366 _OV	=	0x00d2
                           0000D1   367 _F1	=	0x00d1
                           0000D0   368 _P	=	0x00d0
                           0000AF   369 _EA	=	0x00af
                           0000AE   370 _E_DIS	=	0x00ae
                           0000AD   371 _ET2	=	0x00ad
                           0000AC   372 _ES	=	0x00ac
                           0000AB   373 _ET1	=	0x00ab
                           0000AA   374 _EX1	=	0x00aa
                           0000A9   375 _ET0	=	0x00a9
                           0000A8   376 _EX0	=	0x00a8
                           0000BF   377 _PH_FLAG	=	0x00bf
                           0000BE   378 _PL_FLAG	=	0x00be
                           0000BD   379 _PT2	=	0x00bd
                           0000BC   380 _PS	=	0x00bc
                           0000BB   381 _PT1	=	0x00bb
                           0000BA   382 _PX1	=	0x00ba
                           0000B9   383 _PT0	=	0x00b9
                           0000B8   384 _PX0	=	0x00b8
                           0000EF   385 _IE_WDOG	=	0x00ef
                           0000EE   386 _IE_GPIO	=	0x00ee
                           0000ED   387 _IE_PWMX	=	0x00ed
                           0000EC   388 _IE_UART1	=	0x00ec
                           0000EB   389 _IE_ADC	=	0x00eb
                           0000EA   390 _IE_USB	=	0x00ea
                           0000E9   391 _IE_TKEY	=	0x00e9
                           0000E8   392 _IE_SPI0	=	0x00e8
                           000097   393 _SCK	=	0x0097
                           000097   394 _TXD1	=	0x0097
                           000097   395 _TIN5	=	0x0097
                           000096   396 _MISO	=	0x0096
                           000096   397 _RXD1	=	0x0096
                           000096   398 _TIN4	=	0x0096
                           000095   399 _MOSI	=	0x0095
                           000095   400 _PWM1	=	0x0095
                           000095   401 _TIN3	=	0x0095
                           000095   402 _UCC2	=	0x0095
                           000095   403 _AIN2	=	0x0095
                           000094   404 _T2_	=	0x0094
                           000094   405 _CAP1_	=	0x0094
                           000094   406 _SCS	=	0x0094
                           000094   407 _TIN2	=	0x0094
                           000094   408 _UCC1	=	0x0094
                           000094   409 _AIN1	=	0x0094
                           000093   410 _TXD_	=	0x0093
                           000092   411 _RXD_	=	0x0092
                           000091   412 _T2EX	=	0x0091
                           000091   413 _CAP2	=	0x0091
                           000091   414 _TIN1	=	0x0091
                           000091   415 _VBUS2	=	0x0091
                           000091   416 _AIN0	=	0x0091
                           000090   417 _T2	=	0x0090
                           000090   418 _CAP1	=	0x0090
                           000090   419 _TIN0	=	0x0090
                           0000B7   420 _UDM	=	0x00b7
                           0000B6   421 _UDP	=	0x00b6
                           0000B5   422 _T1	=	0x00b5
                           0000B4   423 _PWM2	=	0x00b4
                           0000B4   424 _RXD1_	=	0x00b4
                           0000B4   425 _T0	=	0x00b4
                           0000B3   426 _INT1	=	0x00b3
                           0000B2   427 _TXD1_	=	0x00b2
                           0000B2   428 _INT0	=	0x00b2
                           0000B2   429 _VBUS1	=	0x00b2
                           0000B2   430 _AIN3	=	0x00b2
                           0000B1   431 _PWM2_	=	0x00b1
                           0000B1   432 _TXD	=	0x00b1
                           0000B0   433 _PWM1_	=	0x00b0
                           0000B0   434 _RXD	=	0x00b0
                           00008F   435 _TF1	=	0x008f
                           00008E   436 _TR1	=	0x008e
                           00008D   437 _TF0	=	0x008d
                           00008C   438 _TR0	=	0x008c
                           00008B   439 _IE1	=	0x008b
                           00008A   440 _IT1	=	0x008a
                           000089   441 _IE0	=	0x0089
                           000088   442 _IT0	=	0x0088
                           00009F   443 _SM0	=	0x009f
                           00009E   444 _SM1	=	0x009e
                           00009D   445 _SM2	=	0x009d
                           00009C   446 _REN	=	0x009c
                           00009B   447 _TB8	=	0x009b
                           00009A   448 _RB8	=	0x009a
                           000099   449 _TI	=	0x0099
                           000098   450 _RI	=	0x0098
                           0000CF   451 _TF2	=	0x00cf
                           0000CF   452 _CAP1F	=	0x00cf
                           0000CE   453 _EXF2	=	0x00ce
                           0000CD   454 _RCLK	=	0x00cd
                           0000CC   455 _TCLK	=	0x00cc
                           0000CB   456 _EXEN2	=	0x00cb
                           0000CA   457 _TR2	=	0x00ca
                           0000C9   458 _C_T2	=	0x00c9
                           0000C8   459 _CP_RL2	=	0x00c8
                           0000FF   460 _S0_FST_ACT	=	0x00ff
                           0000FE   461 _S0_IF_OV	=	0x00fe
                           0000FD   462 _S0_IF_FIRST	=	0x00fd
                           0000FC   463 _S0_IF_BYTE	=	0x00fc
                           0000FB   464 _S0_FREE	=	0x00fb
                           0000FA   465 _S0_T_FIFO	=	0x00fa
                           0000F8   466 _S0_R_FIFO	=	0x00f8
                           0000C7   467 _U1SM0	=	0x00c7
                           0000C5   468 _U1SMOD	=	0x00c5
                           0000C4   469 _U1REN	=	0x00c4
                           0000C3   470 _U1TB8	=	0x00c3
                           0000C2   471 _U1RB8	=	0x00c2
                           0000C1   472 _U1TI	=	0x00c1
                           0000C0   473 _U1RI	=	0x00c0
                           000087   474 _CMPO	=	0x0087
                           000086   475 _CMP_IF	=	0x0086
                           000085   476 _ADC_IF	=	0x0085
                           000084   477 _ADC_START	=	0x0084
                           000083   478 _CMP_CHAN	=	0x0083
                           000081   479 _ADC_CHAN1	=	0x0081
                           000080   480 _ADC_CHAN0	=	0x0080
                           0000DF   481 _U_IS_NAK	=	0x00df
                           0000DE   482 _U_TOG_OK	=	0x00de
                           0000DD   483 _U_SIE_FREE	=	0x00dd
                           0000DC   484 _UIF_FIFO_OV	=	0x00dc
                           0000DA   485 _UIF_SUSPEND	=	0x00da
                           0000D9   486 _UIF_TRANSFER	=	0x00d9
                           0000D8   487 _UIF_BUS_RST	=	0x00d8
                           000094   488 _led	=	0x0094
                                    489 ;--------------------------------------------------------
                                    490 ; overlayable register banks
                                    491 ;--------------------------------------------------------
                                    492 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        493 	.ds 8
                                    494 ;--------------------------------------------------------
                                    495 ; internal ram data
                                    496 ;--------------------------------------------------------
                                    497 	.area DSEG    (DATA)
                                    498 ;--------------------------------------------------------
                                    499 ; overlayable items in internal ram 
                                    500 ;--------------------------------------------------------
                                    501 ;--------------------------------------------------------
                                    502 ; indirectly addressable internal ram data
                                    503 ;--------------------------------------------------------
                                    504 	.area ISEG    (DATA)
                                    505 ;--------------------------------------------------------
                                    506 ; absolute internal ram data
                                    507 ;--------------------------------------------------------
                                    508 	.area IABS    (ABS,DATA)
                                    509 	.area IABS    (ABS,DATA)
                                    510 ;--------------------------------------------------------
                                    511 ; bit data
                                    512 ;--------------------------------------------------------
                                    513 	.area BSEG    (BIT)
                                    514 ;--------------------------------------------------------
                                    515 ; paged external ram data
                                    516 ;--------------------------------------------------------
                                    517 	.area PSEG    (PAG,XDATA)
                                    518 ;--------------------------------------------------------
                                    519 ; external ram data
                                    520 ;--------------------------------------------------------
                                    521 	.area XSEG    (XDATA)
                                    522 ;--------------------------------------------------------
                                    523 ; absolute external ram data
                                    524 ;--------------------------------------------------------
                                    525 	.area XABS    (ABS,XDATA)
                                    526 ;--------------------------------------------------------
                                    527 ; external initialized ram data
                                    528 ;--------------------------------------------------------
                                    529 	.area XISEG   (XDATA)
                                    530 	.area HOME    (CODE)
                                    531 	.area GSINIT0 (CODE)
                                    532 	.area GSINIT1 (CODE)
                                    533 	.area GSINIT2 (CODE)
                                    534 	.area GSINIT3 (CODE)
                                    535 	.area GSINIT4 (CODE)
                                    536 	.area GSINIT5 (CODE)
                                    537 	.area GSINIT  (CODE)
                                    538 	.area GSFINAL (CODE)
                                    539 	.area CSEG    (CODE)
                                    540 ;--------------------------------------------------------
                                    541 ; global & static initialisations
                                    542 ;--------------------------------------------------------
                                    543 	.area HOME    (CODE)
                                    544 	.area GSINIT  (CODE)
                                    545 	.area GSFINAL (CODE)
                                    546 	.area GSINIT  (CODE)
                                    547 ;--------------------------------------------------------
                                    548 ; Home
                                    549 ;--------------------------------------------------------
                                    550 	.area HOME    (CODE)
                                    551 	.area HOME    (CODE)
                                    552 ;--------------------------------------------------------
                                    553 ; code
                                    554 ;--------------------------------------------------------
                                    555 	.area CSEG    (CODE)
                                    556 ;------------------------------------------------------------
                                    557 ;Allocation info for local variables in function 'Led_Init'
                                    558 ;------------------------------------------------------------
                                    559 ;	gpio.c:5: void Led_Init(void)
                                    560 ;	-----------------------------------------
                                    561 ;	 function Led_Init
                                    562 ;	-----------------------------------------
      001493                        563 _Led_Init:
                           000007   564 	ar7 = 0x07
                           000006   565 	ar6 = 0x06
                           000005   566 	ar5 = 0x05
                           000004   567 	ar4 = 0x04
                           000003   568 	ar3 = 0x03
                           000002   569 	ar2 = 0x02
                           000001   570 	ar1 = 0x01
                           000000   571 	ar0 = 0x00
                                    572 ;	gpio.c:7: P1_MOD_OC &= ~(1 << 4);
      001493 53 92 EF         [24]  573 	anl	_P1_MOD_OC,#0xef
                                    574 ;	gpio.c:8: P1_DIR_PU |= (1 << 4);
      001496 43 93 10         [24]  575 	orl	_P1_DIR_PU,#0x10
                                    576 ;	gpio.c:9: led = 0;
                                    577 ;	assignBit
      001499 C2 94            [12]  578 	clr	_led
                                    579 ;	gpio.c:10: }
      00149B 22               [24]  580 	ret
                                    581 ;------------------------------------------------------------
                                    582 ;Allocation info for local variables in function 'Led_On'
                                    583 ;------------------------------------------------------------
                                    584 ;	gpio.c:11: void Led_On(void)
                                    585 ;	-----------------------------------------
                                    586 ;	 function Led_On
                                    587 ;	-----------------------------------------
      00149C                        588 _Led_On:
                                    589 ;	gpio.c:13: led = 1;
                                    590 ;	assignBit
      00149C D2 94            [12]  591 	setb	_led
                                    592 ;	gpio.c:14: }
      00149E 22               [24]  593 	ret
                                    594 ;------------------------------------------------------------
                                    595 ;Allocation info for local variables in function 'Led_Off'
                                    596 ;------------------------------------------------------------
                                    597 ;	gpio.c:15: void Led_Off(void)
                                    598 ;	-----------------------------------------
                                    599 ;	 function Led_Off
                                    600 ;	-----------------------------------------
      00149F                        601 _Led_Off:
                                    602 ;	gpio.c:17: led = 0;
                                    603 ;	assignBit
      00149F C2 94            [12]  604 	clr	_led
                                    605 ;	gpio.c:18: }
      0014A1 22               [24]  606 	ret
                                    607 	.area CSEG    (CODE)
                                    608 	.area CONST   (CODE)
                                    609 	.area XINIT   (CODE)
                                    610 	.area CABS    (ABS,CODE)
