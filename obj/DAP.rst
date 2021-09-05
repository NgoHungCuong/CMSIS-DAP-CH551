                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module DAP
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _calc
                                     12 	.globl _SWD_Sequence
                                     13 	.globl _SWJ_Sequence
                                     14 	.globl _SWD_Transfer
                                     15 	.globl _PORT_SWD_SETUP
                                     16 	.globl _memcpy
                                     17 	.globl _P1_4
                                     18 	.globl _P1_7
                                     19 	.globl _P3_2
                                     20 	.globl _P1_5
                                     21 	.globl _UIF_BUS_RST
                                     22 	.globl _UIF_TRANSFER
                                     23 	.globl _UIF_SUSPEND
                                     24 	.globl _UIF_FIFO_OV
                                     25 	.globl _U_SIE_FREE
                                     26 	.globl _U_TOG_OK
                                     27 	.globl _U_IS_NAK
                                     28 	.globl _ADC_CHAN0
                                     29 	.globl _ADC_CHAN1
                                     30 	.globl _CMP_CHAN
                                     31 	.globl _ADC_START
                                     32 	.globl _ADC_IF
                                     33 	.globl _CMP_IF
                                     34 	.globl _CMPO
                                     35 	.globl _U1RI
                                     36 	.globl _U1TI
                                     37 	.globl _U1RB8
                                     38 	.globl _U1TB8
                                     39 	.globl _U1REN
                                     40 	.globl _U1SMOD
                                     41 	.globl _U1SM0
                                     42 	.globl _S0_R_FIFO
                                     43 	.globl _S0_T_FIFO
                                     44 	.globl _S0_FREE
                                     45 	.globl _S0_IF_BYTE
                                     46 	.globl _S0_IF_FIRST
                                     47 	.globl _S0_IF_OV
                                     48 	.globl _S0_FST_ACT
                                     49 	.globl _CP_RL2
                                     50 	.globl _C_T2
                                     51 	.globl _TR2
                                     52 	.globl _EXEN2
                                     53 	.globl _TCLK
                                     54 	.globl _RCLK
                                     55 	.globl _EXF2
                                     56 	.globl _CAP1F
                                     57 	.globl _TF2
                                     58 	.globl _RI
                                     59 	.globl _TI
                                     60 	.globl _RB8
                                     61 	.globl _TB8
                                     62 	.globl _REN
                                     63 	.globl _SM2
                                     64 	.globl _SM1
                                     65 	.globl _SM0
                                     66 	.globl _IT0
                                     67 	.globl _IE0
                                     68 	.globl _IT1
                                     69 	.globl _IE1
                                     70 	.globl _TR0
                                     71 	.globl _TF0
                                     72 	.globl _TR1
                                     73 	.globl _TF1
                                     74 	.globl _RXD
                                     75 	.globl _PWM1_
                                     76 	.globl _TXD
                                     77 	.globl _PWM2_
                                     78 	.globl _AIN3
                                     79 	.globl _VBUS1
                                     80 	.globl _INT0
                                     81 	.globl _TXD1_
                                     82 	.globl _INT1
                                     83 	.globl _T0
                                     84 	.globl _RXD1_
                                     85 	.globl _PWM2
                                     86 	.globl _T1
                                     87 	.globl _UDP
                                     88 	.globl _UDM
                                     89 	.globl _TIN0
                                     90 	.globl _CAP1
                                     91 	.globl _T2
                                     92 	.globl _AIN0
                                     93 	.globl _VBUS2
                                     94 	.globl _TIN1
                                     95 	.globl _CAP2
                                     96 	.globl _T2EX
                                     97 	.globl _RXD_
                                     98 	.globl _TXD_
                                     99 	.globl _AIN1
                                    100 	.globl _UCC1
                                    101 	.globl _TIN2
                                    102 	.globl _SCS
                                    103 	.globl _CAP1_
                                    104 	.globl _T2_
                                    105 	.globl _AIN2
                                    106 	.globl _UCC2
                                    107 	.globl _TIN3
                                    108 	.globl _PWM1
                                    109 	.globl _MOSI
                                    110 	.globl _TIN4
                                    111 	.globl _RXD1
                                    112 	.globl _MISO
                                    113 	.globl _TIN5
                                    114 	.globl _TXD1
                                    115 	.globl _SCK
                                    116 	.globl _IE_SPI0
                                    117 	.globl _IE_TKEY
                                    118 	.globl _IE_USB
                                    119 	.globl _IE_ADC
                                    120 	.globl _IE_UART1
                                    121 	.globl _IE_PWMX
                                    122 	.globl _IE_GPIO
                                    123 	.globl _IE_WDOG
                                    124 	.globl _PX0
                                    125 	.globl _PT0
                                    126 	.globl _PX1
                                    127 	.globl _PT1
                                    128 	.globl _PS
                                    129 	.globl _PT2
                                    130 	.globl _PL_FLAG
                                    131 	.globl _PH_FLAG
                                    132 	.globl _EX0
                                    133 	.globl _ET0
                                    134 	.globl _EX1
                                    135 	.globl _ET1
                                    136 	.globl _ES
                                    137 	.globl _ET2
                                    138 	.globl _E_DIS
                                    139 	.globl _EA
                                    140 	.globl _P
                                    141 	.globl _F1
                                    142 	.globl _OV
                                    143 	.globl _RS0
                                    144 	.globl _RS1
                                    145 	.globl _F0
                                    146 	.globl _AC
                                    147 	.globl _CY
                                    148 	.globl _UEP1_DMA_H
                                    149 	.globl _UEP1_DMA_L
                                    150 	.globl _UEP1_DMA
                                    151 	.globl _UEP0_DMA_H
                                    152 	.globl _UEP0_DMA_L
                                    153 	.globl _UEP0_DMA
                                    154 	.globl _UEP2_3_MOD
                                    155 	.globl _UEP4_1_MOD
                                    156 	.globl _UEP3_DMA_H
                                    157 	.globl _UEP3_DMA_L
                                    158 	.globl _UEP3_DMA
                                    159 	.globl _UEP2_DMA_H
                                    160 	.globl _UEP2_DMA_L
                                    161 	.globl _UEP2_DMA
                                    162 	.globl _USB_DEV_AD
                                    163 	.globl _USB_CTRL
                                    164 	.globl _USB_INT_EN
                                    165 	.globl _UEP4_T_LEN
                                    166 	.globl _UEP4_CTRL
                                    167 	.globl _UEP0_T_LEN
                                    168 	.globl _UEP0_CTRL
                                    169 	.globl _USB_RX_LEN
                                    170 	.globl _USB_MIS_ST
                                    171 	.globl _USB_INT_ST
                                    172 	.globl _USB_INT_FG
                                    173 	.globl _UEP3_T_LEN
                                    174 	.globl _UEP3_CTRL
                                    175 	.globl _UEP2_T_LEN
                                    176 	.globl _UEP2_CTRL
                                    177 	.globl _UEP1_T_LEN
                                    178 	.globl _UEP1_CTRL
                                    179 	.globl _UDEV_CTRL
                                    180 	.globl _USB_C_CTRL
                                    181 	.globl _TKEY_DATH
                                    182 	.globl _TKEY_DATL
                                    183 	.globl _TKEY_DAT
                                    184 	.globl _TKEY_CTRL
                                    185 	.globl _ADC_DATA
                                    186 	.globl _ADC_CFG
                                    187 	.globl _ADC_CTRL
                                    188 	.globl _SBAUD1
                                    189 	.globl _SBUF1
                                    190 	.globl _SCON1
                                    191 	.globl _SPI0_SETUP
                                    192 	.globl _SPI0_CK_SE
                                    193 	.globl _SPI0_CTRL
                                    194 	.globl _SPI0_DATA
                                    195 	.globl _SPI0_STAT
                                    196 	.globl _PWM_CK_SE
                                    197 	.globl _PWM_CTRL
                                    198 	.globl _PWM_DATA1
                                    199 	.globl _PWM_DATA2
                                    200 	.globl _T2CAP1H
                                    201 	.globl _T2CAP1L
                                    202 	.globl _T2CAP1
                                    203 	.globl _TH2
                                    204 	.globl _TL2
                                    205 	.globl _T2COUNT
                                    206 	.globl _RCAP2H
                                    207 	.globl _RCAP2L
                                    208 	.globl _RCAP2
                                    209 	.globl _T2MOD
                                    210 	.globl _T2CON
                                    211 	.globl _SBUF
                                    212 	.globl _SCON
                                    213 	.globl _TH1
                                    214 	.globl _TH0
                                    215 	.globl _TL1
                                    216 	.globl _TL0
                                    217 	.globl _TMOD
                                    218 	.globl _TCON
                                    219 	.globl _XBUS_AUX
                                    220 	.globl _PIN_FUNC
                                    221 	.globl _P3_DIR_PU
                                    222 	.globl _P3_MOD_OC
                                    223 	.globl _P3
                                    224 	.globl _P2
                                    225 	.globl _P1_DIR_PU
                                    226 	.globl _P1_MOD_OC
                                    227 	.globl _P1
                                    228 	.globl _ROM_CTRL
                                    229 	.globl _ROM_DATA_H
                                    230 	.globl _ROM_DATA_L
                                    231 	.globl _ROM_DATA
                                    232 	.globl _ROM_ADDR_H
                                    233 	.globl _ROM_ADDR_L
                                    234 	.globl _ROM_ADDR
                                    235 	.globl _GPIO_IE
                                    236 	.globl _IP_EX
                                    237 	.globl _IE_EX
                                    238 	.globl _IP
                                    239 	.globl _IE
                                    240 	.globl _WDOG_COUNT
                                    241 	.globl _RESET_KEEP
                                    242 	.globl _WAKE_CTRL
                                    243 	.globl _CLOCK_CFG
                                    244 	.globl _PCON
                                    245 	.globl _GLOBAL_CFG
                                    246 	.globl _SAFE_MOD
                                    247 	.globl _DPH
                                    248 	.globl _DPL
                                    249 	.globl _SP
                                    250 	.globl _B
                                    251 	.globl _ACC
                                    252 	.globl _PSW
                                    253 	.globl _datas
                                    254 	.globl _clock_delay
                                    255 	.globl _fast_clock
                                    256 	.globl _retry
                                    257 	.globl _response_value
                                    258 	.globl _response_count
                                    259 	.globl _request_value
                                    260 	.globl _request_count
                                    261 	.globl _DAP_TransferAbort
                                    262 	.globl _match_value
                                    263 	.globl _match_mask
                                    264 	.globl _match_retry
                                    265 	.globl _retry_count
                                    266 	.globl _idle_cycles
                                    267 	.globl _data_phase
                                    268 	.globl _turnaround
                                    269 	.globl _debug_port
                                    270 	.globl _DAP_Thread
                                    271 ;--------------------------------------------------------
                                    272 ; special function registers
                                    273 ;--------------------------------------------------------
                                    274 	.area RSEG    (ABS,DATA)
      000000                        275 	.org 0x0000
                           0000D0   276 _PSW	=	0x00d0
                           0000E0   277 _ACC	=	0x00e0
                           0000F0   278 _B	=	0x00f0
                           000081   279 _SP	=	0x0081
                           000082   280 _DPL	=	0x0082
                           000083   281 _DPH	=	0x0083
                           0000A1   282 _SAFE_MOD	=	0x00a1
                           0000B1   283 _GLOBAL_CFG	=	0x00b1
                           000087   284 _PCON	=	0x0087
                           0000B9   285 _CLOCK_CFG	=	0x00b9
                           0000A9   286 _WAKE_CTRL	=	0x00a9
                           0000FE   287 _RESET_KEEP	=	0x00fe
                           0000FF   288 _WDOG_COUNT	=	0x00ff
                           0000A8   289 _IE	=	0x00a8
                           0000B8   290 _IP	=	0x00b8
                           0000E8   291 _IE_EX	=	0x00e8
                           0000E9   292 _IP_EX	=	0x00e9
                           0000C7   293 _GPIO_IE	=	0x00c7
                           008584   294 _ROM_ADDR	=	0x8584
                           000084   295 _ROM_ADDR_L	=	0x0084
                           000085   296 _ROM_ADDR_H	=	0x0085
                           008F8E   297 _ROM_DATA	=	0x8f8e
                           00008E   298 _ROM_DATA_L	=	0x008e
                           00008F   299 _ROM_DATA_H	=	0x008f
                           000086   300 _ROM_CTRL	=	0x0086
                           000090   301 _P1	=	0x0090
                           000092   302 _P1_MOD_OC	=	0x0092
                           000093   303 _P1_DIR_PU	=	0x0093
                           0000A0   304 _P2	=	0x00a0
                           0000B0   305 _P3	=	0x00b0
                           000096   306 _P3_MOD_OC	=	0x0096
                           000097   307 _P3_DIR_PU	=	0x0097
                           0000C6   308 _PIN_FUNC	=	0x00c6
                           0000A2   309 _XBUS_AUX	=	0x00a2
                           000088   310 _TCON	=	0x0088
                           000089   311 _TMOD	=	0x0089
                           00008A   312 _TL0	=	0x008a
                           00008B   313 _TL1	=	0x008b
                           00008C   314 _TH0	=	0x008c
                           00008D   315 _TH1	=	0x008d
                           000098   316 _SCON	=	0x0098
                           000099   317 _SBUF	=	0x0099
                           0000C8   318 _T2CON	=	0x00c8
                           0000C9   319 _T2MOD	=	0x00c9
                           00CBCA   320 _RCAP2	=	0xcbca
                           0000CA   321 _RCAP2L	=	0x00ca
                           0000CB   322 _RCAP2H	=	0x00cb
                           00CDCC   323 _T2COUNT	=	0xcdcc
                           0000CC   324 _TL2	=	0x00cc
                           0000CD   325 _TH2	=	0x00cd
                           00CFCE   326 _T2CAP1	=	0xcfce
                           0000CE   327 _T2CAP1L	=	0x00ce
                           0000CF   328 _T2CAP1H	=	0x00cf
                           00009B   329 _PWM_DATA2	=	0x009b
                           00009C   330 _PWM_DATA1	=	0x009c
                           00009D   331 _PWM_CTRL	=	0x009d
                           00009E   332 _PWM_CK_SE	=	0x009e
                           0000F8   333 _SPI0_STAT	=	0x00f8
                           0000F9   334 _SPI0_DATA	=	0x00f9
                           0000FA   335 _SPI0_CTRL	=	0x00fa
                           0000FB   336 _SPI0_CK_SE	=	0x00fb
                           0000FC   337 _SPI0_SETUP	=	0x00fc
                           0000C0   338 _SCON1	=	0x00c0
                           0000C1   339 _SBUF1	=	0x00c1
                           0000C2   340 _SBAUD1	=	0x00c2
                           000080   341 _ADC_CTRL	=	0x0080
                           00009A   342 _ADC_CFG	=	0x009a
                           00009F   343 _ADC_DATA	=	0x009f
                           0000C3   344 _TKEY_CTRL	=	0x00c3
                           00C5C4   345 _TKEY_DAT	=	0xc5c4
                           0000C4   346 _TKEY_DATL	=	0x00c4
                           0000C5   347 _TKEY_DATH	=	0x00c5
                           000091   348 _USB_C_CTRL	=	0x0091
                           0000D1   349 _UDEV_CTRL	=	0x00d1
                           0000D2   350 _UEP1_CTRL	=	0x00d2
                           0000D3   351 _UEP1_T_LEN	=	0x00d3
                           0000D4   352 _UEP2_CTRL	=	0x00d4
                           0000D5   353 _UEP2_T_LEN	=	0x00d5
                           0000D6   354 _UEP3_CTRL	=	0x00d6
                           0000D7   355 _UEP3_T_LEN	=	0x00d7
                           0000D8   356 _USB_INT_FG	=	0x00d8
                           0000D9   357 _USB_INT_ST	=	0x00d9
                           0000DA   358 _USB_MIS_ST	=	0x00da
                           0000DB   359 _USB_RX_LEN	=	0x00db
                           0000DC   360 _UEP0_CTRL	=	0x00dc
                           0000DD   361 _UEP0_T_LEN	=	0x00dd
                           0000DE   362 _UEP4_CTRL	=	0x00de
                           0000DF   363 _UEP4_T_LEN	=	0x00df
                           0000E1   364 _USB_INT_EN	=	0x00e1
                           0000E2   365 _USB_CTRL	=	0x00e2
                           0000E3   366 _USB_DEV_AD	=	0x00e3
                           00E5E4   367 _UEP2_DMA	=	0xe5e4
                           0000E4   368 _UEP2_DMA_L	=	0x00e4
                           0000E5   369 _UEP2_DMA_H	=	0x00e5
                           00E7E6   370 _UEP3_DMA	=	0xe7e6
                           0000E6   371 _UEP3_DMA_L	=	0x00e6
                           0000E7   372 _UEP3_DMA_H	=	0x00e7
                           0000EA   373 _UEP4_1_MOD	=	0x00ea
                           0000EB   374 _UEP2_3_MOD	=	0x00eb
                           00EDEC   375 _UEP0_DMA	=	0xedec
                           0000EC   376 _UEP0_DMA_L	=	0x00ec
                           0000ED   377 _UEP0_DMA_H	=	0x00ed
                           00EFEE   378 _UEP1_DMA	=	0xefee
                           0000EE   379 _UEP1_DMA_L	=	0x00ee
                           0000EF   380 _UEP1_DMA_H	=	0x00ef
                                    381 ;--------------------------------------------------------
                                    382 ; special function bits
                                    383 ;--------------------------------------------------------
                                    384 	.area RSEG    (ABS,DATA)
      000000                        385 	.org 0x0000
                           0000D7   386 _CY	=	0x00d7
                           0000D6   387 _AC	=	0x00d6
                           0000D5   388 _F0	=	0x00d5
                           0000D4   389 _RS1	=	0x00d4
                           0000D3   390 _RS0	=	0x00d3
                           0000D2   391 _OV	=	0x00d2
                           0000D1   392 _F1	=	0x00d1
                           0000D0   393 _P	=	0x00d0
                           0000AF   394 _EA	=	0x00af
                           0000AE   395 _E_DIS	=	0x00ae
                           0000AD   396 _ET2	=	0x00ad
                           0000AC   397 _ES	=	0x00ac
                           0000AB   398 _ET1	=	0x00ab
                           0000AA   399 _EX1	=	0x00aa
                           0000A9   400 _ET0	=	0x00a9
                           0000A8   401 _EX0	=	0x00a8
                           0000BF   402 _PH_FLAG	=	0x00bf
                           0000BE   403 _PL_FLAG	=	0x00be
                           0000BD   404 _PT2	=	0x00bd
                           0000BC   405 _PS	=	0x00bc
                           0000BB   406 _PT1	=	0x00bb
                           0000BA   407 _PX1	=	0x00ba
                           0000B9   408 _PT0	=	0x00b9
                           0000B8   409 _PX0	=	0x00b8
                           0000EF   410 _IE_WDOG	=	0x00ef
                           0000EE   411 _IE_GPIO	=	0x00ee
                           0000ED   412 _IE_PWMX	=	0x00ed
                           0000EC   413 _IE_UART1	=	0x00ec
                           0000EB   414 _IE_ADC	=	0x00eb
                           0000EA   415 _IE_USB	=	0x00ea
                           0000E9   416 _IE_TKEY	=	0x00e9
                           0000E8   417 _IE_SPI0	=	0x00e8
                           000097   418 _SCK	=	0x0097
                           000097   419 _TXD1	=	0x0097
                           000097   420 _TIN5	=	0x0097
                           000096   421 _MISO	=	0x0096
                           000096   422 _RXD1	=	0x0096
                           000096   423 _TIN4	=	0x0096
                           000095   424 _MOSI	=	0x0095
                           000095   425 _PWM1	=	0x0095
                           000095   426 _TIN3	=	0x0095
                           000095   427 _UCC2	=	0x0095
                           000095   428 _AIN2	=	0x0095
                           000094   429 _T2_	=	0x0094
                           000094   430 _CAP1_	=	0x0094
                           000094   431 _SCS	=	0x0094
                           000094   432 _TIN2	=	0x0094
                           000094   433 _UCC1	=	0x0094
                           000094   434 _AIN1	=	0x0094
                           000093   435 _TXD_	=	0x0093
                           000092   436 _RXD_	=	0x0092
                           000091   437 _T2EX	=	0x0091
                           000091   438 _CAP2	=	0x0091
                           000091   439 _TIN1	=	0x0091
                           000091   440 _VBUS2	=	0x0091
                           000091   441 _AIN0	=	0x0091
                           000090   442 _T2	=	0x0090
                           000090   443 _CAP1	=	0x0090
                           000090   444 _TIN0	=	0x0090
                           0000B7   445 _UDM	=	0x00b7
                           0000B6   446 _UDP	=	0x00b6
                           0000B5   447 _T1	=	0x00b5
                           0000B4   448 _PWM2	=	0x00b4
                           0000B4   449 _RXD1_	=	0x00b4
                           0000B4   450 _T0	=	0x00b4
                           0000B3   451 _INT1	=	0x00b3
                           0000B2   452 _TXD1_	=	0x00b2
                           0000B2   453 _INT0	=	0x00b2
                           0000B2   454 _VBUS1	=	0x00b2
                           0000B2   455 _AIN3	=	0x00b2
                           0000B1   456 _PWM2_	=	0x00b1
                           0000B1   457 _TXD	=	0x00b1
                           0000B0   458 _PWM1_	=	0x00b0
                           0000B0   459 _RXD	=	0x00b0
                           00008F   460 _TF1	=	0x008f
                           00008E   461 _TR1	=	0x008e
                           00008D   462 _TF0	=	0x008d
                           00008C   463 _TR0	=	0x008c
                           00008B   464 _IE1	=	0x008b
                           00008A   465 _IT1	=	0x008a
                           000089   466 _IE0	=	0x0089
                           000088   467 _IT0	=	0x0088
                           00009F   468 _SM0	=	0x009f
                           00009E   469 _SM1	=	0x009e
                           00009D   470 _SM2	=	0x009d
                           00009C   471 _REN	=	0x009c
                           00009B   472 _TB8	=	0x009b
                           00009A   473 _RB8	=	0x009a
                           000099   474 _TI	=	0x0099
                           000098   475 _RI	=	0x0098
                           0000CF   476 _TF2	=	0x00cf
                           0000CF   477 _CAP1F	=	0x00cf
                           0000CE   478 _EXF2	=	0x00ce
                           0000CD   479 _RCLK	=	0x00cd
                           0000CC   480 _TCLK	=	0x00cc
                           0000CB   481 _EXEN2	=	0x00cb
                           0000CA   482 _TR2	=	0x00ca
                           0000C9   483 _C_T2	=	0x00c9
                           0000C8   484 _CP_RL2	=	0x00c8
                           0000FF   485 _S0_FST_ACT	=	0x00ff
                           0000FE   486 _S0_IF_OV	=	0x00fe
                           0000FD   487 _S0_IF_FIRST	=	0x00fd
                           0000FC   488 _S0_IF_BYTE	=	0x00fc
                           0000FB   489 _S0_FREE	=	0x00fb
                           0000FA   490 _S0_T_FIFO	=	0x00fa
                           0000F8   491 _S0_R_FIFO	=	0x00f8
                           0000C7   492 _U1SM0	=	0x00c7
                           0000C5   493 _U1SMOD	=	0x00c5
                           0000C4   494 _U1REN	=	0x00c4
                           0000C3   495 _U1TB8	=	0x00c3
                           0000C2   496 _U1RB8	=	0x00c2
                           0000C1   497 _U1TI	=	0x00c1
                           0000C0   498 _U1RI	=	0x00c0
                           000087   499 _CMPO	=	0x0087
                           000086   500 _CMP_IF	=	0x0086
                           000085   501 _ADC_IF	=	0x0085
                           000084   502 _ADC_START	=	0x0084
                           000083   503 _CMP_CHAN	=	0x0083
                           000081   504 _ADC_CHAN1	=	0x0081
                           000080   505 _ADC_CHAN0	=	0x0080
                           0000DF   506 _U_IS_NAK	=	0x00df
                           0000DE   507 _U_TOG_OK	=	0x00de
                           0000DD   508 _U_SIE_FREE	=	0x00dd
                           0000DC   509 _UIF_FIFO_OV	=	0x00dc
                           0000DA   510 _UIF_SUSPEND	=	0x00da
                           0000D9   511 _UIF_TRANSFER	=	0x00d9
                           0000D8   512 _UIF_BUS_RST	=	0x00d8
                           000095   513 _P1_5	=	0x0095
                           0000B2   514 _P3_2	=	0x00b2
                           000097   515 _P1_7	=	0x0097
                           000094   516 _P1_4	=	0x0094
                                    517 ;--------------------------------------------------------
                                    518 ; overlayable register banks
                                    519 ;--------------------------------------------------------
                                    520 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        521 	.ds 8
                                    522 ;--------------------------------------------------------
                                    523 ; internal ram data
                                    524 ;--------------------------------------------------------
                                    525 	.area DSEG    (DATA)
      000009                        526 _DAP_Info_PARM_2:
      000009                        527 	.ds 3
      00000C                        528 _DAP_Connect_PARM_2:
      00000C                        529 	.ds 3
      00000F                        530 _DAP_SWJ_Clock_PARM_2:
      00000F                        531 	.ds 3
      000012                        532 _DAP_SWJ_Sequence_PARM_2:
      000012                        533 	.ds 3
      000015                        534 _DAP_SWD_Sequence_PARM_2:
      000015                        535 	.ds 3
      000018                        536 _DAP_SWD_Sequence_response_count_65536_84:
      000018                        537 	.ds 1
      000019                        538 _DAP_SWD_Transfer_PARM_2:
      000019                        539 	.ds 3
      00001C                        540 _DAP_SWD_Transfer_response_head_65536_95:
      00001C                        541 	.ds 3
      00001F                        542 _DAP_SWD_Transfer_post_read_65536_95:
      00001F                        543 	.ds 1
      000020                        544 _DAP_SWD_Transfer_check_write_65536_95:
      000020                        545 	.ds 1
      000021                        546 _DAP_SWD_Transfer_sloc0_1_0:
      000021                        547 	.ds 3
      000024                        548 _DAP_Transfer_PARM_2:
      000024                        549 	.ds 3
      000027                        550 _DAP_SWD_TransferBlock_PARM_2:
      000027                        551 	.ds 3
      00002A                        552 _DAP_SWD_TransferBlock_response_head_65536_145:
      00002A                        553 	.ds 3
      00002D                        554 _DAP_SWD_TransferBlock_sloc0_1_0:
      00002D                        555 	.ds 2
      00002F                        556 _DAP_SWD_TransferBlock_sloc1_1_0:
      00002F                        557 	.ds 3
      000032                        558 _DAP_TransferBlock_PARM_2:
      000032                        559 	.ds 3
      000035                        560 _DAP_TransferBlock_sloc0_1_0:
      000035                        561 	.ds 3
      000038                        562 _DAP_SWD_WriteAbort_PARM_2:
      000038                        563 	.ds 3
      00003B                        564 _DAP_WriteAbort_PARM_2:
      00003B                        565 	.ds 3
                                    566 ;--------------------------------------------------------
                                    567 ; overlayable items in internal ram 
                                    568 ;--------------------------------------------------------
                                    569 	.area	OSEG    (OVR,DATA)
      000048                        570 _DAP_Delay_PARM_2:
      000048                        571 	.ds 3
                                    572 	.area	OSEG    (OVR,DATA)
      000048                        573 _DAP_HostStatus_PARM_2:
      000048                        574 	.ds 3
                                    575 	.area	OSEG    (OVR,DATA)
                                    576 	.area	OSEG    (OVR,DATA)
      000048                        577 _DAP_SWJ_Pins_PARM_2:
      000048                        578 	.ds 3
      00004B                        579 _DAP_SWJ_Pins_req_65536_57:
      00004B                        580 	.ds 3
      00004E                        581 _DAP_SWJ_Pins_select_65536_58:
      00004E                        582 	.ds 1
      00004F                        583 _DAP_SWJ_Pins_sloc0_1_0:
      00004F                        584 	.ds 1
      000050                        585 _DAP_SWJ_Pins_sloc1_1_0:
      000050                        586 	.ds 2
      000052                        587 _DAP_SWJ_Pins_sloc2_1_0:
      000052                        588 	.ds 1
      000053                        589 _DAP_SWJ_Pins_sloc3_1_0:
      000053                        590 	.ds 1
      000054                        591 _DAP_SWJ_Pins_sloc4_1_0:
      000054                        592 	.ds 1
                                    593 	.area	OSEG    (OVR,DATA)
      000048                        594 _DAP_SWD_Configure_PARM_2:
      000048                        595 	.ds 3
                                    596 	.area	OSEG    (OVR,DATA)
      000048                        597 _DAP_TransferConfigure_PARM_2:
      000048                        598 	.ds 3
      00004B                        599 _DAP_TransferConfigure_req_65536_92:
      00004B                        600 	.ds 3
                                    601 ;--------------------------------------------------------
                                    602 ; indirectly addressable internal ram data
                                    603 ;--------------------------------------------------------
                                    604 	.area ISEG    (DATA)
      000055                        605 _debug_port::
      000055                        606 	.ds 1
      000056                        607 _turnaround::
      000056                        608 	.ds 1
      000057                        609 _data_phase::
      000057                        610 	.ds 1
      000058                        611 _idle_cycles::
      000058                        612 	.ds 1
      000059                        613 _retry_count::
      000059                        614 	.ds 2
      00005B                        615 _match_retry::
      00005B                        616 	.ds 2
      00005D                        617 _match_mask::
      00005D                        618 	.ds 4
      000061                        619 _match_value::
      000061                        620 	.ds 4
      000065                        621 _DAP_TransferAbort::
      000065                        622 	.ds 1
      000066                        623 _request_count::
      000066                        624 	.ds 1
      000067                        625 _request_value::
      000067                        626 	.ds 1
      000068                        627 _response_count::
      000068                        628 	.ds 1
      000069                        629 _response_value::
      000069                        630 	.ds 1
      00006A                        631 _retry::
      00006A                        632 	.ds 2
                                    633 ;--------------------------------------------------------
                                    634 ; absolute internal ram data
                                    635 ;--------------------------------------------------------
                                    636 	.area IABS    (ABS,DATA)
                                    637 	.area IABS    (ABS,DATA)
                                    638 ;--------------------------------------------------------
                                    639 ; bit data
                                    640 ;--------------------------------------------------------
                                    641 	.area BSEG    (BIT)
                                    642 ;--------------------------------------------------------
                                    643 ; paged external ram data
                                    644 ;--------------------------------------------------------
                                    645 	.area PSEG    (PAG,XDATA)
                                    646 ;--------------------------------------------------------
                                    647 ; external ram data
                                    648 ;--------------------------------------------------------
                                    649 	.area XSEG    (XDATA)
      000000                        650 _fast_clock::
      000000                        651 	.ds 4
      000004                        652 _clock_delay::
      000004                        653 	.ds 1
      000005                        654 _datas::
      000005                        655 	.ds 4
                                    656 ;--------------------------------------------------------
                                    657 ; absolute external ram data
                                    658 ;--------------------------------------------------------
                                    659 	.area XABS    (ABS,XDATA)
                                    660 ;--------------------------------------------------------
                                    661 ; external initialized ram data
                                    662 ;--------------------------------------------------------
                                    663 	.area XISEG   (XDATA)
                                    664 	.area HOME    (CODE)
                                    665 	.area GSINIT0 (CODE)
                                    666 	.area GSINIT1 (CODE)
                                    667 	.area GSINIT2 (CODE)
                                    668 	.area GSINIT3 (CODE)
                                    669 	.area GSINIT4 (CODE)
                                    670 	.area GSINIT5 (CODE)
                                    671 	.area GSINIT  (CODE)
                                    672 	.area GSFINAL (CODE)
                                    673 	.area CSEG    (CODE)
                                    674 ;--------------------------------------------------------
                                    675 ; global & static initialisations
                                    676 ;--------------------------------------------------------
                                    677 	.area HOME    (CODE)
                                    678 	.area GSINIT  (CODE)
                                    679 	.area GSFINAL (CODE)
                                    680 	.area GSINIT  (CODE)
                                    681 ;	DAP.c:447: __idata uint8_t DAP_TransferAbort = 0U;
      00005F 78 65            [12]  682 	mov	r0,#_DAP_TransferAbort
      000061 76 00            [12]  683 	mov	@r0,#0x00
                                    684 ;--------------------------------------------------------
                                    685 ; Home
                                    686 ;--------------------------------------------------------
                                    687 	.area HOME    (CODE)
                                    688 	.area HOME    (CODE)
                                    689 ;--------------------------------------------------------
                                    690 ; code
                                    691 ;--------------------------------------------------------
                                    692 	.area CSEG    (CODE)
                                    693 ;------------------------------------------------------------
                                    694 ;Allocation info for local variables in function 'DAP_Info'
                                    695 ;------------------------------------------------------------
                                    696 ;info                      Allocated with name '_DAP_Info_PARM_2'
                                    697 ;id                        Allocated to registers r7 
                                    698 ;length                    Allocated to registers r6 
                                    699 ;------------------------------------------------------------
                                    700 ;	DAP.c:34: static uint8_t DAP_Info(uint8_t id, uint8_t *info)
                                    701 ;	-----------------------------------------
                                    702 ;	 function DAP_Info
                                    703 ;	-----------------------------------------
      00012D                        704 _DAP_Info:
                           000007   705 	ar7 = 0x07
                           000006   706 	ar6 = 0x06
                           000005   707 	ar5 = 0x05
                           000004   708 	ar4 = 0x04
                           000003   709 	ar3 = 0x03
                           000002   710 	ar2 = 0x02
                           000001   711 	ar1 = 0x01
                           000000   712 	ar0 = 0x00
      00012D AF 82            [24]  713 	mov	r7,dpl
                                    714 ;	DAP.c:36: uint8_t length = 0U;
      00012F 7E 00            [12]  715 	mov	r6,#0x00
                                    716 ;	DAP.c:38: switch (id)
      000131 BF 01 02         [24]  717 	cjne	r7,#0x01,00160$
      000134 80 39            [24]  718 	sjmp	00101$
      000136                        719 00160$:
      000136 BF 02 02         [24]  720 	cjne	r7,#0x02,00161$
      000139 80 39            [24]  721 	sjmp	00102$
      00013B                        722 00161$:
      00013B BF 03 02         [24]  723 	cjne	r7,#0x03,00162$
      00013E 80 38            [24]  724 	sjmp	00103$
      000140                        725 00162$:
      000140 BF 04 02         [24]  726 	cjne	r7,#0x04,00163$
      000143 80 37            [24]  727 	sjmp	00104$
      000145                        728 00163$:
      000145 BF 05 03         [24]  729 	cjne	r7,#0x05,00164$
      000148 02 01 ED         [24]  730 	ljmp	00113$
      00014B                        731 00164$:
      00014B BF 06 03         [24]  732 	cjne	r7,#0x06,00165$
      00014E 02 01 ED         [24]  733 	ljmp	00113$
      000151                        734 00165$:
      000151 BF F0 02         [24]  735 	cjne	r7,#0xf0,00166$
      000154 80 4B            [24]  736 	sjmp	00107$
      000156                        737 00166$:
      000156 BF F1 03         [24]  738 	cjne	r7,#0xf1,00167$
      000159 02 01 ED         [24]  739 	ljmp	00113$
      00015C                        740 00167$:
      00015C BF FD 03         [24]  741 	cjne	r7,#0xfd,00168$
      00015F 02 01 ED         [24]  742 	ljmp	00113$
      000162                        743 00168$:
      000162 BF FE 02         [24]  744 	cjne	r7,#0xfe,00169$
      000165 80 73            [24]  745 	sjmp	00111$
      000167                        746 00169$:
      000167 BF FF 02         [24]  747 	cjne	r7,#0xff,00170$
      00016A 80 4A            [24]  748 	sjmp	00110$
      00016C                        749 00170$:
      00016C 02 01 ED         [24]  750 	ljmp	00113$
                                    751 ;	DAP.c:40: case DAP_ID_VENDOR:
      00016F                        752 00101$:
                                    753 ;	DAP.c:41: length = 0;
      00016F 7E 00            [12]  754 	mov	r6,#0x00
                                    755 ;	DAP.c:42: break;
      000171 02 01 ED         [24]  756 	ljmp	00113$
                                    757 ;	DAP.c:43: case DAP_ID_PRODUCT:
      000174                        758 00102$:
                                    759 ;	DAP.c:44: length = 0;
      000174 7E 00            [12]  760 	mov	r6,#0x00
                                    761 ;	DAP.c:45: break;
                                    762 ;	DAP.c:46: case DAP_ID_SER_NUM:
      000176 80 75            [24]  763 	sjmp	00113$
      000178                        764 00103$:
                                    765 ;	DAP.c:47: length = 0;
      000178 7E 00            [12]  766 	mov	r6,#0x00
                                    767 ;	DAP.c:48: break;
                                    768 ;	DAP.c:49: case DAP_ID_FW_VER:
      00017A 80 71            [24]  769 	sjmp	00113$
      00017C                        770 00104$:
                                    771 ;	DAP.c:50: length = (uint8_t)sizeof(DAP_FW_VER);
      00017C 7E 05            [12]  772 	mov	r6,#0x05
                                    773 ;	DAP.c:51: memcpy(info, DAP_FW_VER, length);
      00017E AC 09            [24]  774 	mov	r4,_DAP_Info_PARM_2
      000180 AD 0A            [24]  775 	mov	r5,(_DAP_Info_PARM_2 + 1)
      000182 AF 0B            [24]  776 	mov	r7,(_DAP_Info_PARM_2 + 2)
      000184 75 48 FC         [24]  777 	mov	_memcpy_PARM_2,#__str_0
      000187 75 49 25         [24]  778 	mov	(_memcpy_PARM_2 + 1),#(__str_0 >> 8)
      00018A 75 4A 00         [24]  779 	mov	(_memcpy_PARM_2 + 2),#(__str_0 >> 16)
                                    780 ;	1-genFromRTrack replaced	mov	_memcpy_PARM_3,#0x05
      00018D 8E 4B            [24]  781 	mov	_memcpy_PARM_3,r6
      00018F 75 4C 00         [24]  782 	mov	(_memcpy_PARM_3 + 1),#0x00
      000192 8C 82            [24]  783 	mov	dpl,r4
      000194 8D 83            [24]  784 	mov	dph,r5
      000196 8F F0            [24]  785 	mov	b,r7
      000198 C0 06            [24]  786 	push	ar6
      00019A 12 25 6C         [24]  787 	lcall	_memcpy
      00019D D0 06            [24]  788 	pop	ar6
                                    789 ;	DAP.c:52: break;
                                    790 ;	DAP.c:59: case DAP_ID_CAPABILITIES:
      00019F 80 4C            [24]  791 	sjmp	00113$
      0001A1                        792 00107$:
                                    793 ;	DAP.c:60: info[0] = DAP_PORT_SWD | (1 << 4);
      0001A1 AC 09            [24]  794 	mov	r4,_DAP_Info_PARM_2
      0001A3 AD 0A            [24]  795 	mov	r5,(_DAP_Info_PARM_2 + 1)
      0001A5 AF 0B            [24]  796 	mov	r7,(_DAP_Info_PARM_2 + 2)
      0001A7 8C 82            [24]  797 	mov	dpl,r4
      0001A9 8D 83            [24]  798 	mov	dph,r5
      0001AB 8F F0            [24]  799 	mov	b,r7
      0001AD 74 11            [12]  800 	mov	a,#0x11
      0001AF 12 25 C1         [24]  801 	lcall	__gptrput
                                    802 ;	DAP.c:61: length = 1U;
      0001B2 7E 01            [12]  803 	mov	r6,#0x01
                                    804 ;	DAP.c:62: break;
                                    805 ;	DAP.c:69: case DAP_ID_PACKET_SIZE:
      0001B4 80 37            [24]  806 	sjmp	00113$
      0001B6                        807 00110$:
                                    808 ;	DAP.c:70: info[0] = (uint8_t)(DAP_PACKET_SIZE >> 0);
      0001B6 AC 09            [24]  809 	mov	r4,_DAP_Info_PARM_2
      0001B8 AD 0A            [24]  810 	mov	r5,(_DAP_Info_PARM_2 + 1)
      0001BA AF 0B            [24]  811 	mov	r7,(_DAP_Info_PARM_2 + 2)
      0001BC 8C 82            [24]  812 	mov	dpl,r4
      0001BE 8D 83            [24]  813 	mov	dph,r5
      0001C0 8F F0            [24]  814 	mov	b,r7
      0001C2 74 40            [12]  815 	mov	a,#0x40
      0001C4 12 25 C1         [24]  816 	lcall	__gptrput
                                    817 ;	DAP.c:71: info[1] = (uint8_t)(DAP_PACKET_SIZE >> 8);
      0001C7 0C               [12]  818 	inc	r4
      0001C8 BC 00 01         [24]  819 	cjne	r4,#0x00,00171$
      0001CB 0D               [12]  820 	inc	r5
      0001CC                        821 00171$:
      0001CC 8C 82            [24]  822 	mov	dpl,r4
      0001CE 8D 83            [24]  823 	mov	dph,r5
      0001D0 8F F0            [24]  824 	mov	b,r7
      0001D2 E4               [12]  825 	clr	a
      0001D3 12 25 C1         [24]  826 	lcall	__gptrput
                                    827 ;	DAP.c:72: length = 2U;
      0001D6 7E 02            [12]  828 	mov	r6,#0x02
                                    829 ;	DAP.c:73: break;
                                    830 ;	DAP.c:74: case DAP_ID_PACKET_COUNT:
      0001D8 80 13            [24]  831 	sjmp	00113$
      0001DA                        832 00111$:
                                    833 ;	DAP.c:75: info[0] = DAP_PACKET_COUNT;
      0001DA AC 09            [24]  834 	mov	r4,_DAP_Info_PARM_2
      0001DC AD 0A            [24]  835 	mov	r5,(_DAP_Info_PARM_2 + 1)
      0001DE AF 0B            [24]  836 	mov	r7,(_DAP_Info_PARM_2 + 2)
      0001E0 8C 82            [24]  837 	mov	dpl,r4
      0001E2 8D 83            [24]  838 	mov	dph,r5
      0001E4 8F F0            [24]  839 	mov	b,r7
      0001E6 74 01            [12]  840 	mov	a,#0x01
      0001E8 12 25 C1         [24]  841 	lcall	__gptrput
                                    842 ;	DAP.c:76: length = 1U;
      0001EB 7E 01            [12]  843 	mov	r6,#0x01
                                    844 ;	DAP.c:80: }
      0001ED                        845 00113$:
                                    846 ;	DAP.c:82: return (length);
      0001ED 8E 82            [24]  847 	mov	dpl,r6
                                    848 ;	DAP.c:83: }
      0001EF 22               [24]  849 	ret
                                    850 ;------------------------------------------------------------
                                    851 ;Allocation info for local variables in function 'DAP_Delay'
                                    852 ;------------------------------------------------------------
                                    853 ;res                       Allocated with name '_DAP_Delay_PARM_2'
                                    854 ;req                       Allocated to registers r5 r6 r7 
                                    855 ;delay                     Allocated to registers r6 r7 
                                    856 ;------------------------------------------------------------
                                    857 ;	DAP.c:90: static uint8_t DAP_Delay(const uint8_t *req, uint8_t *res)
                                    858 ;	-----------------------------------------
                                    859 ;	 function DAP_Delay
                                    860 ;	-----------------------------------------
      0001F0                        861 _DAP_Delay:
                                    862 ;	DAP.c:94: delay = (uint16_t)(*(req + 0)) |
      0001F0 AD 82            [24]  863 	mov	r5,dpl
      0001F2 AE 83            [24]  864 	mov	r6,dph
      0001F4 AF F0            [24]  865 	mov	r7,b
      0001F6 12 25 DC         [24]  866 	lcall	__gptrget
      0001F9 FC               [12]  867 	mov	r4,a
      0001FA 7B 00            [12]  868 	mov	r3,#0x00
                                    869 ;	DAP.c:95: (uint16_t)(*(req + 1) << 8);
      0001FC 0D               [12]  870 	inc	r5
      0001FD BD 00 01         [24]  871 	cjne	r5,#0x00,00114$
      000200 0E               [12]  872 	inc	r6
      000201                        873 00114$:
      000201 8D 82            [24]  874 	mov	dpl,r5
      000203 8E 83            [24]  875 	mov	dph,r6
      000205 8F F0            [24]  876 	mov	b,r7
      000207 12 25 DC         [24]  877 	lcall	__gptrget
      00020A FF               [12]  878 	mov	r7,a
      00020B E4               [12]  879 	clr	a
      00020C FD               [12]  880 	mov	r5,a
      00020D 4C               [12]  881 	orl	a,r4
      00020E FE               [12]  882 	mov	r6,a
      00020F EF               [12]  883 	mov	a,r7
      000210 4B               [12]  884 	orl	a,r3
      000211 FF               [12]  885 	mov	r7,a
                                    886 ;	DAP.c:97: while (--delay)
      000212                        887 00101$:
      000212 EE               [12]  888 	mov	a,r6
      000213 24 FF            [12]  889 	add	a,#0xff
      000215 FC               [12]  890 	mov	r4,a
      000216 EF               [12]  891 	mov	a,r7
      000217 34 FF            [12]  892 	addc	a,#0xff
      000219 FD               [12]  893 	mov	r5,a
      00021A 8C 06            [24]  894 	mov	ar6,r4
      00021C 8D 07            [24]  895 	mov	ar7,r5
      00021E EC               [12]  896 	mov	a,r4
      00021F 4D               [12]  897 	orl	a,r5
      000220 70 F0            [24]  898 	jnz	00101$
                                    899 ;	DAP.c:101: *res = DAP_OK;
      000222 AD 48            [24]  900 	mov	r5,_DAP_Delay_PARM_2
      000224 AE 49            [24]  901 	mov	r6,(_DAP_Delay_PARM_2 + 1)
      000226 AF 4A            [24]  902 	mov	r7,(_DAP_Delay_PARM_2 + 2)
      000228 8D 82            [24]  903 	mov	dpl,r5
      00022A 8E 83            [24]  904 	mov	dph,r6
      00022C 8F F0            [24]  905 	mov	b,r7
      00022E E4               [12]  906 	clr	a
      00022F 12 25 C1         [24]  907 	lcall	__gptrput
                                    908 ;	DAP.c:102: return 1;
      000232 75 82 01         [24]  909 	mov	dpl,#0x01
                                    910 ;	DAP.c:103: }
      000235 22               [24]  911 	ret
                                    912 ;------------------------------------------------------------
                                    913 ;Allocation info for local variables in function 'DAP_HostStatus'
                                    914 ;------------------------------------------------------------
                                    915 ;res                       Allocated with name '_DAP_HostStatus_PARM_2'
                                    916 ;req                       Allocated to registers r5 r6 r7 
                                    917 ;------------------------------------------------------------
                                    918 ;	DAP.c:110: static uint8_t DAP_HostStatus(const uint8_t *req, uint8_t *res)
                                    919 ;	-----------------------------------------
                                    920 ;	 function DAP_HostStatus
                                    921 ;	-----------------------------------------
      000236                        922 _DAP_HostStatus:
                                    923 ;	DAP.c:113: switch (*req)
      000236 AD 82            [24]  924 	mov	r5,dpl
      000238 AE 83            [24]  925 	mov	r6,dph
      00023A AF F0            [24]  926 	mov	r7,b
      00023C 12 25 DC         [24]  927 	lcall	__gptrget
      00023F FC               [12]  928 	mov	r4,a
      000240 60 05            [24]  929 	jz	00101$
                                    930 ;	DAP.c:115: case DAP_DEBUGGER_CONNECTED:
      000242 BC 01 36         [24]  931 	cjne	r4,#0x01,00103$
      000245 80 1C            [24]  932 	sjmp	00102$
      000247                        933 00101$:
                                    934 ;	DAP.c:116: LED = ((*(req + 1) & 1U));
      000247 74 01            [12]  935 	mov	a,#0x01
      000249 2D               [12]  936 	add	a,r5
      00024A FA               [12]  937 	mov	r2,a
      00024B E4               [12]  938 	clr	a
      00024C 3E               [12]  939 	addc	a,r6
      00024D FB               [12]  940 	mov	r3,a
      00024E 8F 04            [24]  941 	mov	ar4,r7
      000250 8A 82            [24]  942 	mov	dpl,r2
      000252 8B 83            [24]  943 	mov	dph,r3
      000254 8C F0            [24]  944 	mov	b,r4
      000256 12 25 DC         [24]  945 	lcall	__gptrget
      000259 FA               [12]  946 	mov	r2,a
      00025A 54 01            [12]  947 	anl	a,#0x01
      00025C FC               [12]  948 	mov	r4,a
      00025D 24 FF            [12]  949 	add	a,#0xff
      00025F 92 94            [24]  950 	mov	_P1_4,c
                                    951 ;	DAP.c:117: break;
                                    952 ;	DAP.c:118: case DAP_TARGET_RUNNING:
      000261 80 2D            [24]  953 	sjmp	00104$
      000263                        954 00102$:
                                    955 ;	DAP.c:119: LED = ((*(req + 1) & 1U));
      000263 0D               [12]  956 	inc	r5
      000264 BD 00 01         [24]  957 	cjne	r5,#0x00,00117$
      000267 0E               [12]  958 	inc	r6
      000268                        959 00117$:
      000268 8D 82            [24]  960 	mov	dpl,r5
      00026A 8E 83            [24]  961 	mov	dph,r6
      00026C 8F F0            [24]  962 	mov	b,r7
      00026E 12 25 DC         [24]  963 	lcall	__gptrget
      000271 FD               [12]  964 	mov	r5,a
      000272 54 01            [12]  965 	anl	a,#0x01
      000274 FF               [12]  966 	mov	r7,a
      000275 24 FF            [12]  967 	add	a,#0xff
      000277 92 94            [24]  968 	mov	_P1_4,c
                                    969 ;	DAP.c:120: break;
                                    970 ;	DAP.c:121: default:
      000279 80 15            [24]  971 	sjmp	00104$
      00027B                        972 00103$:
                                    973 ;	DAP.c:122: *res = DAP_ERROR;
      00027B AD 48            [24]  974 	mov	r5,_DAP_HostStatus_PARM_2
      00027D AE 49            [24]  975 	mov	r6,(_DAP_HostStatus_PARM_2 + 1)
      00027F AF 4A            [24]  976 	mov	r7,(_DAP_HostStatus_PARM_2 + 2)
      000281 8D 82            [24]  977 	mov	dpl,r5
      000283 8E 83            [24]  978 	mov	dph,r6
      000285 8F F0            [24]  979 	mov	b,r7
      000287 74 FF            [12]  980 	mov	a,#0xff
      000289 12 25 C1         [24]  981 	lcall	__gptrput
                                    982 ;	DAP.c:123: return 1;
      00028C 75 82 01         [24]  983 	mov	dpl,#0x01
                                    984 ;	DAP.c:124: }
      00028F 22               [24]  985 	ret
      000290                        986 00104$:
                                    987 ;	DAP.c:126: *res = DAP_OK;
      000290 AD 48            [24]  988 	mov	r5,_DAP_HostStatus_PARM_2
      000292 AE 49            [24]  989 	mov	r6,(_DAP_HostStatus_PARM_2 + 1)
      000294 AF 4A            [24]  990 	mov	r7,(_DAP_HostStatus_PARM_2 + 2)
      000296 8D 82            [24]  991 	mov	dpl,r5
      000298 8E 83            [24]  992 	mov	dph,r6
      00029A 8F F0            [24]  993 	mov	b,r7
      00029C E4               [12]  994 	clr	a
      00029D 12 25 C1         [24]  995 	lcall	__gptrput
                                    996 ;	DAP.c:127: return 1;
      0002A0 75 82 01         [24]  997 	mov	dpl,#0x01
                                    998 ;	DAP.c:128: }
      0002A3 22               [24]  999 	ret
                                   1000 ;------------------------------------------------------------
                                   1001 ;Allocation info for local variables in function 'DAP_Connect'
                                   1002 ;------------------------------------------------------------
                                   1003 ;res                       Allocated with name '_DAP_Connect_PARM_2'
                                   1004 ;req                       Allocated to registers r5 r6 r7 
                                   1005 ;port                      Allocated to registers r6 
                                   1006 ;------------------------------------------------------------
                                   1007 ;	DAP.c:136: static uint8_t DAP_Connect(const uint8_t *req, uint8_t *res)
                                   1008 ;	-----------------------------------------
                                   1009 ;	 function DAP_Connect
                                   1010 ;	-----------------------------------------
      0002A4                       1011 _DAP_Connect:
                                   1012 ;	DAP.c:140: if (*req == DAP_PORT_AUTODETECT)
      0002A4 AD 82            [24] 1013 	mov	r5,dpl
      0002A6 12 25 DC         [24] 1014 	lcall	__gptrget
      0002A9 FF               [12] 1015 	mov	r7,a
      0002AA 70 04            [24] 1016 	jnz	00102$
                                   1017 ;	DAP.c:142: port = DAP_DEFAULT_PORT;
      0002AC 7E 01            [12] 1018 	mov	r6,#0x01
      0002AE 80 02            [24] 1019 	sjmp	00103$
      0002B0                       1020 00102$:
                                   1021 ;	DAP.c:146: port = *req;
      0002B0 8F 06            [24] 1022 	mov	ar6,r7
      0002B2                       1023 00103$:
                                   1024 ;	DAP.c:149: switch (port)
      0002B2 BE 01 0D         [24] 1025 	cjne	r6,#0x01,00105$
                                   1026 ;	DAP.c:152: debug_port = DAP_PORT_SWD;
      0002B5 78 55            [12] 1027 	mov	r0,#_debug_port
      0002B7 76 01            [12] 1028 	mov	@r0,#0x01
                                   1029 ;	DAP.c:153: PORT_SWD_SETUP();
      0002B9 C0 06            [24] 1030 	push	ar6
      0002BB 12 14 A2         [24] 1031 	lcall	_PORT_SWD_SETUP
      0002BE D0 06            [24] 1032 	pop	ar6
                                   1033 ;	DAP.c:154: break;
                                   1034 ;	DAP.c:155: default:
      0002C0 80 02            [24] 1035 	sjmp	00106$
      0002C2                       1036 00105$:
                                   1037 ;	DAP.c:156: port = DAP_PORT_DISABLED;
      0002C2 7E 00            [12] 1038 	mov	r6,#0x00
                                   1039 ;	DAP.c:158: }
      0002C4                       1040 00106$:
                                   1041 ;	DAP.c:160: *res = (uint8_t)port;
      0002C4 AC 0C            [24] 1042 	mov	r4,_DAP_Connect_PARM_2
      0002C6 AD 0D            [24] 1043 	mov	r5,(_DAP_Connect_PARM_2 + 1)
      0002C8 AF 0E            [24] 1044 	mov	r7,(_DAP_Connect_PARM_2 + 2)
      0002CA 8C 82            [24] 1045 	mov	dpl,r4
      0002CC 8D 83            [24] 1046 	mov	dph,r5
      0002CE 8F F0            [24] 1047 	mov	b,r7
      0002D0 EE               [12] 1048 	mov	a,r6
      0002D1 12 25 C1         [24] 1049 	lcall	__gptrput
                                   1050 ;	DAP.c:161: return 1;
      0002D4 75 82 01         [24] 1051 	mov	dpl,#0x01
                                   1052 ;	DAP.c:162: }
      0002D7 22               [24] 1053 	ret
                                   1054 ;------------------------------------------------------------
                                   1055 ;Allocation info for local variables in function 'DAP_Disconnect'
                                   1056 ;------------------------------------------------------------
                                   1057 ;res                       Allocated to registers r5 r6 r7 
                                   1058 ;------------------------------------------------------------
                                   1059 ;	DAP.c:168: static uint8_t DAP_Disconnect(uint8_t *res)
                                   1060 ;	-----------------------------------------
                                   1061 ;	 function DAP_Disconnect
                                   1062 ;	-----------------------------------------
      0002D8                       1063 _DAP_Disconnect:
      0002D8 AD 82            [24] 1064 	mov	r5,dpl
      0002DA AE 83            [24] 1065 	mov	r6,dph
      0002DC AF F0            [24] 1066 	mov	r7,b
                                   1067 ;	DAP.c:171: debug_port = DAP_PORT_DISABLED;
      0002DE 78 55            [12] 1068 	mov	r0,#_debug_port
      0002E0 76 00            [12] 1069 	mov	@r0,#0x00
                                   1070 ;	DAP.c:172: PORT_OFF();
      0002E2 C0 07            [24] 1071 	push	ar7
      0002E4 C0 06            [24] 1072 	push	ar6
      0002E6 C0 05            [24] 1073 	push	ar5
      0002E8 12 14 A2         [24] 1074 	lcall	_PORT_SWD_SETUP
      0002EB D0 05            [24] 1075 	pop	ar5
      0002ED D0 06            [24] 1076 	pop	ar6
      0002EF D0 07            [24] 1077 	pop	ar7
                                   1078 ;	DAP.c:174: *res = DAP_OK;
      0002F1 8D 82            [24] 1079 	mov	dpl,r5
      0002F3 8E 83            [24] 1080 	mov	dph,r6
      0002F5 8F F0            [24] 1081 	mov	b,r7
      0002F7 E4               [12] 1082 	clr	a
      0002F8 12 25 C1         [24] 1083 	lcall	__gptrput
                                   1084 ;	DAP.c:175: return (1U);
      0002FB 75 82 01         [24] 1085 	mov	dpl,#0x01
                                   1086 ;	DAP.c:176: }
      0002FE 22               [24] 1087 	ret
                                   1088 ;------------------------------------------------------------
                                   1089 ;Allocation info for local variables in function 'DAP_ResetTarget'
                                   1090 ;------------------------------------------------------------
                                   1091 ;res                       Allocated to registers r5 r6 r7 
                                   1092 ;------------------------------------------------------------
                                   1093 ;	DAP.c:181: static uint8_t DAP_ResetTarget(uint8_t *res)
                                   1094 ;	-----------------------------------------
                                   1095 ;	 function DAP_ResetTarget
                                   1096 ;	-----------------------------------------
      0002FF                       1097 _DAP_ResetTarget:
      0002FF AD 82            [24] 1098 	mov	r5,dpl
      000301 AE 83            [24] 1099 	mov	r6,dph
      000303 AF F0            [24] 1100 	mov	r7,b
                                   1101 ;	DAP.c:183: *(res + 1) = 0; //RESET_TARGET();
      000305 74 01            [12] 1102 	mov	a,#0x01
      000307 2D               [12] 1103 	add	a,r5
      000308 FA               [12] 1104 	mov	r2,a
      000309 E4               [12] 1105 	clr	a
      00030A 3E               [12] 1106 	addc	a,r6
      00030B FB               [12] 1107 	mov	r3,a
      00030C 8F 04            [24] 1108 	mov	ar4,r7
      00030E 8A 82            [24] 1109 	mov	dpl,r2
      000310 8B 83            [24] 1110 	mov	dph,r3
      000312 8C F0            [24] 1111 	mov	b,r4
      000314 E4               [12] 1112 	clr	a
      000315 12 25 C1         [24] 1113 	lcall	__gptrput
                                   1114 ;	DAP.c:184: *(res + 0) = DAP_OK;
      000318 8D 82            [24] 1115 	mov	dpl,r5
      00031A 8E 83            [24] 1116 	mov	dph,r6
      00031C 8F F0            [24] 1117 	mov	b,r7
      00031E 12 25 C1         [24] 1118 	lcall	__gptrput
                                   1119 ;	DAP.c:185: return 2;
      000321 75 82 02         [24] 1120 	mov	dpl,#0x02
                                   1121 ;	DAP.c:186: }
      000324 22               [24] 1122 	ret
                                   1123 ;------------------------------------------------------------
                                   1124 ;Allocation info for local variables in function 'DAP_SWJ_Pins'
                                   1125 ;------------------------------------------------------------
                                   1126 ;res                       Allocated with name '_DAP_SWJ_Pins_PARM_2'
                                   1127 ;req                       Allocated with name '_DAP_SWJ_Pins_req_65536_57'
                                   1128 ;value                     Allocated to registers r7 
                                   1129 ;select                    Allocated with name '_DAP_SWJ_Pins_select_65536_58'
                                   1130 ;wait                      Allocated to registers r6 r7 
                                   1131 ;sloc0                     Allocated with name '_DAP_SWJ_Pins_sloc0_1_0'
                                   1132 ;sloc1                     Allocated with name '_DAP_SWJ_Pins_sloc1_1_0'
                                   1133 ;sloc2                     Allocated with name '_DAP_SWJ_Pins_sloc2_1_0'
                                   1134 ;sloc3                     Allocated with name '_DAP_SWJ_Pins_sloc3_1_0'
                                   1135 ;sloc4                     Allocated with name '_DAP_SWJ_Pins_sloc4_1_0'
                                   1136 ;------------------------------------------------------------
                                   1137 ;	DAP.c:193: static uint8_t DAP_SWJ_Pins(const uint8_t *req, uint8_t *res)
                                   1138 ;	-----------------------------------------
                                   1139 ;	 function DAP_SWJ_Pins
                                   1140 ;	-----------------------------------------
      000325                       1141 _DAP_SWJ_Pins:
                                   1142 ;	DAP.c:199: value = (uint8_t) * (req + 0);
      000325 85 82 4B         [24] 1143 	mov	_DAP_SWJ_Pins_req_65536_57,dpl
      000328 85 83 4C         [24] 1144 	mov	(_DAP_SWJ_Pins_req_65536_57 + 1),dph
      00032B 85 F0 4D         [24] 1145 	mov	(_DAP_SWJ_Pins_req_65536_57 + 2),b
      00032E 12 25 DC         [24] 1146 	lcall	__gptrget
      000331 FC               [12] 1147 	mov	r4,a
                                   1148 ;	DAP.c:200: select = (uint8_t) * (req + 1);
      000332 74 01            [12] 1149 	mov	a,#0x01
      000334 25 4B            [12] 1150 	add	a,_DAP_SWJ_Pins_req_65536_57
      000336 F9               [12] 1151 	mov	r1,a
      000337 E4               [12] 1152 	clr	a
      000338 35 4C            [12] 1153 	addc	a,(_DAP_SWJ_Pins_req_65536_57 + 1)
      00033A FA               [12] 1154 	mov	r2,a
      00033B AB 4D            [24] 1155 	mov	r3,(_DAP_SWJ_Pins_req_65536_57 + 2)
      00033D 89 82            [24] 1156 	mov	dpl,r1
      00033F 8A 83            [24] 1157 	mov	dph,r2
      000341 8B F0            [24] 1158 	mov	b,r3
      000343 12 25 DC         [24] 1159 	lcall	__gptrget
      000346 F5 4E            [12] 1160 	mov	_DAP_SWJ_Pins_select_65536_58,a
                                   1161 ;	DAP.c:201: wait = (uint16_t)(*(req + 2) << 0) | (uint16_t)(*(req + 3) << 8);
      000348 74 02            [12] 1162 	mov	a,#0x02
      00034A 25 4B            [12] 1163 	add	a,_DAP_SWJ_Pins_req_65536_57
      00034C F8               [12] 1164 	mov	r0,a
      00034D E4               [12] 1165 	clr	a
      00034E 35 4C            [12] 1166 	addc	a,(_DAP_SWJ_Pins_req_65536_57 + 1)
      000350 F9               [12] 1167 	mov	r1,a
      000351 AA 4D            [24] 1168 	mov	r2,(_DAP_SWJ_Pins_req_65536_57 + 2)
      000353 88 82            [24] 1169 	mov	dpl,r0
      000355 89 83            [24] 1170 	mov	dph,r1
      000357 8A F0            [24] 1171 	mov	b,r2
      000359 12 25 DC         [24] 1172 	lcall	__gptrget
      00035C F8               [12] 1173 	mov	r0,a
      00035D 7A 00            [12] 1174 	mov	r2,#0x00
      00035F 74 03            [12] 1175 	mov	a,#0x03
      000361 25 4B            [12] 1176 	add	a,_DAP_SWJ_Pins_req_65536_57
      000363 F9               [12] 1177 	mov	r1,a
      000364 E4               [12] 1178 	clr	a
      000365 35 4C            [12] 1179 	addc	a,(_DAP_SWJ_Pins_req_65536_57 + 1)
      000367 FB               [12] 1180 	mov	r3,a
      000368 AF 4D            [24] 1181 	mov	r7,(_DAP_SWJ_Pins_req_65536_57 + 2)
      00036A 89 82            [24] 1182 	mov	dpl,r1
      00036C 8B 83            [24] 1183 	mov	dph,r3
      00036E 8F F0            [24] 1184 	mov	b,r7
      000370 12 25 DC         [24] 1185 	lcall	__gptrget
      000373 FF               [12] 1186 	mov	r7,a
      000374 E4               [12] 1187 	clr	a
      000375 F9               [12] 1188 	mov	r1,a
      000376 48               [12] 1189 	orl	a,r0
      000377 FE               [12] 1190 	mov	r6,a
      000378 EF               [12] 1191 	mov	a,r7
      000379 4A               [12] 1192 	orl	a,r2
      00037A FF               [12] 1193 	mov	r7,a
                                   1194 ;	DAP.c:202: if ((uint8_t)(*(req + 4)) || (uint8_t)(*(req + 5)))
      00037B 74 04            [12] 1195 	mov	a,#0x04
      00037D 25 4B            [12] 1196 	add	a,_DAP_SWJ_Pins_req_65536_57
      00037F FA               [12] 1197 	mov	r2,a
      000380 E4               [12] 1198 	clr	a
      000381 35 4C            [12] 1199 	addc	a,(_DAP_SWJ_Pins_req_65536_57 + 1)
      000383 FB               [12] 1200 	mov	r3,a
      000384 AD 4D            [24] 1201 	mov	r5,(_DAP_SWJ_Pins_req_65536_57 + 2)
      000386 8A 82            [24] 1202 	mov	dpl,r2
      000388 8B 83            [24] 1203 	mov	dph,r3
      00038A 8D F0            [24] 1204 	mov	b,r5
      00038C 12 25 DC         [24] 1205 	lcall	__gptrget
      00038F 70 16            [24] 1206 	jnz	00101$
      000391 74 05            [12] 1207 	mov	a,#0x05
      000393 25 4B            [12] 1208 	add	a,_DAP_SWJ_Pins_req_65536_57
      000395 FA               [12] 1209 	mov	r2,a
      000396 E4               [12] 1210 	clr	a
      000397 35 4C            [12] 1211 	addc	a,(_DAP_SWJ_Pins_req_65536_57 + 1)
      000399 FB               [12] 1212 	mov	r3,a
      00039A AD 4D            [24] 1213 	mov	r5,(_DAP_SWJ_Pins_req_65536_57 + 2)
      00039C 8A 82            [24] 1214 	mov	dpl,r2
      00039E 8B 83            [24] 1215 	mov	dph,r3
      0003A0 8D F0            [24] 1216 	mov	b,r5
      0003A2 12 25 DC         [24] 1217 	lcall	__gptrget
      0003A5 60 03            [24] 1218 	jz	00102$
      0003A7                       1219 00101$:
                                   1220 ;	DAP.c:203: wait |= 0x8000;
      0003A7 43 07 80         [24] 1221 	orl	ar7,#0x80
      0003AA                       1222 00102$:
                                   1223 ;	DAP.c:205: if ((select & DAP_SWJ_SWCLK_TCK_BIT) != 0U)
      0003AA E5 4E            [12] 1224 	mov	a,_DAP_SWJ_Pins_select_65536_58
      0003AC 30 E0 0A         [24] 1225 	jnb	acc.0,00108$
                                   1226 ;	DAP.c:207: if ((value & DAP_SWJ_SWCLK_TCK_BIT) != 0U)
      0003AF EC               [12] 1227 	mov	a,r4
      0003B0 30 E0 04         [24] 1228 	jnb	acc.0,00105$
                                   1229 ;	DAP.c:209: SWK = 1;
                                   1230 ;	assignBit
      0003B3 D2 B2            [12] 1231 	setb	_P3_2
      0003B5 80 02            [24] 1232 	sjmp	00108$
      0003B7                       1233 00105$:
                                   1234 ;	DAP.c:213: SWK = 0;
                                   1235 ;	assignBit
      0003B7 C2 B2            [12] 1236 	clr	_P3_2
      0003B9                       1237 00108$:
                                   1238 ;	DAP.c:216: if ((select & DAP_SWJ_SWDIO_TMS_BIT) != 0U)
      0003B9 E5 4E            [12] 1239 	mov	a,_DAP_SWJ_Pins_select_65536_58
      0003BB 30 E1 0A         [24] 1240 	jnb	acc.1,00113$
                                   1241 ;	DAP.c:218: if ((value & DAP_SWJ_SWDIO_TMS_BIT) != 0U)
      0003BE EC               [12] 1242 	mov	a,r4
      0003BF 30 E1 04         [24] 1243 	jnb	acc.1,00110$
                                   1244 ;	DAP.c:220: SWD = 1;
                                   1245 ;	assignBit
      0003C2 D2 97            [12] 1246 	setb	_P1_7
      0003C4 80 02            [24] 1247 	sjmp	00113$
      0003C6                       1248 00110$:
                                   1249 ;	DAP.c:224: SWD = 0;
                                   1250 ;	assignBit
      0003C6 C2 97            [12] 1251 	clr	_P1_7
      0003C8                       1252 00113$:
                                   1253 ;	DAP.c:227: if ((select & DAP_SWJ_nRESET_BIT) != 0U)
      0003C8 E5 4E            [12] 1254 	mov	a,_DAP_SWJ_Pins_select_65536_58
      0003CA 30 E7 09         [24] 1255 	jnb	acc.7,00115$
                                   1256 ;	DAP.c:229: RST = value >> DAP_SWJ_nRESET;
      0003CD EC               [12] 1257 	mov	a,r4
      0003CE 23               [12] 1258 	rl	a
      0003CF 54 01            [12] 1259 	anl	a,#0x01
                                   1260 ;	assignBit
      0003D1 FD               [12] 1261 	mov	r5,a
      0003D2 24 FF            [12] 1262 	add	a,#0xff
      0003D4 92 95            [24] 1263 	mov	_P1_5,c
      0003D6                       1264 00115$:
                                   1265 ;	DAP.c:232: if (wait != 0U)
      0003D6 EE               [12] 1266 	mov	a,r6
      0003D7 4F               [12] 1267 	orl	a,r7
      0003D8 60 62            [24] 1268 	jz	00132$
                                   1269 ;	DAP.c:235: do
      0003DA 74 02            [12] 1270 	mov	a,#0x02
      0003DC 55 4E            [12] 1271 	anl	a,_DAP_SWJ_Pins_select_65536_58
      0003DE FB               [12] 1272 	mov	r3,a
      0003DF 7D 00            [12] 1273 	mov	r5,#0x00
      0003E1 74 80            [12] 1274 	mov	a,#0x80
      0003E3 55 4E            [12] 1275 	anl	a,_DAP_SWJ_Pins_select_65536_58
      0003E5 F9               [12] 1276 	mov	r1,a
      0003E6 7A 00            [12] 1277 	mov	r2,#0x00
      0003E8 EC               [12] 1278 	mov	a,r4
      0003E9 23               [12] 1279 	rl	a
      0003EA 54 01            [12] 1280 	anl	a,#0x01
      0003EC F5 53            [12] 1281 	mov	_DAP_SWJ_Pins_sloc3_1_0,a
      0003EE EC               [12] 1282 	mov	a,r4
      0003EF C3               [12] 1283 	clr	c
      0003F0 13               [12] 1284 	rrc	a
      0003F1 F5 4F            [12] 1285 	mov	_DAP_SWJ_Pins_sloc0_1_0,a
      0003F3 8C 54            [24] 1286 	mov	_DAP_SWJ_Pins_sloc4_1_0,r4
      0003F5 74 01            [12] 1287 	mov	a,#0x01
      0003F7 55 4E            [12] 1288 	anl	a,_DAP_SWJ_Pins_select_65536_58
      0003F9 F5 50            [12] 1289 	mov	_DAP_SWJ_Pins_sloc1_1_0,a
                                   1290 ;	1-genFromRTrack replaced	mov	(_DAP_SWJ_Pins_sloc1_1_0 + 1),#0x00
      0003FB 8D 51            [24] 1291 	mov	(_DAP_SWJ_Pins_sloc1_1_0 + 1),r5
      0003FD                       1292 00128$:
                                   1293 ;	DAP.c:237: if ((select & DAP_SWJ_SWCLK_TCK_BIT) != 0U)
      0003FD E5 50            [12] 1294 	mov	a,_DAP_SWJ_Pins_sloc1_1_0
      0003FF 45 51            [12] 1295 	orl	a,(_DAP_SWJ_Pins_sloc1_1_0 + 1)
      000401 60 0C            [24] 1296 	jz	00119$
                                   1297 ;	DAP.c:239: if ((value >> DAP_SWJ_SWCLK_TCK) ^ SWK)
      000403 85 54 52         [24] 1298 	mov	_DAP_SWJ_Pins_sloc2_1_0,_DAP_SWJ_Pins_sloc4_1_0
      000406 A2 B2            [12] 1299 	mov	c,_P3_2
      000408 E4               [12] 1300 	clr	a
      000409 33               [12] 1301 	rlc	a
      00040A F8               [12] 1302 	mov	r0,a
      00040B 65 52            [12] 1303 	xrl	a,_DAP_SWJ_Pins_sloc2_1_0
      00040D 70 20            [24] 1304 	jnz	00129$
                                   1305 ;	DAP.c:241: continue;
      00040F                       1306 00119$:
                                   1307 ;	DAP.c:244: if ((select & DAP_SWJ_SWDIO_TMS_BIT) != 0U)
      00040F EB               [12] 1308 	mov	a,r3
      000410 4D               [12] 1309 	orl	a,r5
      000411 60 0C            [24] 1310 	jz	00123$
                                   1311 ;	DAP.c:246: if ((value >> DAP_SWJ_SWDIO_TMS) ^ SWD)
      000413 85 4F 52         [24] 1312 	mov	_DAP_SWJ_Pins_sloc2_1_0,_DAP_SWJ_Pins_sloc0_1_0
      000416 A2 97            [12] 1313 	mov	c,_P1_7
      000418 E4               [12] 1314 	clr	a
      000419 33               [12] 1315 	rlc	a
      00041A F8               [12] 1316 	mov	r0,a
      00041B 65 52            [12] 1317 	xrl	a,_DAP_SWJ_Pins_sloc2_1_0
      00041D 70 10            [24] 1318 	jnz	00129$
                                   1319 ;	DAP.c:248: continue;
      00041F                       1320 00123$:
                                   1321 ;	DAP.c:251: if ((select & DAP_SWJ_nRESET_BIT) != 0U)
      00041F E9               [12] 1322 	mov	a,r1
      000420 4A               [12] 1323 	orl	a,r2
      000421 60 19            [24] 1324 	jz	00132$
                                   1325 ;	DAP.c:253: if ((value >> DAP_SWJ_nRESET) ^ RST)
      000423 85 53 52         [24] 1326 	mov	_DAP_SWJ_Pins_sloc2_1_0,_DAP_SWJ_Pins_sloc3_1_0
      000426 A2 95            [12] 1327 	mov	c,_P1_5
      000428 E4               [12] 1328 	clr	a
      000429 33               [12] 1329 	rlc	a
      00042A FC               [12] 1330 	mov	r4,a
      00042B 65 52            [12] 1331 	xrl	a,_DAP_SWJ_Pins_sloc2_1_0
      00042D 60 0D            [24] 1332 	jz	00132$
                                   1333 ;	DAP.c:258: break;
      00042F                       1334 00129$:
                                   1335 ;	DAP.c:260: while (wait--);
      00042F 8E 00            [24] 1336 	mov	ar0,r6
      000431 8F 04            [24] 1337 	mov	ar4,r7
      000433 1E               [12] 1338 	dec	r6
      000434 BE FF 01         [24] 1339 	cjne	r6,#0xff,00204$
      000437 1F               [12] 1340 	dec	r7
      000438                       1341 00204$:
      000438 E8               [12] 1342 	mov	a,r0
      000439 4C               [12] 1343 	orl	a,r4
      00043A 70 C1            [24] 1344 	jnz	00128$
      00043C                       1345 00132$:
                                   1346 ;	DAP.c:263: value = ((uint8_t)SWK << DAP_SWJ_SWCLK_TCK) |
      00043C A2 B2            [12] 1347 	mov	c,_P3_2
      00043E E4               [12] 1348 	clr	a
      00043F 33               [12] 1349 	rlc	a
      000440 FF               [12] 1350 	mov	r7,a
                                   1351 ;	DAP.c:264: ((uint8_t)SWD << DAP_SWJ_SWDIO_TMS) |
      000441 A2 97            [12] 1352 	mov	c,_P1_7
      000443 E4               [12] 1353 	clr	a
      000444 33               [12] 1354 	rlc	a
      000445 25 E0            [12] 1355 	add	a,acc
      000447 42 07            [12] 1356 	orl	ar7,a
                                   1357 ;	DAP.c:268: ((uint8_t)RST << DAP_SWJ_nRESET);
      000449 A2 95            [12] 1358 	mov	c,_P1_5
      00044B E4               [12] 1359 	clr	a
      00044C 33               [12] 1360 	rlc	a
      00044D 03               [12] 1361 	rr	a
      00044E 54 80            [12] 1362 	anl	a,#0x80
      000450 42 07            [12] 1363 	orl	ar7,a
                                   1364 ;	DAP.c:270: *res = (uint8_t)value;
      000452 AC 48            [24] 1365 	mov	r4,_DAP_SWJ_Pins_PARM_2
      000454 AD 49            [24] 1366 	mov	r5,(_DAP_SWJ_Pins_PARM_2 + 1)
      000456 AE 4A            [24] 1367 	mov	r6,(_DAP_SWJ_Pins_PARM_2 + 2)
      000458 8C 82            [24] 1368 	mov	dpl,r4
      00045A 8D 83            [24] 1369 	mov	dph,r5
      00045C 8E F0            [24] 1370 	mov	b,r6
      00045E EF               [12] 1371 	mov	a,r7
      00045F 12 25 C1         [24] 1372 	lcall	__gptrput
                                   1373 ;	DAP.c:272: return 1;
      000462 75 82 01         [24] 1374 	mov	dpl,#0x01
                                   1375 ;	DAP.c:273: }
      000465 22               [24] 1376 	ret
                                   1377 ;------------------------------------------------------------
                                   1378 ;Allocation info for local variables in function 'DAP_SWJ_Clock'
                                   1379 ;------------------------------------------------------------
                                   1380 ;res                       Allocated with name '_DAP_SWJ_Clock_PARM_2'
                                   1381 ;req                       Allocated to registers r7 r5 r6 
                                   1382 ;reloadValueT2             Allocated to registers r4 r5 
                                   1383 ;------------------------------------------------------------
                                   1384 ;	DAP.c:282: static uint8_t DAP_SWJ_Clock(const uint8_t *req, uint8_t *res)
                                   1385 ;	-----------------------------------------
                                   1386 ;	 function DAP_SWJ_Clock
                                   1387 ;	-----------------------------------------
      000466                       1388 _DAP_SWJ_Clock:
                                   1389 ;	DAP.c:285: fast_clock = *((uint32_t *)req);
      000466 12 25 DC         [24] 1390 	lcall	__gptrget
      000469 FC               [12] 1391 	mov	r4,a
      00046A A3               [24] 1392 	inc	dptr
      00046B 12 25 DC         [24] 1393 	lcall	__gptrget
      00046E FD               [12] 1394 	mov	r5,a
      00046F A3               [24] 1395 	inc	dptr
      000470 12 25 DC         [24] 1396 	lcall	__gptrget
      000473 FE               [12] 1397 	mov	r6,a
      000474 A3               [24] 1398 	inc	dptr
      000475 12 25 DC         [24] 1399 	lcall	__gptrget
      000478 FF               [12] 1400 	mov	r7,a
      000479 90 00 00         [24] 1401 	mov	dptr,#_fast_clock
      00047C EC               [12] 1402 	mov	a,r4
      00047D F0               [24] 1403 	movx	@dptr,a
      00047E ED               [12] 1404 	mov	a,r5
      00047F A3               [24] 1405 	inc	dptr
      000480 F0               [24] 1406 	movx	@dptr,a
      000481 EE               [12] 1407 	mov	a,r6
      000482 A3               [24] 1408 	inc	dptr
      000483 F0               [24] 1409 	movx	@dptr,a
      000484 EF               [12] 1410 	mov	a,r7
      000485 A3               [24] 1411 	inc	dptr
      000486 F0               [24] 1412 	movx	@dptr,a
                                   1413 ;	DAP.c:289: TR2=0;
                                   1414 ;	assignBit
      000487 C2 CA            [12] 1415 	clr	_TR2
                                   1416 ;	DAP.c:291: RCLK = 0;
                                   1417 ;	assignBit
      000489 C2 CD            [12] 1418 	clr	_RCLK
                                   1419 ;	DAP.c:292: TCLK = 0;
                                   1420 ;	assignBit
      00048B C2 CC            [12] 1421 	clr	_TCLK
                                   1422 ;	DAP.c:293: C_T2 = 0;
                                   1423 ;	assignBit
      00048D C2 C9            [12] 1424 	clr	_C_T2
                                   1425 ;	DAP.c:296: T2MOD |= bTMR_CLK | bT2_CLK; //use Fsys for T2
      00048F 43 C9 C0         [24] 1426 	orl	_T2MOD,#0xc0
                                   1427 ;	DAP.c:298: CP_RL2 = 0;
                                   1428 ;	assignBit
      000492 C2 C8            [12] 1429 	clr	_CP_RL2
                                   1430 ;	DAP.c:300: if (fast_clock<(2*F_CPU/65536L)){
      000494 C3               [12] 1431 	clr	c
      000495 EC               [12] 1432 	mov	a,r4
      000496 94 DC            [12] 1433 	subb	a,#0xdc
      000498 ED               [12] 1434 	mov	a,r5
      000499 94 02            [12] 1435 	subb	a,#0x02
      00049B EE               [12] 1436 	mov	a,r6
      00049C 94 00            [12] 1437 	subb	a,#0x00
      00049E EF               [12] 1438 	mov	a,r7
      00049F 94 00            [12] 1439 	subb	a,#0x00
      0004A1 50 08            [24] 1440 	jnc	00102$
                                   1441 ;	DAP.c:301: RCAP2L=0;
      0004A3 75 CA 00         [24] 1442 	mov	_RCAP2L,#0x00
                                   1443 ;	DAP.c:302: RCAP2H=0;
      0004A6 75 CB 00         [24] 1444 	mov	_RCAP2H,#0x00
      0004A9 80 24            [24] 1445 	sjmp	00103$
      0004AB                       1446 00102$:
                                   1447 ;	DAP.c:304: uint16_t reloadValueT2 = (uint16_t)(65536L-((F_CPU/2)/fast_clock));
      0004AB 8C 48            [24] 1448 	mov	__divulong_PARM_2,r4
      0004AD 8D 49            [24] 1449 	mov	(__divulong_PARM_2 + 1),r5
      0004AF 8E 4A            [24] 1450 	mov	(__divulong_PARM_2 + 2),r6
      0004B1 8F 4B            [24] 1451 	mov	(__divulong_PARM_2 + 3),r7
      0004B3 90 1B 00         [24] 1452 	mov	dptr,#0x1b00
      0004B6 75 F0 B7         [24] 1453 	mov	b,#0xb7
      0004B9 E4               [12] 1454 	clr	a
      0004BA 12 25 07         [24] 1455 	lcall	__divulong
      0004BD AC 82            [24] 1456 	mov	r4,dpl
      0004BF AD 83            [24] 1457 	mov	r5,dph
      0004C1 AE F0            [24] 1458 	mov	r6,b
      0004C3 FF               [12] 1459 	mov	r7,a
      0004C4 C3               [12] 1460 	clr	c
      0004C5 E4               [12] 1461 	clr	a
      0004C6 9C               [12] 1462 	subb	a,r4
      0004C7 FC               [12] 1463 	mov	r4,a
      0004C8 E4               [12] 1464 	clr	a
      0004C9 9D               [12] 1465 	subb	a,r5
      0004CA FD               [12] 1466 	mov	r5,a
                                   1467 ;	DAP.c:305: RCAP2L = reloadValueT2&0xFF;
      0004CB 8C CA            [24] 1468 	mov	_RCAP2L,r4
                                   1469 ;	DAP.c:306: RCAP2H = (reloadValueT2>>8)&0xFF;
      0004CD 8D CB            [24] 1470 	mov	_RCAP2H,r5
      0004CF                       1471 00103$:
                                   1472 ;	DAP.c:308: TL2=RCAP2L;
      0004CF 85 CA CC         [24] 1473 	mov	_TL2,_RCAP2L
                                   1474 ;	DAP.c:309: TH2=RCAP2H;
      0004D2 85 CB CD         [24] 1475 	mov	_TH2,_RCAP2H
                                   1476 ;	DAP.c:311: TF2=0;
                                   1477 ;	assignBit
      0004D5 C2 CF            [12] 1478 	clr	_TF2
                                   1479 ;	DAP.c:312: TR2=1;
                                   1480 ;	assignBit
      0004D7 D2 CA            [12] 1481 	setb	_TR2
                                   1482 ;	DAP.c:314: clock_delay = 0;
      0004D9 90 00 04         [24] 1483 	mov	dptr,#_clock_delay
      0004DC E4               [12] 1484 	clr	a
      0004DD F0               [24] 1485 	movx	@dptr,a
                                   1486 ;	DAP.c:316: *res = DAP_OK;
      0004DE AD 0F            [24] 1487 	mov	r5,_DAP_SWJ_Clock_PARM_2
      0004E0 AE 10            [24] 1488 	mov	r6,(_DAP_SWJ_Clock_PARM_2 + 1)
      0004E2 AF 11            [24] 1489 	mov	r7,(_DAP_SWJ_Clock_PARM_2 + 2)
      0004E4 8D 82            [24] 1490 	mov	dpl,r5
      0004E6 8E 83            [24] 1491 	mov	dph,r6
      0004E8 8F F0            [24] 1492 	mov	b,r7
      0004EA 12 25 C1         [24] 1493 	lcall	__gptrput
                                   1494 ;	DAP.c:317: return 1;
      0004ED 75 82 01         [24] 1495 	mov	dpl,#0x01
                                   1496 ;	DAP.c:318: }
      0004F0 22               [24] 1497 	ret
                                   1498 ;------------------------------------------------------------
                                   1499 ;Allocation info for local variables in function 'DAP_SWJ_Sequence'
                                   1500 ;------------------------------------------------------------
                                   1501 ;res                       Allocated with name '_DAP_SWJ_Sequence_PARM_2'
                                   1502 ;req                       Allocated to registers r5 r6 r7 
                                   1503 ;count                     Allocated to registers r3 
                                   1504 ;------------------------------------------------------------
                                   1505 ;	DAP.c:325: static uint8_t DAP_SWJ_Sequence(const uint8_t *req, uint8_t *res)
                                   1506 ;	-----------------------------------------
                                   1507 ;	 function DAP_SWJ_Sequence
                                   1508 ;	-----------------------------------------
      0004F1                       1509 _DAP_SWJ_Sequence:
                                   1510 ;	DAP.c:329: count = *req++;
      0004F1 AD 82            [24] 1511 	mov	r5,dpl
      0004F3 AE 83            [24] 1512 	mov	r6,dph
      0004F5 AF F0            [24] 1513 	mov	r7,b
      0004F7 12 25 DC         [24] 1514 	lcall	__gptrget
      0004FA FC               [12] 1515 	mov	r4,a
      0004FB 0D               [12] 1516 	inc	r5
      0004FC BD 00 01         [24] 1517 	cjne	r5,#0x00,00110$
      0004FF 0E               [12] 1518 	inc	r6
      000500                       1519 00110$:
                                   1520 ;	DAP.c:330: if (count == 0U)
      000500 EC               [12] 1521 	mov	a,r4
      000501 FB               [12] 1522 	mov	r3,a
      000502 70 02            [24] 1523 	jnz	00102$
                                   1524 ;	DAP.c:332: count = 255U;
      000504 7B FF            [12] 1525 	mov	r3,#0xff
      000506                       1526 00102$:
                                   1527 ;	DAP.c:335: SWJ_Sequence(count, req);
      000506 8D 48            [24] 1528 	mov	_SWJ_Sequence_PARM_2,r5
      000508 8E 49            [24] 1529 	mov	(_SWJ_Sequence_PARM_2 + 1),r6
      00050A 8F 4A            [24] 1530 	mov	(_SWJ_Sequence_PARM_2 + 2),r7
      00050C 8B 82            [24] 1531 	mov	dpl,r3
      00050E 12 14 BB         [24] 1532 	lcall	_SWJ_Sequence
                                   1533 ;	DAP.c:336: *res = DAP_OK;
      000511 AD 12            [24] 1534 	mov	r5,_DAP_SWJ_Sequence_PARM_2
      000513 AE 13            [24] 1535 	mov	r6,(_DAP_SWJ_Sequence_PARM_2 + 1)
      000515 AF 14            [24] 1536 	mov	r7,(_DAP_SWJ_Sequence_PARM_2 + 2)
      000517 8D 82            [24] 1537 	mov	dpl,r5
      000519 8E 83            [24] 1538 	mov	dph,r6
      00051B 8F F0            [24] 1539 	mov	b,r7
      00051D E4               [12] 1540 	clr	a
      00051E 12 25 C1         [24] 1541 	lcall	__gptrput
                                   1542 ;	DAP.c:338: return 1;
      000521 75 82 01         [24] 1543 	mov	dpl,#0x01
                                   1544 ;	DAP.c:339: }
      000524 22               [24] 1545 	ret
                                   1546 ;------------------------------------------------------------
                                   1547 ;Allocation info for local variables in function 'DAP_SWD_Configure'
                                   1548 ;------------------------------------------------------------
                                   1549 ;res                       Allocated with name '_DAP_SWD_Configure_PARM_2'
                                   1550 ;req                       Allocated to registers r5 r6 r7 
                                   1551 ;value                     Allocated to registers r5 
                                   1552 ;------------------------------------------------------------
                                   1553 ;	DAP.c:348: static uint8_t DAP_SWD_Configure(const uint8_t *req, uint8_t *res)
                                   1554 ;	-----------------------------------------
                                   1555 ;	 function DAP_SWD_Configure
                                   1556 ;	-----------------------------------------
      000525                       1557 _DAP_SWD_Configure:
                                   1558 ;	DAP.c:352: value = *req;
      000525 12 25 DC         [24] 1559 	lcall	__gptrget
      000528 FD               [12] 1560 	mov	r5,a
                                   1561 ;	DAP.c:353: turnaround = (value & 0x03U) + 1U;
      000529 74 03            [12] 1562 	mov	a,#0x03
      00052B 5D               [12] 1563 	anl	a,r5
      00052C 78 56            [12] 1564 	mov	r0,#_turnaround
      00052E 04               [12] 1565 	inc	a
      00052F F6               [12] 1566 	mov	@r0,a
                                   1567 ;	DAP.c:354: data_phase = (value & 0x04U) ? 1U : 0U;
      000530 ED               [12] 1568 	mov	a,r5
      000531 30 E2 06         [24] 1569 	jnb	acc.2,00103$
      000534 7E 01            [12] 1570 	mov	r6,#0x01
      000536 7F 00            [12] 1571 	mov	r7,#0x00
      000538 80 04            [24] 1572 	sjmp	00104$
      00053A                       1573 00103$:
      00053A 7E 00            [12] 1574 	mov	r6,#0x00
      00053C 7F 00            [12] 1575 	mov	r7,#0x00
      00053E                       1576 00104$:
      00053E 78 57            [12] 1577 	mov	r0,#_data_phase
      000540 A6 06            [24] 1578 	mov	@r0,ar6
                                   1579 ;	DAP.c:356: *res = DAP_OK;
      000542 AD 48            [24] 1580 	mov	r5,_DAP_SWD_Configure_PARM_2
      000544 AE 49            [24] 1581 	mov	r6,(_DAP_SWD_Configure_PARM_2 + 1)
      000546 AF 4A            [24] 1582 	mov	r7,(_DAP_SWD_Configure_PARM_2 + 2)
      000548 8D 82            [24] 1583 	mov	dpl,r5
      00054A 8E 83            [24] 1584 	mov	dph,r6
      00054C 8F F0            [24] 1585 	mov	b,r7
      00054E E4               [12] 1586 	clr	a
      00054F 12 25 C1         [24] 1587 	lcall	__gptrput
                                   1588 ;	DAP.c:357: return 1;
      000552 75 82 01         [24] 1589 	mov	dpl,#0x01
                                   1590 ;	DAP.c:358: }
      000555 22               [24] 1591 	ret
                                   1592 ;------------------------------------------------------------
                                   1593 ;Allocation info for local variables in function 'DAP_SWD_Sequence'
                                   1594 ;------------------------------------------------------------
                                   1595 ;res                       Allocated with name '_DAP_SWD_Sequence_PARM_2'
                                   1596 ;req                       Allocated to registers r5 r6 r7 
                                   1597 ;sequence_info             Allocated to registers r1 
                                   1598 ;sequence_count            Allocated to registers 
                                   1599 ;request_count             Allocated to registers r4 
                                   1600 ;response_count            Allocated with name '_DAP_SWD_Sequence_response_count_65536_84'
                                   1601 ;count                     Allocated to registers r0 
                                   1602 ;------------------------------------------------------------
                                   1603 ;	DAP.c:365: static uint8_t DAP_SWD_Sequence(const uint8_t *req, uint8_t *res)
                                   1604 ;	-----------------------------------------
                                   1605 ;	 function DAP_SWD_Sequence
                                   1606 ;	-----------------------------------------
      000556                       1607 _DAP_SWD_Sequence:
      000556 AD 82            [24] 1608 	mov	r5,dpl
      000558 AE 83            [24] 1609 	mov	r6,dph
      00055A AF F0            [24] 1610 	mov	r7,b
                                   1611 ;	DAP.c:373: *res++ = DAP_OK;
      00055C AA 15            [24] 1612 	mov	r2,_DAP_SWD_Sequence_PARM_2
      00055E AB 16            [24] 1613 	mov	r3,(_DAP_SWD_Sequence_PARM_2 + 1)
      000560 AC 17            [24] 1614 	mov	r4,(_DAP_SWD_Sequence_PARM_2 + 2)
      000562 8A 82            [24] 1615 	mov	dpl,r2
      000564 8B 83            [24] 1616 	mov	dph,r3
      000566 8C F0            [24] 1617 	mov	b,r4
      000568 E4               [12] 1618 	clr	a
      000569 12 25 C1         [24] 1619 	lcall	__gptrput
      00056C 04               [12] 1620 	inc	a
      00056D 2A               [12] 1621 	add	a,r2
      00056E F5 15            [12] 1622 	mov	_DAP_SWD_Sequence_PARM_2,a
      000570 E4               [12] 1623 	clr	a
      000571 3B               [12] 1624 	addc	a,r3
      000572 F5 16            [12] 1625 	mov	(_DAP_SWD_Sequence_PARM_2 + 1),a
      000574 8C 17            [24] 1626 	mov	(_DAP_SWD_Sequence_PARM_2 + 2),r4
                                   1627 ;	DAP.c:375: request_count = 1U;
      000576 7C 01            [12] 1628 	mov	r4,#0x01
                                   1629 ;	DAP.c:376: response_count = 1U;
                                   1630 ;	1-genFromRTrack replaced	mov	_DAP_SWD_Sequence_response_count_65536_84,#0x01
      000578 8C 18            [24] 1631 	mov	_DAP_SWD_Sequence_response_count_65536_84,r4
                                   1632 ;	DAP.c:378: sequence_count = *req++;
      00057A 8D 82            [24] 1633 	mov	dpl,r5
      00057C 8E 83            [24] 1634 	mov	dph,r6
      00057E 8F F0            [24] 1635 	mov	b,r7
      000580 12 25 DC         [24] 1636 	lcall	__gptrget
      000583 FA               [12] 1637 	mov	r2,a
      000584 0D               [12] 1638 	inc	r5
      000585 BD 00 01         [24] 1639 	cjne	r5,#0x00,00147$
      000588 0E               [12] 1640 	inc	r6
      000589                       1641 00147$:
                                   1642 ;	DAP.c:379: while (sequence_count--)
      000589                       1643 00111$:
      000589 8A 01            [24] 1644 	mov	ar1,r2
      00058B 1A               [12] 1645 	dec	r2
      00058C E9               [12] 1646 	mov	a,r1
      00058D 70 03            [24] 1647 	jnz	00148$
      00058F 02 06 22         [24] 1648 	ljmp	00113$
      000592                       1649 00148$:
                                   1650 ;	DAP.c:381: sequence_info = *req++;
      000592 8D 82            [24] 1651 	mov	dpl,r5
      000594 8E 83            [24] 1652 	mov	dph,r6
      000596 8F F0            [24] 1653 	mov	b,r7
      000598 12 25 DC         [24] 1654 	lcall	__gptrget
      00059B F9               [12] 1655 	mov	r1,a
      00059C A3               [24] 1656 	inc	dptr
      00059D AD 82            [24] 1657 	mov	r5,dpl
      00059F AE 83            [24] 1658 	mov	r6,dph
                                   1659 ;	DAP.c:382: count = sequence_info & SWD_SEQUENCE_CLK;
      0005A1 74 3F            [12] 1660 	mov	a,#0x3f
      0005A3 59               [12] 1661 	anl	a,r1
                                   1662 ;	DAP.c:383: if (count == 0U)
      0005A4 F8               [12] 1663 	mov	r0,a
      0005A5 70 02            [24] 1664 	jnz	00102$
                                   1665 ;	DAP.c:385: count = 64U;
      0005A7 78 40            [12] 1666 	mov	r0,#0x40
      0005A9                       1667 00102$:
                                   1668 ;	DAP.c:387: count = (count + 7U) / 8U;
      0005A9 7B 00            [12] 1669 	mov	r3,#0x00
      0005AB 74 07            [12] 1670 	mov	a,#0x07
      0005AD 28               [12] 1671 	add	a,r0
      0005AE F8               [12] 1672 	mov	r0,a
      0005AF E4               [12] 1673 	clr	a
      0005B0 3B               [12] 1674 	addc	a,r3
      0005B1 C4               [12] 1675 	swap	a
      0005B2 23               [12] 1676 	rl	a
      0005B3 C8               [12] 1677 	xch	a,r0
      0005B4 C4               [12] 1678 	swap	a
      0005B5 23               [12] 1679 	rl	a
      0005B6 54 1F            [12] 1680 	anl	a,#0x1f
      0005B8 68               [12] 1681 	xrl	a,r0
      0005B9 C8               [12] 1682 	xch	a,r0
      0005BA 54 1F            [12] 1683 	anl	a,#0x1f
      0005BC C8               [12] 1684 	xch	a,r0
      0005BD 68               [12] 1685 	xrl	a,r0
      0005BE C8               [12] 1686 	xch	a,r0
                                   1687 ;	DAP.c:388: if ((sequence_info & SWD_SEQUENCE_DIN) != 0U)
      0005BF E9               [12] 1688 	mov	a,r1
      0005C0 30 E7 04         [24] 1689 	jnb	acc.7,00104$
                                   1690 ;	DAP.c:390: SWD = 1;
                                   1691 ;	assignBit
      0005C3 D2 97            [12] 1692 	setb	_P1_7
      0005C5 80 02            [24] 1693 	sjmp	00105$
      0005C7                       1694 00104$:
                                   1695 ;	DAP.c:394: SWD = 1;
                                   1696 ;	assignBit
      0005C7 D2 97            [12] 1697 	setb	_P1_7
      0005C9                       1698 00105$:
                                   1699 ;	DAP.c:396: SWD_Sequence(sequence_info, req, res);
      0005C9 8D 48            [24] 1700 	mov	_SWD_Sequence_PARM_2,r5
      0005CB 8E 49            [24] 1701 	mov	(_SWD_Sequence_PARM_2 + 1),r6
      0005CD 8F 4A            [24] 1702 	mov	(_SWD_Sequence_PARM_2 + 2),r7
      0005CF 85 15 4B         [24] 1703 	mov	_SWD_Sequence_PARM_3,_DAP_SWD_Sequence_PARM_2
      0005D2 85 16 4C         [24] 1704 	mov	(_SWD_Sequence_PARM_3 + 1),(_DAP_SWD_Sequence_PARM_2 + 1)
      0005D5 85 17 4D         [24] 1705 	mov	(_SWD_Sequence_PARM_3 + 2),(_DAP_SWD_Sequence_PARM_2 + 2)
      0005D8 89 82            [24] 1706 	mov	dpl,r1
      0005DA C0 07            [24] 1707 	push	ar7
      0005DC C0 06            [24] 1708 	push	ar6
      0005DE C0 05            [24] 1709 	push	ar5
      0005E0 C0 04            [24] 1710 	push	ar4
      0005E2 C0 02            [24] 1711 	push	ar2
      0005E4 C0 01            [24] 1712 	push	ar1
      0005E6 C0 00            [24] 1713 	push	ar0
      0005E8 12 15 15         [24] 1714 	lcall	_SWD_Sequence
      0005EB D0 00            [24] 1715 	pop	ar0
      0005ED D0 01            [24] 1716 	pop	ar1
      0005EF D0 02            [24] 1717 	pop	ar2
      0005F1 D0 04            [24] 1718 	pop	ar4
      0005F3 D0 05            [24] 1719 	pop	ar5
      0005F5 D0 06            [24] 1720 	pop	ar6
      0005F7 D0 07            [24] 1721 	pop	ar7
                                   1722 ;	DAP.c:397: if (sequence_count == 0U)
      0005F9 EA               [12] 1723 	mov	a,r2
      0005FA 70 02            [24] 1724 	jnz	00107$
                                   1725 ;	DAP.c:399: SWD = 1;
                                   1726 ;	assignBit
      0005FC D2 97            [12] 1727 	setb	_P1_7
      0005FE                       1728 00107$:
                                   1729 ;	DAP.c:401: if ((sequence_info & SWD_SEQUENCE_DIN) != 0U)
      0005FE E9               [12] 1730 	mov	a,r1
      0005FF 30 E7 13         [24] 1731 	jnb	acc.7,00109$
                                   1732 ;	DAP.c:403: request_count++;
      000602 0C               [12] 1733 	inc	r4
                                   1734 ;	DAP.c:404: res += count;
      000603 E8               [12] 1735 	mov	a,r0
      000604 25 15            [12] 1736 	add	a,_DAP_SWD_Sequence_PARM_2
      000606 F5 15            [12] 1737 	mov	_DAP_SWD_Sequence_PARM_2,a
      000608 E4               [12] 1738 	clr	a
      000609 35 16            [12] 1739 	addc	a,(_DAP_SWD_Sequence_PARM_2 + 1)
      00060B F5 16            [12] 1740 	mov	(_DAP_SWD_Sequence_PARM_2 + 1),a
                                   1741 ;	DAP.c:405: response_count += count;
      00060D E8               [12] 1742 	mov	a,r0
      00060E 25 18            [12] 1743 	add	a,_DAP_SWD_Sequence_response_count_65536_84
      000610 F5 18            [12] 1744 	mov	_DAP_SWD_Sequence_response_count_65536_84,a
      000612 02 05 89         [24] 1745 	ljmp	00111$
      000615                       1746 00109$:
                                   1747 ;	DAP.c:409: req += count;
      000615 E8               [12] 1748 	mov	a,r0
      000616 2D               [12] 1749 	add	a,r5
      000617 FD               [12] 1750 	mov	r5,a
      000618 E4               [12] 1751 	clr	a
      000619 3E               [12] 1752 	addc	a,r6
      00061A FE               [12] 1753 	mov	r6,a
                                   1754 ;	DAP.c:410: request_count += count + 1U;
      00061B E8               [12] 1755 	mov	a,r0
      00061C 04               [12] 1756 	inc	a
      00061D 2C               [12] 1757 	add	a,r4
      00061E FC               [12] 1758 	mov	r4,a
      00061F 02 05 89         [24] 1759 	ljmp	00111$
      000622                       1760 00113$:
                                   1761 ;	DAP.c:414: return response_count;
      000622 85 18 82         [24] 1762 	mov	dpl,_DAP_SWD_Sequence_response_count_65536_84
                                   1763 ;	DAP.c:415: }
      000625 22               [24] 1764 	ret
                                   1765 ;------------------------------------------------------------
                                   1766 ;Allocation info for local variables in function 'DAP_TransferConfigure'
                                   1767 ;------------------------------------------------------------
                                   1768 ;res                       Allocated with name '_DAP_TransferConfigure_PARM_2'
                                   1769 ;req                       Allocated with name '_DAP_TransferConfigure_req_65536_92'
                                   1770 ;------------------------------------------------------------
                                   1771 ;	DAP.c:425: static uint8_t DAP_TransferConfigure(const uint8_t *req, uint8_t *res)
                                   1772 ;	-----------------------------------------
                                   1773 ;	 function DAP_TransferConfigure
                                   1774 ;	-----------------------------------------
      000626                       1775 _DAP_TransferConfigure:
                                   1776 ;	DAP.c:428: idle_cycles = *(req + 0);
      000626 85 82 4B         [24] 1777 	mov	_DAP_TransferConfigure_req_65536_92,dpl
      000629 85 83 4C         [24] 1778 	mov	(_DAP_TransferConfigure_req_65536_92 + 1),dph
      00062C 85 F0 4D         [24] 1779 	mov	(_DAP_TransferConfigure_req_65536_92 + 2),b
      00062F 78 58            [12] 1780 	mov	r0,#_idle_cycles
      000631 12 25 DC         [24] 1781 	lcall	__gptrget
      000634 F6               [12] 1782 	mov	@r0,a
                                   1783 ;	DAP.c:429: retry_count = (uint16_t) * (req + 1) |
      000635 74 01            [12] 1784 	mov	a,#0x01
      000637 25 4B            [12] 1785 	add	a,_DAP_TransferConfigure_req_65536_92
      000639 FA               [12] 1786 	mov	r2,a
      00063A E4               [12] 1787 	clr	a
      00063B 35 4C            [12] 1788 	addc	a,(_DAP_TransferConfigure_req_65536_92 + 1)
      00063D FB               [12] 1789 	mov	r3,a
      00063E AC 4D            [24] 1790 	mov	r4,(_DAP_TransferConfigure_req_65536_92 + 2)
      000640 8A 82            [24] 1791 	mov	dpl,r2
      000642 8B 83            [24] 1792 	mov	dph,r3
      000644 8C F0            [24] 1793 	mov	b,r4
      000646 12 25 DC         [24] 1794 	lcall	__gptrget
      000649 FA               [12] 1795 	mov	r2,a
      00064A 7C 00            [12] 1796 	mov	r4,#0x00
                                   1797 ;	DAP.c:430: (uint16_t)(*(req + 2) << 8);
      00064C 74 02            [12] 1798 	mov	a,#0x02
      00064E 25 4B            [12] 1799 	add	a,_DAP_TransferConfigure_req_65536_92
      000650 FB               [12] 1800 	mov	r3,a
      000651 E4               [12] 1801 	clr	a
      000652 35 4C            [12] 1802 	addc	a,(_DAP_TransferConfigure_req_65536_92 + 1)
      000654 FE               [12] 1803 	mov	r6,a
      000655 AF 4D            [24] 1804 	mov	r7,(_DAP_TransferConfigure_req_65536_92 + 2)
      000657 8B 82            [24] 1805 	mov	dpl,r3
      000659 8E 83            [24] 1806 	mov	dph,r6
      00065B 8F F0            [24] 1807 	mov	b,r7
      00065D 12 25 DC         [24] 1808 	lcall	__gptrget
      000660 FF               [12] 1809 	mov	r7,a
      000661 E4               [12] 1810 	clr	a
      000662 42 02            [12] 1811 	orl	ar2,a
      000664 EF               [12] 1812 	mov	a,r7
      000665 42 04            [12] 1813 	orl	ar4,a
      000667 78 59            [12] 1814 	mov	r0,#_retry_count
      000669 A6 02            [24] 1815 	mov	@r0,ar2
      00066B 08               [12] 1816 	inc	r0
      00066C A6 04            [24] 1817 	mov	@r0,ar4
                                   1818 ;	DAP.c:431: match_retry = (uint16_t) * (req + 3) |
      00066E 74 03            [12] 1819 	mov	a,#0x03
      000670 25 4B            [12] 1820 	add	a,_DAP_TransferConfigure_req_65536_92
      000672 FD               [12] 1821 	mov	r5,a
      000673 E4               [12] 1822 	clr	a
      000674 35 4C            [12] 1823 	addc	a,(_DAP_TransferConfigure_req_65536_92 + 1)
      000676 FE               [12] 1824 	mov	r6,a
      000677 AF 4D            [24] 1825 	mov	r7,(_DAP_TransferConfigure_req_65536_92 + 2)
      000679 8D 82            [24] 1826 	mov	dpl,r5
      00067B 8E 83            [24] 1827 	mov	dph,r6
      00067D 8F F0            [24] 1828 	mov	b,r7
      00067F 12 25 DC         [24] 1829 	lcall	__gptrget
      000682 FD               [12] 1830 	mov	r5,a
      000683 7F 00            [12] 1831 	mov	r7,#0x00
                                   1832 ;	DAP.c:432: (uint16_t)(*(req + 4) << 8);
      000685 74 04            [12] 1833 	mov	a,#0x04
      000687 25 4B            [12] 1834 	add	a,_DAP_TransferConfigure_req_65536_92
      000689 FB               [12] 1835 	mov	r3,a
      00068A E4               [12] 1836 	clr	a
      00068B 35 4C            [12] 1837 	addc	a,(_DAP_TransferConfigure_req_65536_92 + 1)
      00068D FC               [12] 1838 	mov	r4,a
      00068E AE 4D            [24] 1839 	mov	r6,(_DAP_TransferConfigure_req_65536_92 + 2)
      000690 8B 82            [24] 1840 	mov	dpl,r3
      000692 8C 83            [24] 1841 	mov	dph,r4
      000694 8E F0            [24] 1842 	mov	b,r6
      000696 12 25 DC         [24] 1843 	lcall	__gptrget
      000699 FE               [12] 1844 	mov	r6,a
      00069A E4               [12] 1845 	clr	a
      00069B 42 05            [12] 1846 	orl	ar5,a
      00069D EE               [12] 1847 	mov	a,r6
      00069E 42 07            [12] 1848 	orl	ar7,a
      0006A0 78 5B            [12] 1849 	mov	r0,#_match_retry
      0006A2 A6 05            [24] 1850 	mov	@r0,ar5
      0006A4 08               [12] 1851 	inc	r0
      0006A5 A6 07            [24] 1852 	mov	@r0,ar7
                                   1853 ;	DAP.c:434: *res = DAP_OK;
      0006A7 AD 48            [24] 1854 	mov	r5,_DAP_TransferConfigure_PARM_2
      0006A9 AE 49            [24] 1855 	mov	r6,(_DAP_TransferConfigure_PARM_2 + 1)
      0006AB AF 4A            [24] 1856 	mov	r7,(_DAP_TransferConfigure_PARM_2 + 2)
      0006AD 8D 82            [24] 1857 	mov	dpl,r5
      0006AF 8E 83            [24] 1858 	mov	dph,r6
      0006B1 8F F0            [24] 1859 	mov	b,r7
      0006B3 E4               [12] 1860 	clr	a
      0006B4 12 25 C1         [24] 1861 	lcall	__gptrput
                                   1862 ;	DAP.c:435: return 1;
      0006B7 75 82 01         [24] 1863 	mov	dpl,#0x01
                                   1864 ;	DAP.c:436: }
      0006BA 22               [24] 1865 	ret
                                   1866 ;------------------------------------------------------------
                                   1867 ;Allocation info for local variables in function 'DAP_SWD_Transfer'
                                   1868 ;------------------------------------------------------------
                                   1869 ;res                       Allocated with name '_DAP_SWD_Transfer_PARM_2'
                                   1870 ;req                       Allocated to registers r5 r6 r7 
                                   1871 ;request_head              Allocated to registers 
                                   1872 ;response_head             Allocated with name '_DAP_SWD_Transfer_response_head_65536_95'
                                   1873 ;post_read                 Allocated with name '_DAP_SWD_Transfer_post_read_65536_95'
                                   1874 ;check_write               Allocated with name '_DAP_SWD_Transfer_check_write_65536_95'
                                   1875 ;sloc0                     Allocated with name '_DAP_SWD_Transfer_sloc0_1_0'
                                   1876 ;------------------------------------------------------------
                                   1877 ;	DAP.c:453: static uint8_t DAP_SWD_Transfer(const uint8_t *req, uint8_t *res)
                                   1878 ;	-----------------------------------------
                                   1879 ;	 function DAP_SWD_Transfer
                                   1880 ;	-----------------------------------------
      0006BB                       1881 _DAP_SWD_Transfer:
      0006BB AD 82            [24] 1882 	mov	r5,dpl
      0006BD AE 83            [24] 1883 	mov	r6,dph
      0006BF AF F0            [24] 1884 	mov	r7,b
                                   1885 ;	DAP.c:463: response_count = 0U;
      0006C1 78 68            [12] 1886 	mov	r0,#_response_count
      0006C3 76 00            [12] 1887 	mov	@r0,#0x00
                                   1888 ;	DAP.c:464: response_value = 0U;
      0006C5 78 69            [12] 1889 	mov	r0,#_response_value
      0006C7 76 00            [12] 1890 	mov	@r0,#0x00
                                   1891 ;	DAP.c:465: response_head = res;
      0006C9 85 19 1C         [24] 1892 	mov	_DAP_SWD_Transfer_response_head_65536_95,_DAP_SWD_Transfer_PARM_2
      0006CC 85 1A 1D         [24] 1893 	mov	(_DAP_SWD_Transfer_response_head_65536_95 + 1),(_DAP_SWD_Transfer_PARM_2 + 1)
      0006CF 85 1B 1E         [24] 1894 	mov	(_DAP_SWD_Transfer_response_head_65536_95 + 2),(_DAP_SWD_Transfer_PARM_2 + 2)
                                   1895 ;	DAP.c:466: res += 2;
      0006D2 74 02            [12] 1896 	mov	a,#0x02
      0006D4 25 1C            [12] 1897 	add	a,_DAP_SWD_Transfer_response_head_65536_95
      0006D6 F5 19            [12] 1898 	mov	_DAP_SWD_Transfer_PARM_2,a
      0006D8 E4               [12] 1899 	clr	a
      0006D9 35 1D            [12] 1900 	addc	a,(_DAP_SWD_Transfer_response_head_65536_95 + 1)
      0006DB F5 1A            [12] 1901 	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
      0006DD 85 1E 1B         [24] 1902 	mov	(_DAP_SWD_Transfer_PARM_2 + 2),(_DAP_SWD_Transfer_response_head_65536_95 + 2)
                                   1903 ;	DAP.c:468: DAP_TransferAbort = 0U;
      0006E0 78 65            [12] 1904 	mov	r0,#_DAP_TransferAbort
      0006E2 76 00            [12] 1905 	mov	@r0,#0x00
                                   1906 ;	DAP.c:470: post_read = 0U;
      0006E4 75 1F 00         [24] 1907 	mov	_DAP_SWD_Transfer_post_read_65536_95,#0x00
                                   1908 ;	DAP.c:471: check_write = 0U;
      0006E7 75 20 00         [24] 1909 	mov	_DAP_SWD_Transfer_check_write_65536_95,#0x00
                                   1910 ;	DAP.c:473: req++; // Ignore DAP index
      0006EA 0D               [12] 1911 	inc	r5
      0006EB BD 00 01         [24] 1912 	cjne	r5,#0x00,00550$
      0006EE 0E               [12] 1913 	inc	r6
      0006EF                       1914 00550$:
                                   1915 ;	DAP.c:475: request_count = *req++;
      0006EF 8D 82            [24] 1916 	mov	dpl,r5
      0006F1 8E 83            [24] 1917 	mov	dph,r6
      0006F3 8F F0            [24] 1918 	mov	b,r7
      0006F5 78 66            [12] 1919 	mov	r0,#_request_count
      0006F7 12 25 DC         [24] 1920 	lcall	__gptrget
      0006FA F6               [12] 1921 	mov	@r0,a
      0006FB 74 01            [12] 1922 	mov	a,#0x01
      0006FD 2D               [12] 1923 	add	a,r5
      0006FE F5 21            [12] 1924 	mov	_DAP_SWD_Transfer_sloc0_1_0,a
      000700 E4               [12] 1925 	clr	a
      000701 3E               [12] 1926 	addc	a,r6
      000702 F5 22            [12] 1927 	mov	(_DAP_SWD_Transfer_sloc0_1_0 + 1),a
      000704 8F 23            [24] 1928 	mov	(_DAP_SWD_Transfer_sloc0_1_0 + 2),r7
      000706                       1929 00223$:
                                   1930 ;	DAP.c:476: for (; request_count != 0U; request_count--)
      000706 78 66            [12] 1931 	mov	r0,#_request_count
      000708 E6               [12] 1932 	mov	a,@r0
      000709 70 03            [24] 1933 	jnz	00551$
      00070B 02 0C C2         [24] 1934 	ljmp	00226$
      00070E                       1935 00551$:
                                   1936 ;	DAP.c:478: request_value = *req++;
      00070E 85 21 82         [24] 1937 	mov	dpl,_DAP_SWD_Transfer_sloc0_1_0
      000711 85 22 83         [24] 1938 	mov	dph,(_DAP_SWD_Transfer_sloc0_1_0 + 1)
      000714 85 23 F0         [24] 1939 	mov	b,(_DAP_SWD_Transfer_sloc0_1_0 + 2)
      000717 12 25 DC         [24] 1940 	lcall	__gptrget
      00071A FA               [12] 1941 	mov	r2,a
      00071B A3               [24] 1942 	inc	dptr
      00071C 85 82 21         [24] 1943 	mov	_DAP_SWD_Transfer_sloc0_1_0,dpl
      00071F 85 83 22         [24] 1944 	mov	(_DAP_SWD_Transfer_sloc0_1_0 + 1),dph
      000722 78 67            [12] 1945 	mov	r0,#_request_value
      000724 A6 02            [24] 1946 	mov	@r0,ar2
                                   1947 ;	DAP.c:479: if ((request_value & DAP_TRANSFER_RnW) != 0U)
      000726 EA               [12] 1948 	mov	a,r2
      000727 20 E1 03         [24] 1949 	jb	acc.1,00552$
      00072A 02 0B 10         [24] 1950 	ljmp	00191$
      00072D                       1951 00552$:
                                   1952 ;	DAP.c:482: if (post_read)
      00072D E5 1F            [12] 1953 	mov	a,_DAP_SWD_Transfer_post_read_65536_95
      00072F 70 03            [24] 1954 	jnz	00553$
      000731 02 08 36         [24] 1955 	ljmp	00117$
      000734                       1956 00553$:
                                   1957 ;	DAP.c:485: retry = retry_count;
      000734 78 59            [12] 1958 	mov	r0,#_retry_count
      000736 86 03            [24] 1959 	mov	ar3,@r0
      000738 08               [12] 1960 	inc	r0
      000739 86 04            [24] 1961 	mov	ar4,@r0
      00073B 78 6A            [12] 1962 	mov	r0,#_retry
      00073D A6 03            [24] 1963 	mov	@r0,ar3
      00073F 08               [12] 1964 	inc	r0
      000740 A6 04            [24] 1965 	mov	@r0,ar4
                                   1966 ;	DAP.c:486: if ((request_value & (DAP_TRANSFER_APnDP | DAP_TRANSFER_MATCH_VALUE)) == DAP_TRANSFER_APnDP)
      000742 53 02 11         [24] 1967 	anl	ar2,#0x11
      000745 7C 00            [12] 1968 	mov	r4,#0x00
      000747 BA 01 36         [24] 1969 	cjne	r2,#0x01,00108$
      00074A BC 00 33         [24] 1970 	cjne	r4,#0x00,00108$
                                   1971 ;	DAP.c:489: do
      00074D                       1972 00103$:
                                   1973 ;	DAP.c:491: response_value = SWD_Transfer(request_value, datas);
      00074D 75 48 05         [24] 1974 	mov	_SWD_Transfer_PARM_2,#_datas
      000750 75 49 00         [24] 1975 	mov	(_SWD_Transfer_PARM_2 + 1),#(_datas >> 8)
      000753 78 67            [12] 1976 	mov	r0,#_request_value
      000755 86 82            [24] 1977 	mov	dpl,@r0
      000757 12 15 EA         [24] 1978 	lcall	_SWD_Transfer
      00075A AC 82            [24] 1979 	mov	r4,dpl
      00075C 78 69            [12] 1980 	mov	r0,#_response_value
      00075E A6 04            [24] 1981 	mov	@r0,ar4
                                   1982 ;	DAP.c:493: while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
      000760 BC 02 50         [24] 1983 	cjne	r4,#0x02,00113$
      000763 78 6A            [12] 1984 	mov	r0,#_retry
      000765 86 03            [24] 1985 	mov	ar3,@r0
      000767 08               [12] 1986 	inc	r0
      000768 86 04            [24] 1987 	mov	ar4,@r0
      00076A 78 6A            [12] 1988 	mov	r0,#_retry
      00076C EB               [12] 1989 	mov	a,r3
      00076D 24 FF            [12] 1990 	add	a,#0xff
      00076F F6               [12] 1991 	mov	@r0,a
      000770 EC               [12] 1992 	mov	a,r4
      000771 34 FF            [12] 1993 	addc	a,#0xff
      000773 08               [12] 1994 	inc	r0
      000774 F6               [12] 1995 	mov	@r0,a
      000775 EB               [12] 1996 	mov	a,r3
      000776 4C               [12] 1997 	orl	a,r4
      000777 60 3A            [24] 1998 	jz	00113$
      000779 78 65            [12] 1999 	mov	r0,#_DAP_TransferAbort
      00077B E6               [12] 2000 	mov	a,@r0
      00077C 60 CF            [24] 2001 	jz	00103$
                                   2002 ;	DAP.c:498: do
      00077E 80 33            [24] 2003 	sjmp	00113$
      000780                       2004 00108$:
                                   2005 ;	DAP.c:500: response_value = SWD_Transfer(DP_RDBUFF | DAP_TRANSFER_RnW, datas);
      000780 75 48 05         [24] 2006 	mov	_SWD_Transfer_PARM_2,#_datas
      000783 75 49 00         [24] 2007 	mov	(_SWD_Transfer_PARM_2 + 1),#(_datas >> 8)
      000786 75 82 0E         [24] 2008 	mov	dpl,#0x0e
      000789 12 15 EA         [24] 2009 	lcall	_SWD_Transfer
      00078C AC 82            [24] 2010 	mov	r4,dpl
      00078E 78 69            [12] 2011 	mov	r0,#_response_value
      000790 A6 04            [24] 2012 	mov	@r0,ar4
                                   2013 ;	DAP.c:502: while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
      000792 BC 02 1B         [24] 2014 	cjne	r4,#0x02,00110$
      000795 78 6A            [12] 2015 	mov	r0,#_retry
      000797 86 03            [24] 2016 	mov	ar3,@r0
      000799 08               [12] 2017 	inc	r0
      00079A 86 04            [24] 2018 	mov	ar4,@r0
      00079C 78 6A            [12] 2019 	mov	r0,#_retry
      00079E EB               [12] 2020 	mov	a,r3
      00079F 24 FF            [12] 2021 	add	a,#0xff
      0007A1 F6               [12] 2022 	mov	@r0,a
      0007A2 EC               [12] 2023 	mov	a,r4
      0007A3 34 FF            [12] 2024 	addc	a,#0xff
      0007A5 08               [12] 2025 	inc	r0
      0007A6 F6               [12] 2026 	mov	@r0,a
      0007A7 EB               [12] 2027 	mov	a,r3
      0007A8 4C               [12] 2028 	orl	a,r4
      0007A9 60 05            [24] 2029 	jz	00110$
      0007AB 78 65            [12] 2030 	mov	r0,#_DAP_TransferAbort
      0007AD E6               [12] 2031 	mov	a,@r0
      0007AE 60 D0            [24] 2032 	jz	00108$
      0007B0                       2033 00110$:
                                   2034 ;	DAP.c:503: post_read = 0U;
      0007B0 75 1F 00         [24] 2035 	mov	_DAP_SWD_Transfer_post_read_65536_95,#0x00
      0007B3                       2036 00113$:
                                   2037 ;	DAP.c:505: if (response_value != DAP_TRANSFER_OK)
      0007B3 78 69            [12] 2038 	mov	r0,#_response_value
      0007B5 B6 01 02         [24] 2039 	cjne	@r0,#0x01,00564$
      0007B8 80 03            [24] 2040 	sjmp	00565$
      0007BA                       2041 00564$:
      0007BA 02 0C C2         [24] 2042 	ljmp	00226$
      0007BD                       2043 00565$:
                                   2044 ;	DAP.c:510: *res++ = (uint8_t)datas[0];
      0007BD AA 19            [24] 2045 	mov	r2,_DAP_SWD_Transfer_PARM_2
      0007BF AB 1A            [24] 2046 	mov	r3,(_DAP_SWD_Transfer_PARM_2 + 1)
      0007C1 AC 1B            [24] 2047 	mov	r4,(_DAP_SWD_Transfer_PARM_2 + 2)
      0007C3 90 00 05         [24] 2048 	mov	dptr,#_datas
      0007C6 E0               [24] 2049 	movx	a,@dptr
      0007C7 8A 82            [24] 2050 	mov	dpl,r2
      0007C9 8B 83            [24] 2051 	mov	dph,r3
      0007CB 8C F0            [24] 2052 	mov	b,r4
      0007CD 12 25 C1         [24] 2053 	lcall	__gptrput
      0007D0 74 01            [12] 2054 	mov	a,#0x01
      0007D2 2A               [12] 2055 	add	a,r2
      0007D3 F5 19            [12] 2056 	mov	_DAP_SWD_Transfer_PARM_2,a
      0007D5 E4               [12] 2057 	clr	a
      0007D6 3B               [12] 2058 	addc	a,r3
      0007D7 F5 1A            [12] 2059 	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
      0007D9 8C 1B            [24] 2060 	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r4
                                   2061 ;	DAP.c:511: *res++ = (uint8_t)datas[1];
      0007DB AD 19            [24] 2062 	mov	r5,_DAP_SWD_Transfer_PARM_2
      0007DD AE 1A            [24] 2063 	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
      0007DF AF 1B            [24] 2064 	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
      0007E1 90 00 06         [24] 2065 	mov	dptr,#(_datas + 0x0001)
      0007E4 E0               [24] 2066 	movx	a,@dptr
      0007E5 8D 82            [24] 2067 	mov	dpl,r5
      0007E7 8E 83            [24] 2068 	mov	dph,r6
      0007E9 8F F0            [24] 2069 	mov	b,r7
      0007EB 12 25 C1         [24] 2070 	lcall	__gptrput
      0007EE 74 01            [12] 2071 	mov	a,#0x01
      0007F0 2D               [12] 2072 	add	a,r5
      0007F1 F5 19            [12] 2073 	mov	_DAP_SWD_Transfer_PARM_2,a
      0007F3 E4               [12] 2074 	clr	a
      0007F4 3E               [12] 2075 	addc	a,r6
      0007F5 F5 1A            [12] 2076 	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
      0007F7 8F 1B            [24] 2077 	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
                                   2078 ;	DAP.c:512: *res++ = (uint8_t)datas[2];
      0007F9 AD 19            [24] 2079 	mov	r5,_DAP_SWD_Transfer_PARM_2
      0007FB AE 1A            [24] 2080 	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
      0007FD AF 1B            [24] 2081 	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
      0007FF 90 00 07         [24] 2082 	mov	dptr,#(_datas + 0x0002)
      000802 E0               [24] 2083 	movx	a,@dptr
      000803 8D 82            [24] 2084 	mov	dpl,r5
      000805 8E 83            [24] 2085 	mov	dph,r6
      000807 8F F0            [24] 2086 	mov	b,r7
      000809 12 25 C1         [24] 2087 	lcall	__gptrput
      00080C 74 01            [12] 2088 	mov	a,#0x01
      00080E 2D               [12] 2089 	add	a,r5
      00080F F5 19            [12] 2090 	mov	_DAP_SWD_Transfer_PARM_2,a
      000811 E4               [12] 2091 	clr	a
      000812 3E               [12] 2092 	addc	a,r6
      000813 F5 1A            [12] 2093 	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
      000815 8F 1B            [24] 2094 	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
                                   2095 ;	DAP.c:513: *res++ = (uint8_t)datas[3];
      000817 AD 19            [24] 2096 	mov	r5,_DAP_SWD_Transfer_PARM_2
      000819 AE 1A            [24] 2097 	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
      00081B AF 1B            [24] 2098 	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
      00081D 90 00 08         [24] 2099 	mov	dptr,#(_datas + 0x0003)
      000820 E0               [24] 2100 	movx	a,@dptr
      000821 FC               [12] 2101 	mov	r4,a
      000822 8D 82            [24] 2102 	mov	dpl,r5
      000824 8E 83            [24] 2103 	mov	dph,r6
      000826 8F F0            [24] 2104 	mov	b,r7
      000828 12 25 C1         [24] 2105 	lcall	__gptrput
      00082B 74 01            [12] 2106 	mov	a,#0x01
      00082D 2D               [12] 2107 	add	a,r5
      00082E F5 19            [12] 2108 	mov	_DAP_SWD_Transfer_PARM_2,a
      000830 E4               [12] 2109 	clr	a
      000831 3E               [12] 2110 	addc	a,r6
      000832 F5 1A            [12] 2111 	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
      000834 8F 1B            [24] 2112 	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
                                   2113 ;	DAP.c:732: return ((uint8_t)(res - response_head));
                                   2114 ;	DAP.c:513: *res++ = (uint8_t)datas[3];
      000836                       2115 00117$:
                                   2116 ;	DAP.c:515: if ((request_value & DAP_TRANSFER_MATCH_VALUE) != 0U)
      000836 78 67            [12] 2117 	mov	r0,#_request_value
      000838 E6               [12] 2118 	mov	a,@r0
      000839 FC               [12] 2119 	mov	r4,a
      00083A 20 E4 03         [24] 2120 	jb	acc.4,00566$
      00083D 02 09 FF         [24] 2121 	ljmp	00169$
      000840                       2122 00566$:
                                   2123 ;	DAP.c:518: match_value[0] = (uint8_t)(*(req + 0));
      000840 85 21 82         [24] 2124 	mov	dpl,_DAP_SWD_Transfer_sloc0_1_0
      000843 85 22 83         [24] 2125 	mov	dph,(_DAP_SWD_Transfer_sloc0_1_0 + 1)
      000846 85 23 F0         [24] 2126 	mov	b,(_DAP_SWD_Transfer_sloc0_1_0 + 2)
      000849 12 25 DC         [24] 2127 	lcall	__gptrget
      00084C FB               [12] 2128 	mov	r3,a
      00084D 78 61            [12] 2129 	mov	r0,#_match_value
      00084F A6 03            [24] 2130 	mov	@r0,ar3
                                   2131 ;	DAP.c:519: match_value[1] = (uint8_t)(*(req + 1));
      000851 74 01            [12] 2132 	mov	a,#0x01
      000853 25 21            [12] 2133 	add	a,_DAP_SWD_Transfer_sloc0_1_0
      000855 FA               [12] 2134 	mov	r2,a
      000856 E4               [12] 2135 	clr	a
      000857 35 22            [12] 2136 	addc	a,(_DAP_SWD_Transfer_sloc0_1_0 + 1)
      000859 FB               [12] 2137 	mov	r3,a
      00085A AF 23            [24] 2138 	mov	r7,(_DAP_SWD_Transfer_sloc0_1_0 + 2)
      00085C 8A 82            [24] 2139 	mov	dpl,r2
      00085E 8B 83            [24] 2140 	mov	dph,r3
      000860 8F F0            [24] 2141 	mov	b,r7
      000862 12 25 DC         [24] 2142 	lcall	__gptrget
      000865 FA               [12] 2143 	mov	r2,a
      000866 78 62            [12] 2144 	mov	r0,#(_match_value + 0x0001)
      000868 A6 02            [24] 2145 	mov	@r0,ar2
                                   2146 ;	DAP.c:520: match_value[2] = (uint8_t)(*(req + 2));
      00086A 74 02            [12] 2147 	mov	a,#0x02
      00086C 25 21            [12] 2148 	add	a,_DAP_SWD_Transfer_sloc0_1_0
      00086E FD               [12] 2149 	mov	r5,a
      00086F E4               [12] 2150 	clr	a
      000870 35 22            [12] 2151 	addc	a,(_DAP_SWD_Transfer_sloc0_1_0 + 1)
      000872 FE               [12] 2152 	mov	r6,a
      000873 AF 23            [24] 2153 	mov	r7,(_DAP_SWD_Transfer_sloc0_1_0 + 2)
      000875 8D 82            [24] 2154 	mov	dpl,r5
      000877 8E 83            [24] 2155 	mov	dph,r6
      000879 8F F0            [24] 2156 	mov	b,r7
      00087B 12 25 DC         [24] 2157 	lcall	__gptrget
      00087E FD               [12] 2158 	mov	r5,a
      00087F 78 63            [12] 2159 	mov	r0,#(_match_value + 0x0002)
      000881 A6 05            [24] 2160 	mov	@r0,ar5
                                   2161 ;	DAP.c:521: match_value[3] = (uint8_t)(*(req + 3));
      000883 74 03            [12] 2162 	mov	a,#0x03
      000885 25 21            [12] 2163 	add	a,_DAP_SWD_Transfer_sloc0_1_0
      000887 FD               [12] 2164 	mov	r5,a
      000888 E4               [12] 2165 	clr	a
      000889 35 22            [12] 2166 	addc	a,(_DAP_SWD_Transfer_sloc0_1_0 + 1)
      00088B FE               [12] 2167 	mov	r6,a
      00088C AF 23            [24] 2168 	mov	r7,(_DAP_SWD_Transfer_sloc0_1_0 + 2)
      00088E 8D 82            [24] 2169 	mov	dpl,r5
      000890 8E 83            [24] 2170 	mov	dph,r6
      000892 8F F0            [24] 2171 	mov	b,r7
      000894 12 25 DC         [24] 2172 	lcall	__gptrget
      000897 FD               [12] 2173 	mov	r5,a
      000898 78 64            [12] 2174 	mov	r0,#(_match_value + 0x0003)
      00089A A6 05            [24] 2175 	mov	@r0,ar5
                                   2176 ;	DAP.c:522: req += 4;
      00089C 74 04            [12] 2177 	mov	a,#0x04
      00089E 25 21            [12] 2178 	add	a,_DAP_SWD_Transfer_sloc0_1_0
      0008A0 F5 21            [12] 2179 	mov	_DAP_SWD_Transfer_sloc0_1_0,a
      0008A2 E4               [12] 2180 	clr	a
      0008A3 35 22            [12] 2181 	addc	a,(_DAP_SWD_Transfer_sloc0_1_0 + 1)
      0008A5 F5 22            [12] 2182 	mov	(_DAP_SWD_Transfer_sloc0_1_0 + 1),a
                                   2183 ;	DAP.c:523: match_retry = match_retry;
                                   2184 ;	DAP.c:524: if ((request_value & DAP_TRANSFER_APnDP) != 0U)
      0008A7 78 67            [12] 2185 	mov	r0,#_request_value
      0008A9 E6               [12] 2186 	mov	a,@r0
      0008AA 30 E0 46         [24] 2187 	jnb	acc.0,00139$
                                   2188 ;	DAP.c:527: retry = retry_count;
      0008AD 78 59            [12] 2189 	mov	r0,#_retry_count
      0008AF 86 06            [24] 2190 	mov	ar6,@r0
      0008B1 08               [12] 2191 	inc	r0
      0008B2 86 07            [24] 2192 	mov	ar7,@r0
      0008B4 78 6A            [12] 2193 	mov	r0,#_retry
      0008B6 A6 06            [24] 2194 	mov	@r0,ar6
      0008B8 08               [12] 2195 	inc	r0
      0008B9 A6 07            [24] 2196 	mov	@r0,ar7
                                   2197 ;	DAP.c:528: do
      0008BB                       2198 00120$:
                                   2199 ;	DAP.c:530: response_value = SWD_Transfer(request_value, NULL);
      0008BB E4               [12] 2200 	clr	a
      0008BC F5 48            [12] 2201 	mov	_SWD_Transfer_PARM_2,a
      0008BE F5 49            [12] 2202 	mov	(_SWD_Transfer_PARM_2 + 1),a
      0008C0 78 67            [12] 2203 	mov	r0,#_request_value
      0008C2 86 82            [24] 2204 	mov	dpl,@r0
      0008C4 12 15 EA         [24] 2205 	lcall	_SWD_Transfer
      0008C7 AF 82            [24] 2206 	mov	r7,dpl
      0008C9 78 69            [12] 2207 	mov	r0,#_response_value
      0008CB A6 07            [24] 2208 	mov	@r0,ar7
                                   2209 ;	DAP.c:532: while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
      0008CD BF 02 1B         [24] 2210 	cjne	r7,#0x02,00122$
      0008D0 78 6A            [12] 2211 	mov	r0,#_retry
      0008D2 86 05            [24] 2212 	mov	ar5,@r0
      0008D4 08               [12] 2213 	inc	r0
      0008D5 86 06            [24] 2214 	mov	ar6,@r0
      0008D7 78 6A            [12] 2215 	mov	r0,#_retry
      0008D9 ED               [12] 2216 	mov	a,r5
      0008DA 24 FF            [12] 2217 	add	a,#0xff
      0008DC F6               [12] 2218 	mov	@r0,a
      0008DD EE               [12] 2219 	mov	a,r6
      0008DE 34 FF            [12] 2220 	addc	a,#0xff
      0008E0 08               [12] 2221 	inc	r0
      0008E1 F6               [12] 2222 	mov	@r0,a
      0008E2 ED               [12] 2223 	mov	a,r5
      0008E3 4E               [12] 2224 	orl	a,r6
      0008E4 60 05            [24] 2225 	jz	00122$
      0008E6 78 65            [12] 2226 	mov	r0,#_DAP_TransferAbort
      0008E8 E6               [12] 2227 	mov	a,@r0
      0008E9 60 D0            [24] 2228 	jz	00120$
      0008EB                       2229 00122$:
                                   2230 ;	DAP.c:533: if (response_value != DAP_TRANSFER_OK)
      0008EB BF 01 02         [24] 2231 	cjne	r7,#0x01,00572$
      0008EE 80 03            [24] 2232 	sjmp	00573$
      0008F0                       2233 00572$:
      0008F0 02 0C C2         [24] 2234 	ljmp	00226$
      0008F3                       2235 00573$:
                                   2236 ;	DAP.c:538: do
      0008F3                       2237 00139$:
                                   2238 ;	DAP.c:541: retry = retry_count;
      0008F3 78 59            [12] 2239 	mov	r0,#_retry_count
      0008F5 86 06            [24] 2240 	mov	ar6,@r0
      0008F7 08               [12] 2241 	inc	r0
      0008F8 86 07            [24] 2242 	mov	ar7,@r0
      0008FA 78 6A            [12] 2243 	mov	r0,#_retry
      0008FC A6 06            [24] 2244 	mov	@r0,ar6
      0008FE 08               [12] 2245 	inc	r0
      0008FF A6 07            [24] 2246 	mov	@r0,ar7
                                   2247 ;	DAP.c:542: do
      000901                       2248 00129$:
                                   2249 ;	DAP.c:544: response_value = SWD_Transfer(request_value, datas);
      000901 75 48 05         [24] 2250 	mov	_SWD_Transfer_PARM_2,#_datas
      000904 75 49 00         [24] 2251 	mov	(_SWD_Transfer_PARM_2 + 1),#(_datas >> 8)
      000907 78 67            [12] 2252 	mov	r0,#_request_value
      000909 86 82            [24] 2253 	mov	dpl,@r0
      00090B 12 15 EA         [24] 2254 	lcall	_SWD_Transfer
      00090E AF 82            [24] 2255 	mov	r7,dpl
      000910 78 69            [12] 2256 	mov	r0,#_response_value
      000912 A6 07            [24] 2257 	mov	@r0,ar7
                                   2258 ;	DAP.c:546: while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
      000914 BF 02 1B         [24] 2259 	cjne	r7,#0x02,00131$
      000917 78 6A            [12] 2260 	mov	r0,#_retry
      000919 86 06            [24] 2261 	mov	ar6,@r0
      00091B 08               [12] 2262 	inc	r0
      00091C 86 07            [24] 2263 	mov	ar7,@r0
      00091E 78 6A            [12] 2264 	mov	r0,#_retry
      000920 EE               [12] 2265 	mov	a,r6
      000921 24 FF            [12] 2266 	add	a,#0xff
      000923 F6               [12] 2267 	mov	@r0,a
      000924 EF               [12] 2268 	mov	a,r7
      000925 34 FF            [12] 2269 	addc	a,#0xff
      000927 08               [12] 2270 	inc	r0
      000928 F6               [12] 2271 	mov	@r0,a
      000929 EE               [12] 2272 	mov	a,r6
      00092A 4F               [12] 2273 	orl	a,r7
      00092B 60 05            [24] 2274 	jz	00131$
      00092D 78 65            [12] 2275 	mov	r0,#_DAP_TransferAbort
      00092F E6               [12] 2276 	mov	a,@r0
      000930 60 CF            [24] 2277 	jz	00129$
      000932                       2278 00131$:
                                   2279 ;	DAP.c:547: if (response_value != DAP_TRANSFER_OK)
      000932 78 69            [12] 2280 	mov	r0,#_response_value
      000934 B6 01 02         [24] 2281 	cjne	@r0,#0x01,00578$
      000937 80 03            [24] 2282 	sjmp	00579$
      000939                       2283 00578$:
      000939 02 09 A4         [24] 2284 	ljmp	00141$
      00093C                       2285 00579$:
                                   2286 ;	DAP.c:552: while (((datas[0] & match_mask[0]) != match_value[0] ||
      00093C 90 00 05         [24] 2287 	mov	dptr,#_datas
      00093F E0               [24] 2288 	movx	a,@dptr
      000940 FF               [12] 2289 	mov	r7,a
      000941 78 5D            [12] 2290 	mov	r0,#_match_mask
      000943 E6               [12] 2291 	mov	a,@r0
      000944 52 07            [12] 2292 	anl	ar7,a
      000946 78 61            [12] 2293 	mov	r0,#_match_value
      000948 86 06            [24] 2294 	mov	ar6,@r0
      00094A EF               [12] 2295 	mov	a,r7
      00094B B5 06 38         [24] 2296 	cjne	a,ar6,00137$
                                   2297 ;	DAP.c:553: (datas[1] & match_mask[1]) != match_value[1] ||
      00094E 90 00 06         [24] 2298 	mov	dptr,#(_datas + 0x0001)
      000951 E0               [24] 2299 	movx	a,@dptr
      000952 FF               [12] 2300 	mov	r7,a
      000953 78 5E            [12] 2301 	mov	r0,#(_match_mask + 0x0001)
      000955 E6               [12] 2302 	mov	a,@r0
      000956 52 07            [12] 2303 	anl	ar7,a
      000958 78 62            [12] 2304 	mov	r0,#(_match_value + 0x0001)
      00095A 86 06            [24] 2305 	mov	ar6,@r0
      00095C EF               [12] 2306 	mov	a,r7
      00095D B5 06 26         [24] 2307 	cjne	a,ar6,00137$
                                   2308 ;	DAP.c:554: (datas[2] & match_mask[2]) != match_value[2] ||
      000960 90 00 07         [24] 2309 	mov	dptr,#(_datas + 0x0002)
      000963 E0               [24] 2310 	movx	a,@dptr
      000964 FF               [12] 2311 	mov	r7,a
      000965 78 5F            [12] 2312 	mov	r0,#(_match_mask + 0x0002)
      000967 E6               [12] 2313 	mov	a,@r0
      000968 52 07            [12] 2314 	anl	ar7,a
      00096A 78 63            [12] 2315 	mov	r0,#(_match_value + 0x0002)
      00096C 86 06            [24] 2316 	mov	ar6,@r0
      00096E EF               [12] 2317 	mov	a,r7
      00096F B5 06 14         [24] 2318 	cjne	a,ar6,00137$
                                   2319 ;	DAP.c:555: (datas[3] & match_mask[3]) != match_value[3]) &&
      000972 90 00 08         [24] 2320 	mov	dptr,#(_datas + 0x0003)
      000975 E0               [24] 2321 	movx	a,@dptr
      000976 FF               [12] 2322 	mov	r7,a
      000977 78 60            [12] 2323 	mov	r0,#(_match_mask + 0x0003)
      000979 E6               [12] 2324 	mov	a,@r0
      00097A 52 07            [12] 2325 	anl	ar7,a
      00097C 78 64            [12] 2326 	mov	r0,#(_match_value + 0x0003)
      00097E 86 06            [24] 2327 	mov	ar6,@r0
      000980 EF               [12] 2328 	mov	a,r7
      000981 B5 06 02         [24] 2329 	cjne	a,ar6,00586$
      000984 80 1E            [24] 2330 	sjmp	00141$
      000986                       2331 00586$:
      000986                       2332 00137$:
                                   2333 ;	DAP.c:556: match_retry-- && !DAP_TransferAbort);
      000986 78 5B            [12] 2334 	mov	r0,#_match_retry
      000988 86 06            [24] 2335 	mov	ar6,@r0
      00098A 08               [12] 2336 	inc	r0
      00098B 86 07            [24] 2337 	mov	ar7,@r0
      00098D 78 5B            [12] 2338 	mov	r0,#_match_retry
      00098F EE               [12] 2339 	mov	a,r6
      000990 24 FF            [12] 2340 	add	a,#0xff
      000992 F6               [12] 2341 	mov	@r0,a
      000993 EF               [12] 2342 	mov	a,r7
      000994 34 FF            [12] 2343 	addc	a,#0xff
      000996 08               [12] 2344 	inc	r0
      000997 F6               [12] 2345 	mov	@r0,a
      000998 EE               [12] 2346 	mov	a,r6
      000999 4F               [12] 2347 	orl	a,r7
      00099A 60 08            [24] 2348 	jz	00141$
      00099C 78 65            [12] 2349 	mov	r0,#_DAP_TransferAbort
      00099E E6               [12] 2350 	mov	a,@r0
      00099F 70 03            [24] 2351 	jnz	00588$
      0009A1 02 08 F3         [24] 2352 	ljmp	00139$
      0009A4                       2353 00588$:
      0009A4                       2354 00141$:
                                   2355 ;	DAP.c:557: if ((datas[0] & match_mask[0]) != match_value[0] ||
      0009A4 90 00 05         [24] 2356 	mov	dptr,#_datas
      0009A7 E0               [24] 2357 	movx	a,@dptr
      0009A8 FF               [12] 2358 	mov	r7,a
      0009A9 78 5D            [12] 2359 	mov	r0,#_match_mask
      0009AB E6               [12] 2360 	mov	a,@r0
      0009AC 52 07            [12] 2361 	anl	ar7,a
      0009AE 78 61            [12] 2362 	mov	r0,#_match_value
      0009B0 86 06            [24] 2363 	mov	ar6,@r0
      0009B2 EF               [12] 2364 	mov	a,r7
      0009B3 B5 06 38         [24] 2365 	cjne	a,ar6,00142$
                                   2366 ;	DAP.c:558: (datas[1] & match_mask[1]) != match_value[1] ||
      0009B6 90 00 06         [24] 2367 	mov	dptr,#(_datas + 0x0001)
      0009B9 E0               [24] 2368 	movx	a,@dptr
      0009BA FF               [12] 2369 	mov	r7,a
      0009BB 78 5E            [12] 2370 	mov	r0,#(_match_mask + 0x0001)
      0009BD E6               [12] 2371 	mov	a,@r0
      0009BE 52 07            [12] 2372 	anl	ar7,a
      0009C0 78 62            [12] 2373 	mov	r0,#(_match_value + 0x0001)
      0009C2 86 06            [24] 2374 	mov	ar6,@r0
      0009C4 EF               [12] 2375 	mov	a,r7
      0009C5 B5 06 26         [24] 2376 	cjne	a,ar6,00142$
                                   2377 ;	DAP.c:559: (datas[2] & match_mask[2]) != match_value[2] ||
      0009C8 90 00 07         [24] 2378 	mov	dptr,#(_datas + 0x0002)
      0009CB E0               [24] 2379 	movx	a,@dptr
      0009CC FF               [12] 2380 	mov	r7,a
      0009CD 78 5F            [12] 2381 	mov	r0,#(_match_mask + 0x0002)
      0009CF E6               [12] 2382 	mov	a,@r0
      0009D0 52 07            [12] 2383 	anl	ar7,a
      0009D2 78 63            [12] 2384 	mov	r0,#(_match_value + 0x0002)
      0009D4 86 06            [24] 2385 	mov	ar6,@r0
      0009D6 EF               [12] 2386 	mov	a,r7
      0009D7 B5 06 14         [24] 2387 	cjne	a,ar6,00142$
                                   2388 ;	DAP.c:560: (datas[3] & match_mask[3]) != match_value[3])
      0009DA 90 00 08         [24] 2389 	mov	dptr,#(_datas + 0x0003)
      0009DD E0               [24] 2390 	movx	a,@dptr
      0009DE FF               [12] 2391 	mov	r7,a
      0009DF 78 60            [12] 2392 	mov	r0,#(_match_mask + 0x0003)
      0009E1 E6               [12] 2393 	mov	a,@r0
      0009E2 52 07            [12] 2394 	anl	ar7,a
      0009E4 78 64            [12] 2395 	mov	r0,#(_match_value + 0x0003)
      0009E6 86 06            [24] 2396 	mov	ar6,@r0
      0009E8 EF               [12] 2397 	mov	a,r7
      0009E9 B5 06 02         [24] 2398 	cjne	a,ar6,00595$
      0009EC 80 06            [24] 2399 	sjmp	00143$
      0009EE                       2400 00595$:
      0009EE                       2401 00142$:
                                   2402 ;	DAP.c:562: response_value |= DAP_TRANSFER_MISMATCH;
      0009EE 78 69            [12] 2403 	mov	r0,#_response_value
      0009F0 E6               [12] 2404 	mov	a,@r0
      0009F1 44 10            [12] 2405 	orl	a,#0x10
      0009F3 F6               [12] 2406 	mov	@r0,a
      0009F4                       2407 00143$:
                                   2408 ;	DAP.c:564: if (response_value != DAP_TRANSFER_OK)
      0009F4 78 69            [12] 2409 	mov	r0,#_response_value
      0009F6 B6 01 03         [24] 2410 	cjne	@r0,#0x01,00596$
      0009F9 02 0B 0A         [24] 2411 	ljmp	00170$
      0009FC                       2412 00596$:
                                   2413 ;	DAP.c:566: break;
      0009FC 02 0C C2         [24] 2414 	ljmp	00226$
      0009FF                       2415 00169$:
                                   2416 ;	DAP.c:572: retry = retry_count;
      0009FF 78 59            [12] 2417 	mov	r0,#_retry_count
      000A01 86 06            [24] 2418 	mov	ar6,@r0
      000A03 08               [12] 2419 	inc	r0
      000A04 86 07            [24] 2420 	mov	ar7,@r0
      000A06 78 6A            [12] 2421 	mov	r0,#_retry
      000A08 A6 06            [24] 2422 	mov	@r0,ar6
      000A0A 08               [12] 2423 	inc	r0
      000A0B A6 07            [24] 2424 	mov	@r0,ar7
                                   2425 ;	DAP.c:573: if ((request_value & DAP_TRANSFER_APnDP) != 0U)
      000A0D EC               [12] 2426 	mov	a,r4
      000A0E 30 E0 45         [24] 2427 	jnb	acc.0,00160$
                                   2428 ;	DAP.c:576: if (post_read == 0U)
      000A11 E5 1F            [12] 2429 	mov	a,_DAP_SWD_Transfer_post_read_65536_95
      000A13 60 03            [24] 2430 	jz	00598$
      000A15 02 0B 0A         [24] 2431 	ljmp	00170$
      000A18                       2432 00598$:
                                   2433 ;	DAP.c:579: do
      000A18                       2434 00151$:
                                   2435 ;	DAP.c:581: response_value = SWD_Transfer(request_value, NULL);
      000A18 E4               [12] 2436 	clr	a
      000A19 F5 48            [12] 2437 	mov	_SWD_Transfer_PARM_2,a
      000A1B F5 49            [12] 2438 	mov	(_SWD_Transfer_PARM_2 + 1),a
      000A1D 78 67            [12] 2439 	mov	r0,#_request_value
      000A1F 86 82            [24] 2440 	mov	dpl,@r0
      000A21 12 15 EA         [24] 2441 	lcall	_SWD_Transfer
      000A24 AF 82            [24] 2442 	mov	r7,dpl
      000A26 78 69            [12] 2443 	mov	r0,#_response_value
      000A28 A6 07            [24] 2444 	mov	@r0,ar7
                                   2445 ;	DAP.c:583: while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
      000A2A BF 02 1B         [24] 2446 	cjne	r7,#0x02,00153$
      000A2D 78 6A            [12] 2447 	mov	r0,#_retry
      000A2F 86 05            [24] 2448 	mov	ar5,@r0
      000A31 08               [12] 2449 	inc	r0
      000A32 86 06            [24] 2450 	mov	ar6,@r0
      000A34 78 6A            [12] 2451 	mov	r0,#_retry
      000A36 ED               [12] 2452 	mov	a,r5
      000A37 24 FF            [12] 2453 	add	a,#0xff
      000A39 F6               [12] 2454 	mov	@r0,a
      000A3A EE               [12] 2455 	mov	a,r6
      000A3B 34 FF            [12] 2456 	addc	a,#0xff
      000A3D 08               [12] 2457 	inc	r0
      000A3E F6               [12] 2458 	mov	@r0,a
      000A3F ED               [12] 2459 	mov	a,r5
      000A40 4E               [12] 2460 	orl	a,r6
      000A41 60 05            [24] 2461 	jz	00153$
      000A43 78 65            [12] 2462 	mov	r0,#_DAP_TransferAbort
      000A45 E6               [12] 2463 	mov	a,@r0
      000A46 60 D0            [24] 2464 	jz	00151$
      000A48                       2465 00153$:
                                   2466 ;	DAP.c:584: if (response_value != DAP_TRANSFER_OK)
      000A48 BF 01 02         [24] 2467 	cjne	r7,#0x01,00603$
      000A4B 80 03            [24] 2468 	sjmp	00604$
      000A4D                       2469 00603$:
      000A4D 02 0C C2         [24] 2470 	ljmp	00226$
      000A50                       2471 00604$:
                                   2472 ;	DAP.c:588: post_read = 1U;
      000A50 75 1F 01         [24] 2473 	mov	_DAP_SWD_Transfer_post_read_65536_95,#0x01
      000A53 02 0B 0A         [24] 2474 	ljmp	00170$
                                   2475 ;	DAP.c:594: do
      000A56                       2476 00160$:
                                   2477 ;	DAP.c:596: response_value = SWD_Transfer(request_value, datas);
      000A56 75 48 05         [24] 2478 	mov	_SWD_Transfer_PARM_2,#_datas
      000A59 75 49 00         [24] 2479 	mov	(_SWD_Transfer_PARM_2 + 1),#(_datas >> 8)
      000A5C 78 67            [12] 2480 	mov	r0,#_request_value
      000A5E 86 82            [24] 2481 	mov	dpl,@r0
      000A60 12 15 EA         [24] 2482 	lcall	_SWD_Transfer
      000A63 AF 82            [24] 2483 	mov	r7,dpl
      000A65 78 69            [12] 2484 	mov	r0,#_response_value
      000A67 A6 07            [24] 2485 	mov	@r0,ar7
                                   2486 ;	DAP.c:598: while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
      000A69 BF 02 1B         [24] 2487 	cjne	r7,#0x02,00162$
      000A6C 78 6A            [12] 2488 	mov	r0,#_retry
      000A6E 86 06            [24] 2489 	mov	ar6,@r0
      000A70 08               [12] 2490 	inc	r0
      000A71 86 07            [24] 2491 	mov	ar7,@r0
      000A73 78 6A            [12] 2492 	mov	r0,#_retry
      000A75 EE               [12] 2493 	mov	a,r6
      000A76 24 FF            [12] 2494 	add	a,#0xff
      000A78 F6               [12] 2495 	mov	@r0,a
      000A79 EF               [12] 2496 	mov	a,r7
      000A7A 34 FF            [12] 2497 	addc	a,#0xff
      000A7C 08               [12] 2498 	inc	r0
      000A7D F6               [12] 2499 	mov	@r0,a
      000A7E EE               [12] 2500 	mov	a,r6
      000A7F 4F               [12] 2501 	orl	a,r7
      000A80 60 05            [24] 2502 	jz	00162$
      000A82 78 65            [12] 2503 	mov	r0,#_DAP_TransferAbort
      000A84 E6               [12] 2504 	mov	a,@r0
      000A85 60 CF            [24] 2505 	jz	00160$
      000A87                       2506 00162$:
                                   2507 ;	DAP.c:599: if (response_value != DAP_TRANSFER_OK)
      000A87 78 69            [12] 2508 	mov	r0,#_response_value
      000A89 B6 01 02         [24] 2509 	cjne	@r0,#0x01,00609$
      000A8C 80 03            [24] 2510 	sjmp	00610$
      000A8E                       2511 00609$:
      000A8E 02 0C C2         [24] 2512 	ljmp	00226$
      000A91                       2513 00610$:
                                   2514 ;	DAP.c:605: *res++ = datas[0];
      000A91 AD 19            [24] 2515 	mov	r5,_DAP_SWD_Transfer_PARM_2
      000A93 AE 1A            [24] 2516 	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
      000A95 AF 1B            [24] 2517 	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
      000A97 90 00 05         [24] 2518 	mov	dptr,#_datas
      000A9A E0               [24] 2519 	movx	a,@dptr
      000A9B 8D 82            [24] 2520 	mov	dpl,r5
      000A9D 8E 83            [24] 2521 	mov	dph,r6
      000A9F 8F F0            [24] 2522 	mov	b,r7
      000AA1 12 25 C1         [24] 2523 	lcall	__gptrput
      000AA4 74 01            [12] 2524 	mov	a,#0x01
      000AA6 2D               [12] 2525 	add	a,r5
      000AA7 F5 19            [12] 2526 	mov	_DAP_SWD_Transfer_PARM_2,a
      000AA9 E4               [12] 2527 	clr	a
      000AAA 3E               [12] 2528 	addc	a,r6
      000AAB F5 1A            [12] 2529 	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
      000AAD 8F 1B            [24] 2530 	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
                                   2531 ;	DAP.c:606: *res++ = datas[1];
      000AAF AD 19            [24] 2532 	mov	r5,_DAP_SWD_Transfer_PARM_2
      000AB1 AE 1A            [24] 2533 	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
      000AB3 AF 1B            [24] 2534 	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
      000AB5 90 00 06         [24] 2535 	mov	dptr,#(_datas + 0x0001)
      000AB8 E0               [24] 2536 	movx	a,@dptr
      000AB9 8D 82            [24] 2537 	mov	dpl,r5
      000ABB 8E 83            [24] 2538 	mov	dph,r6
      000ABD 8F F0            [24] 2539 	mov	b,r7
      000ABF 12 25 C1         [24] 2540 	lcall	__gptrput
      000AC2 74 01            [12] 2541 	mov	a,#0x01
      000AC4 2D               [12] 2542 	add	a,r5
      000AC5 F5 19            [12] 2543 	mov	_DAP_SWD_Transfer_PARM_2,a
      000AC7 E4               [12] 2544 	clr	a
      000AC8 3E               [12] 2545 	addc	a,r6
      000AC9 F5 1A            [12] 2546 	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
      000ACB 8F 1B            [24] 2547 	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
                                   2548 ;	DAP.c:607: *res++ = datas[2];
      000ACD AD 19            [24] 2549 	mov	r5,_DAP_SWD_Transfer_PARM_2
      000ACF AE 1A            [24] 2550 	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
      000AD1 AF 1B            [24] 2551 	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
      000AD3 90 00 07         [24] 2552 	mov	dptr,#(_datas + 0x0002)
      000AD6 E0               [24] 2553 	movx	a,@dptr
      000AD7 8D 82            [24] 2554 	mov	dpl,r5
      000AD9 8E 83            [24] 2555 	mov	dph,r6
      000ADB 8F F0            [24] 2556 	mov	b,r7
      000ADD 12 25 C1         [24] 2557 	lcall	__gptrput
      000AE0 74 01            [12] 2558 	mov	a,#0x01
      000AE2 2D               [12] 2559 	add	a,r5
      000AE3 F5 19            [12] 2560 	mov	_DAP_SWD_Transfer_PARM_2,a
      000AE5 E4               [12] 2561 	clr	a
      000AE6 3E               [12] 2562 	addc	a,r6
      000AE7 F5 1A            [12] 2563 	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
      000AE9 8F 1B            [24] 2564 	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
                                   2565 ;	DAP.c:608: *res++ = datas[3];
      000AEB AD 19            [24] 2566 	mov	r5,_DAP_SWD_Transfer_PARM_2
      000AED AE 1A            [24] 2567 	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
      000AEF AF 1B            [24] 2568 	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
      000AF1 90 00 08         [24] 2569 	mov	dptr,#(_datas + 0x0003)
      000AF4 E0               [24] 2570 	movx	a,@dptr
      000AF5 FC               [12] 2571 	mov	r4,a
      000AF6 8D 82            [24] 2572 	mov	dpl,r5
      000AF8 8E 83            [24] 2573 	mov	dph,r6
      000AFA 8F F0            [24] 2574 	mov	b,r7
      000AFC 12 25 C1         [24] 2575 	lcall	__gptrput
      000AFF 74 01            [12] 2576 	mov	a,#0x01
      000B01 2D               [12] 2577 	add	a,r5
      000B02 F5 19            [12] 2578 	mov	_DAP_SWD_Transfer_PARM_2,a
      000B04 E4               [12] 2579 	clr	a
      000B05 3E               [12] 2580 	addc	a,r6
      000B06 F5 1A            [12] 2581 	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
      000B08 8F 1B            [24] 2582 	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
      000B0A                       2583 00170$:
                                   2584 ;	DAP.c:611: check_write = 0U;
      000B0A 75 20 00         [24] 2585 	mov	_DAP_SWD_Transfer_check_write_65536_95,#0x00
      000B0D 02 0C B4         [24] 2586 	ljmp	00192$
      000B10                       2587 00191$:
                                   2588 ;	DAP.c:616: if (post_read)
      000B10 E5 1F            [12] 2589 	mov	a,_DAP_SWD_Transfer_post_read_65536_95
      000B12 70 03            [24] 2590 	jnz	00611$
      000B14 02 0B DB         [24] 2591 	ljmp	00179$
      000B17                       2592 00611$:
                                   2593 ;	DAP.c:619: retry = retry_count;
      000B17 78 59            [12] 2594 	mov	r0,#_retry_count
      000B19 86 06            [24] 2595 	mov	ar6,@r0
      000B1B 08               [12] 2596 	inc	r0
      000B1C 86 07            [24] 2597 	mov	ar7,@r0
      000B1E 78 6A            [12] 2598 	mov	r0,#_retry
      000B20 A6 06            [24] 2599 	mov	@r0,ar6
      000B22 08               [12] 2600 	inc	r0
      000B23 A6 07            [24] 2601 	mov	@r0,ar7
                                   2602 ;	DAP.c:620: do
      000B25                       2603 00173$:
                                   2604 ;	DAP.c:622: response_value = SWD_Transfer(DP_RDBUFF | DAP_TRANSFER_RnW, datas);
      000B25 75 48 05         [24] 2605 	mov	_SWD_Transfer_PARM_2,#_datas
      000B28 75 49 00         [24] 2606 	mov	(_SWD_Transfer_PARM_2 + 1),#(_datas >> 8)
      000B2B 75 82 0E         [24] 2607 	mov	dpl,#0x0e
      000B2E 12 15 EA         [24] 2608 	lcall	_SWD_Transfer
      000B31 AF 82            [24] 2609 	mov	r7,dpl
      000B33 78 69            [12] 2610 	mov	r0,#_response_value
      000B35 A6 07            [24] 2611 	mov	@r0,ar7
                                   2612 ;	DAP.c:624: while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
      000B37 BF 02 1B         [24] 2613 	cjne	r7,#0x02,00175$
      000B3A 78 6A            [12] 2614 	mov	r0,#_retry
      000B3C 86 06            [24] 2615 	mov	ar6,@r0
      000B3E 08               [12] 2616 	inc	r0
      000B3F 86 07            [24] 2617 	mov	ar7,@r0
      000B41 78 6A            [12] 2618 	mov	r0,#_retry
      000B43 EE               [12] 2619 	mov	a,r6
      000B44 24 FF            [12] 2620 	add	a,#0xff
      000B46 F6               [12] 2621 	mov	@r0,a
      000B47 EF               [12] 2622 	mov	a,r7
      000B48 34 FF            [12] 2623 	addc	a,#0xff
      000B4A 08               [12] 2624 	inc	r0
      000B4B F6               [12] 2625 	mov	@r0,a
      000B4C EE               [12] 2626 	mov	a,r6
      000B4D 4F               [12] 2627 	orl	a,r7
      000B4E 60 05            [24] 2628 	jz	00175$
      000B50 78 65            [12] 2629 	mov	r0,#_DAP_TransferAbort
      000B52 E6               [12] 2630 	mov	a,@r0
      000B53 60 D0            [24] 2631 	jz	00173$
      000B55                       2632 00175$:
                                   2633 ;	DAP.c:625: if (response_value != DAP_TRANSFER_OK)
      000B55 78 69            [12] 2634 	mov	r0,#_response_value
      000B57 B6 01 02         [24] 2635 	cjne	@r0,#0x01,00616$
      000B5A 80 03            [24] 2636 	sjmp	00617$
      000B5C                       2637 00616$:
      000B5C 02 0C C2         [24] 2638 	ljmp	00226$
      000B5F                       2639 00617$:
                                   2640 ;	DAP.c:630: *res++ = datas[0];
      000B5F AD 19            [24] 2641 	mov	r5,_DAP_SWD_Transfer_PARM_2
      000B61 AE 1A            [24] 2642 	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
      000B63 AF 1B            [24] 2643 	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
      000B65 90 00 05         [24] 2644 	mov	dptr,#_datas
      000B68 E0               [24] 2645 	movx	a,@dptr
      000B69 8D 82            [24] 2646 	mov	dpl,r5
      000B6B 8E 83            [24] 2647 	mov	dph,r6
      000B6D 8F F0            [24] 2648 	mov	b,r7
      000B6F 12 25 C1         [24] 2649 	lcall	__gptrput
      000B72 74 01            [12] 2650 	mov	a,#0x01
      000B74 2D               [12] 2651 	add	a,r5
      000B75 F5 19            [12] 2652 	mov	_DAP_SWD_Transfer_PARM_2,a
      000B77 E4               [12] 2653 	clr	a
      000B78 3E               [12] 2654 	addc	a,r6
      000B79 F5 1A            [12] 2655 	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
      000B7B 8F 1B            [24] 2656 	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
                                   2657 ;	DAP.c:631: *res++ = datas[1];
      000B7D AD 19            [24] 2658 	mov	r5,_DAP_SWD_Transfer_PARM_2
      000B7F AE 1A            [24] 2659 	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
      000B81 AF 1B            [24] 2660 	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
      000B83 90 00 06         [24] 2661 	mov	dptr,#(_datas + 0x0001)
      000B86 E0               [24] 2662 	movx	a,@dptr
      000B87 8D 82            [24] 2663 	mov	dpl,r5
      000B89 8E 83            [24] 2664 	mov	dph,r6
      000B8B 8F F0            [24] 2665 	mov	b,r7
      000B8D 12 25 C1         [24] 2666 	lcall	__gptrput
      000B90 74 01            [12] 2667 	mov	a,#0x01
      000B92 2D               [12] 2668 	add	a,r5
      000B93 F5 19            [12] 2669 	mov	_DAP_SWD_Transfer_PARM_2,a
      000B95 E4               [12] 2670 	clr	a
      000B96 3E               [12] 2671 	addc	a,r6
      000B97 F5 1A            [12] 2672 	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
      000B99 8F 1B            [24] 2673 	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
                                   2674 ;	DAP.c:632: *res++ = datas[2];
      000B9B AD 19            [24] 2675 	mov	r5,_DAP_SWD_Transfer_PARM_2
      000B9D AE 1A            [24] 2676 	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
      000B9F AF 1B            [24] 2677 	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
      000BA1 90 00 07         [24] 2678 	mov	dptr,#(_datas + 0x0002)
      000BA4 E0               [24] 2679 	movx	a,@dptr
      000BA5 8D 82            [24] 2680 	mov	dpl,r5
      000BA7 8E 83            [24] 2681 	mov	dph,r6
      000BA9 8F F0            [24] 2682 	mov	b,r7
      000BAB 12 25 C1         [24] 2683 	lcall	__gptrput
      000BAE 74 01            [12] 2684 	mov	a,#0x01
      000BB0 2D               [12] 2685 	add	a,r5
      000BB1 F5 19            [12] 2686 	mov	_DAP_SWD_Transfer_PARM_2,a
      000BB3 E4               [12] 2687 	clr	a
      000BB4 3E               [12] 2688 	addc	a,r6
      000BB5 F5 1A            [12] 2689 	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
      000BB7 8F 1B            [24] 2690 	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
                                   2691 ;	DAP.c:633: *res++ = datas[3];
      000BB9 AD 19            [24] 2692 	mov	r5,_DAP_SWD_Transfer_PARM_2
      000BBB AE 1A            [24] 2693 	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
      000BBD AF 1B            [24] 2694 	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
      000BBF 90 00 08         [24] 2695 	mov	dptr,#(_datas + 0x0003)
      000BC2 E0               [24] 2696 	movx	a,@dptr
      000BC3 FC               [12] 2697 	mov	r4,a
      000BC4 8D 82            [24] 2698 	mov	dpl,r5
      000BC6 8E 83            [24] 2699 	mov	dph,r6
      000BC8 8F F0            [24] 2700 	mov	b,r7
      000BCA 12 25 C1         [24] 2701 	lcall	__gptrput
      000BCD 74 01            [12] 2702 	mov	a,#0x01
      000BCF 2D               [12] 2703 	add	a,r5
      000BD0 F5 19            [12] 2704 	mov	_DAP_SWD_Transfer_PARM_2,a
      000BD2 E4               [12] 2705 	clr	a
      000BD3 3E               [12] 2706 	addc	a,r6
      000BD4 F5 1A            [12] 2707 	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
      000BD6 8F 1B            [24] 2708 	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
                                   2709 ;	DAP.c:634: post_read = 0U;
      000BD8 75 1F 00         [24] 2710 	mov	_DAP_SWD_Transfer_post_read_65536_95,#0x00
      000BDB                       2711 00179$:
                                   2712 ;	DAP.c:637: datas[0] = (uint8_t)(*(req + 0));
      000BDB 85 21 82         [24] 2713 	mov	dpl,_DAP_SWD_Transfer_sloc0_1_0
      000BDE 85 22 83         [24] 2714 	mov	dph,(_DAP_SWD_Transfer_sloc0_1_0 + 1)
      000BE1 85 23 F0         [24] 2715 	mov	b,(_DAP_SWD_Transfer_sloc0_1_0 + 2)
      000BE4 12 25 DC         [24] 2716 	lcall	__gptrget
      000BE7 90 00 05         [24] 2717 	mov	dptr,#_datas
      000BEA F0               [24] 2718 	movx	@dptr,a
                                   2719 ;	DAP.c:638: datas[1] = (uint8_t)(*(req + 1));
      000BEB 74 01            [12] 2720 	mov	a,#0x01
      000BED 25 21            [12] 2721 	add	a,_DAP_SWD_Transfer_sloc0_1_0
      000BEF FD               [12] 2722 	mov	r5,a
      000BF0 E4               [12] 2723 	clr	a
      000BF1 35 22            [12] 2724 	addc	a,(_DAP_SWD_Transfer_sloc0_1_0 + 1)
      000BF3 FE               [12] 2725 	mov	r6,a
      000BF4 AF 23            [24] 2726 	mov	r7,(_DAP_SWD_Transfer_sloc0_1_0 + 2)
      000BF6 8D 82            [24] 2727 	mov	dpl,r5
      000BF8 8E 83            [24] 2728 	mov	dph,r6
      000BFA 8F F0            [24] 2729 	mov	b,r7
      000BFC 12 25 DC         [24] 2730 	lcall	__gptrget
      000BFF 90 00 06         [24] 2731 	mov	dptr,#(_datas + 0x0001)
      000C02 F0               [24] 2732 	movx	@dptr,a
                                   2733 ;	DAP.c:639: datas[2] = (uint8_t)(*(req + 2));
      000C03 74 02            [12] 2734 	mov	a,#0x02
      000C05 25 21            [12] 2735 	add	a,_DAP_SWD_Transfer_sloc0_1_0
      000C07 FD               [12] 2736 	mov	r5,a
      000C08 E4               [12] 2737 	clr	a
      000C09 35 22            [12] 2738 	addc	a,(_DAP_SWD_Transfer_sloc0_1_0 + 1)
      000C0B FE               [12] 2739 	mov	r6,a
      000C0C AF 23            [24] 2740 	mov	r7,(_DAP_SWD_Transfer_sloc0_1_0 + 2)
      000C0E 8D 82            [24] 2741 	mov	dpl,r5
      000C10 8E 83            [24] 2742 	mov	dph,r6
      000C12 8F F0            [24] 2743 	mov	b,r7
      000C14 12 25 DC         [24] 2744 	lcall	__gptrget
      000C17 90 00 07         [24] 2745 	mov	dptr,#(_datas + 0x0002)
      000C1A F0               [24] 2746 	movx	@dptr,a
                                   2747 ;	DAP.c:640: datas[3] = (uint8_t)(*(req + 3));
      000C1B 74 03            [12] 2748 	mov	a,#0x03
      000C1D 25 21            [12] 2749 	add	a,_DAP_SWD_Transfer_sloc0_1_0
      000C1F FD               [12] 2750 	mov	r5,a
      000C20 E4               [12] 2751 	clr	a
      000C21 35 22            [12] 2752 	addc	a,(_DAP_SWD_Transfer_sloc0_1_0 + 1)
      000C23 FE               [12] 2753 	mov	r6,a
      000C24 AF 23            [24] 2754 	mov	r7,(_DAP_SWD_Transfer_sloc0_1_0 + 2)
      000C26 8D 82            [24] 2755 	mov	dpl,r5
      000C28 8E 83            [24] 2756 	mov	dph,r6
      000C2A 8F F0            [24] 2757 	mov	b,r7
      000C2C 12 25 DC         [24] 2758 	lcall	__gptrget
      000C2F FD               [12] 2759 	mov	r5,a
      000C30 90 00 08         [24] 2760 	mov	dptr,#(_datas + 0x0003)
      000C33 F0               [24] 2761 	movx	@dptr,a
                                   2762 ;	DAP.c:641: req += 4;
      000C34 74 04            [12] 2763 	mov	a,#0x04
      000C36 25 21            [12] 2764 	add	a,_DAP_SWD_Transfer_sloc0_1_0
      000C38 F5 21            [12] 2765 	mov	_DAP_SWD_Transfer_sloc0_1_0,a
      000C3A E4               [12] 2766 	clr	a
      000C3B 35 22            [12] 2767 	addc	a,(_DAP_SWD_Transfer_sloc0_1_0 + 1)
      000C3D F5 22            [12] 2768 	mov	(_DAP_SWD_Transfer_sloc0_1_0 + 1),a
                                   2769 ;	DAP.c:642: if ((request_value & DAP_TRANSFER_MATCH_MASK) != 0U)
      000C3F 78 67            [12] 2770 	mov	r0,#_request_value
      000C41 E6               [12] 2771 	mov	a,@r0
      000C42 30 E5 2A         [24] 2772 	jnb	acc.5,00188$
                                   2773 ;	DAP.c:645: match_mask[0] = datas[0];
      000C45 90 00 05         [24] 2774 	mov	dptr,#_datas
      000C48 E0               [24] 2775 	movx	a,@dptr
      000C49 FF               [12] 2776 	mov	r7,a
      000C4A 78 5D            [12] 2777 	mov	r0,#_match_mask
      000C4C A6 07            [24] 2778 	mov	@r0,ar7
                                   2779 ;	DAP.c:646: match_mask[1] = datas[1];
      000C4E 90 00 06         [24] 2780 	mov	dptr,#(_datas + 0x0001)
      000C51 E0               [24] 2781 	movx	a,@dptr
      000C52 FF               [12] 2782 	mov	r7,a
      000C53 78 5E            [12] 2783 	mov	r0,#(_match_mask + 0x0001)
      000C55 A6 07            [24] 2784 	mov	@r0,ar7
                                   2785 ;	DAP.c:647: match_mask[2] = datas[2];
      000C57 90 00 07         [24] 2786 	mov	dptr,#(_datas + 0x0002)
      000C5A E0               [24] 2787 	movx	a,@dptr
      000C5B FF               [12] 2788 	mov	r7,a
      000C5C 78 5F            [12] 2789 	mov	r0,#(_match_mask + 0x0002)
      000C5E A6 07            [24] 2790 	mov	@r0,ar7
                                   2791 ;	DAP.c:648: match_mask[3] = datas[3];
      000C60 90 00 08         [24] 2792 	mov	dptr,#(_datas + 0x0003)
      000C63 E0               [24] 2793 	movx	a,@dptr
      000C64 FF               [12] 2794 	mov	r7,a
      000C65 78 60            [12] 2795 	mov	r0,#(_match_mask + 0x0003)
      000C67 A6 07            [24] 2796 	mov	@r0,ar7
                                   2797 ;	DAP.c:649: response_value = DAP_TRANSFER_OK;
      000C69 78 69            [12] 2798 	mov	r0,#_response_value
      000C6B 76 01            [12] 2799 	mov	@r0,#0x01
      000C6D 80 45            [24] 2800 	sjmp	00192$
      000C6F                       2801 00188$:
                                   2802 ;	DAP.c:654: retry = retry_count;
      000C6F 78 59            [12] 2803 	mov	r0,#_retry_count
      000C71 86 06            [24] 2804 	mov	ar6,@r0
      000C73 08               [12] 2805 	inc	r0
      000C74 86 07            [24] 2806 	mov	ar7,@r0
      000C76 78 6A            [12] 2807 	mov	r0,#_retry
      000C78 A6 06            [24] 2808 	mov	@r0,ar6
      000C7A 08               [12] 2809 	inc	r0
      000C7B A6 07            [24] 2810 	mov	@r0,ar7
                                   2811 ;	DAP.c:655: do
      000C7D                       2812 00182$:
                                   2813 ;	DAP.c:657: response_value = SWD_Transfer(request_value, datas);
      000C7D 75 48 05         [24] 2814 	mov	_SWD_Transfer_PARM_2,#_datas
      000C80 75 49 00         [24] 2815 	mov	(_SWD_Transfer_PARM_2 + 1),#(_datas >> 8)
      000C83 78 67            [12] 2816 	mov	r0,#_request_value
      000C85 86 82            [24] 2817 	mov	dpl,@r0
      000C87 12 15 EA         [24] 2818 	lcall	_SWD_Transfer
      000C8A AF 82            [24] 2819 	mov	r7,dpl
      000C8C 78 69            [12] 2820 	mov	r0,#_response_value
      000C8E A6 07            [24] 2821 	mov	@r0,ar7
                                   2822 ;	DAP.c:659: while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
      000C90 BF 02 1B         [24] 2823 	cjne	r7,#0x02,00184$
      000C93 78 6A            [12] 2824 	mov	r0,#_retry
      000C95 86 05            [24] 2825 	mov	ar5,@r0
      000C97 08               [12] 2826 	inc	r0
      000C98 86 06            [24] 2827 	mov	ar6,@r0
      000C9A 78 6A            [12] 2828 	mov	r0,#_retry
      000C9C ED               [12] 2829 	mov	a,r5
      000C9D 24 FF            [12] 2830 	add	a,#0xff
      000C9F F6               [12] 2831 	mov	@r0,a
      000CA0 EE               [12] 2832 	mov	a,r6
      000CA1 34 FF            [12] 2833 	addc	a,#0xff
      000CA3 08               [12] 2834 	inc	r0
      000CA4 F6               [12] 2835 	mov	@r0,a
      000CA5 ED               [12] 2836 	mov	a,r5
      000CA6 4E               [12] 2837 	orl	a,r6
      000CA7 60 05            [24] 2838 	jz	00184$
      000CA9 78 65            [12] 2839 	mov	r0,#_DAP_TransferAbort
      000CAB E6               [12] 2840 	mov	a,@r0
      000CAC 60 CF            [24] 2841 	jz	00182$
      000CAE                       2842 00184$:
                                   2843 ;	DAP.c:660: if (response_value != DAP_TRANSFER_OK)
      000CAE BF 01 11         [24] 2844 	cjne	r7,#0x01,00226$
                                   2845 ;	DAP.c:665: check_write = 1U;
      000CB1 75 20 01         [24] 2846 	mov	_DAP_SWD_Transfer_check_write_65536_95,#0x01
      000CB4                       2847 00192$:
                                   2848 ;	DAP.c:668: response_count++;
      000CB4 78 68            [12] 2849 	mov	r0,#_response_count
      000CB6 06               [12] 2850 	inc	@r0
                                   2851 ;	DAP.c:669: if (DAP_TransferAbort)
      000CB7 78 65            [12] 2852 	mov	r0,#_DAP_TransferAbort
      000CB9 E6               [12] 2853 	mov	a,@r0
      000CBA 70 06            [24] 2854 	jnz	00226$
                                   2855 ;	DAP.c:476: for (; request_count != 0U; request_count--)
      000CBC 78 66            [12] 2856 	mov	r0,#_request_count
      000CBE 16               [12] 2857 	dec	@r0
      000CBF 02 07 06         [24] 2858 	ljmp	00223$
      000CC2                       2859 00226$:
                                   2860 ;	DAP.c:675: for (; request_count != 0U; request_count--)
      000CC2 78 66            [12] 2861 	mov	r0,#_request_count
      000CC4 E6               [12] 2862 	mov	a,@r0
      000CC5 60 3D            [24] 2863 	jz	00201$
                                   2864 ;	DAP.c:678: request_value = *req++;
      000CC7 85 21 82         [24] 2865 	mov	dpl,_DAP_SWD_Transfer_sloc0_1_0
      000CCA 85 22 83         [24] 2866 	mov	dph,(_DAP_SWD_Transfer_sloc0_1_0 + 1)
      000CCD 85 23 F0         [24] 2867 	mov	b,(_DAP_SWD_Transfer_sloc0_1_0 + 2)
      000CD0 12 25 DC         [24] 2868 	lcall	__gptrget
      000CD3 FF               [12] 2869 	mov	r7,a
      000CD4 A3               [24] 2870 	inc	dptr
      000CD5 85 82 21         [24] 2871 	mov	_DAP_SWD_Transfer_sloc0_1_0,dpl
      000CD8 85 83 22         [24] 2872 	mov	(_DAP_SWD_Transfer_sloc0_1_0 + 1),dph
      000CDB 78 67            [12] 2873 	mov	r0,#_request_value
      000CDD A6 07            [24] 2874 	mov	@r0,ar7
                                   2875 ;	DAP.c:679: if ((request_value & DAP_TRANSFER_RnW) != 0U)
      000CDF EF               [12] 2876 	mov	a,r7
      000CE0 30 E1 11         [24] 2877 	jnb	acc.1,00199$
                                   2878 ;	DAP.c:682: if ((request_value & DAP_TRANSFER_MATCH_VALUE) != 0U)
      000CE3 EF               [12] 2879 	mov	a,r7
      000CE4 30 E4 18         [24] 2880 	jnb	acc.4,00227$
                                   2881 ;	DAP.c:685: req += 4;
      000CE7 74 04            [12] 2882 	mov	a,#0x04
      000CE9 25 21            [12] 2883 	add	a,_DAP_SWD_Transfer_sloc0_1_0
      000CEB F5 21            [12] 2884 	mov	_DAP_SWD_Transfer_sloc0_1_0,a
      000CED E4               [12] 2885 	clr	a
      000CEE 35 22            [12] 2886 	addc	a,(_DAP_SWD_Transfer_sloc0_1_0 + 1)
      000CF0 F5 22            [12] 2887 	mov	(_DAP_SWD_Transfer_sloc0_1_0 + 1),a
      000CF2 80 0B            [24] 2888 	sjmp	00227$
      000CF4                       2889 00199$:
                                   2890 ;	DAP.c:691: req += 4;
      000CF4 74 04            [12] 2891 	mov	a,#0x04
      000CF6 25 21            [12] 2892 	add	a,_DAP_SWD_Transfer_sloc0_1_0
      000CF8 F5 21            [12] 2893 	mov	_DAP_SWD_Transfer_sloc0_1_0,a
      000CFA E4               [12] 2894 	clr	a
      000CFB 35 22            [12] 2895 	addc	a,(_DAP_SWD_Transfer_sloc0_1_0 + 1)
      000CFD F5 22            [12] 2896 	mov	(_DAP_SWD_Transfer_sloc0_1_0 + 1),a
      000CFF                       2897 00227$:
                                   2898 ;	DAP.c:675: for (; request_count != 0U; request_count--)
      000CFF 78 66            [12] 2899 	mov	r0,#_request_count
      000D01 16               [12] 2900 	dec	@r0
      000D02 80 BE            [24] 2901 	sjmp	00226$
      000D04                       2902 00201$:
                                   2903 ;	DAP.c:695: if (response_value == DAP_TRANSFER_OK)
      000D04 78 69            [12] 2904 	mov	r0,#_response_value
      000D06 B6 01 02         [24] 2905 	cjne	@r0,#0x01,00629$
      000D09 80 03            [24] 2906 	sjmp	00630$
      000D0B                       2907 00629$:
      000D0B 02 0E 17         [24] 2908 	ljmp	00221$
      000D0E                       2909 00630$:
                                   2910 ;	DAP.c:697: if (post_read)
      000D0E E5 1F            [12] 2911 	mov	a,_DAP_SWD_Transfer_post_read_65536_95
      000D10 70 03            [24] 2912 	jnz	00631$
      000D12 02 0D D6         [24] 2913 	ljmp	00217$
      000D15                       2914 00631$:
                                   2915 ;	DAP.c:700: retry = retry_count;
      000D15 78 59            [12] 2916 	mov	r0,#_retry_count
      000D17 86 06            [24] 2917 	mov	ar6,@r0
      000D19 08               [12] 2918 	inc	r0
      000D1A 86 07            [24] 2919 	mov	ar7,@r0
      000D1C 78 6A            [12] 2920 	mov	r0,#_retry
      000D1E A6 06            [24] 2921 	mov	@r0,ar6
      000D20 08               [12] 2922 	inc	r0
      000D21 A6 07            [24] 2923 	mov	@r0,ar7
                                   2924 ;	DAP.c:701: do
      000D23                       2925 00204$:
                                   2926 ;	DAP.c:703: response_value = SWD_Transfer(DP_RDBUFF | DAP_TRANSFER_RnW, datas);
      000D23 75 48 05         [24] 2927 	mov	_SWD_Transfer_PARM_2,#_datas
      000D26 75 49 00         [24] 2928 	mov	(_SWD_Transfer_PARM_2 + 1),#(_datas >> 8)
      000D29 75 82 0E         [24] 2929 	mov	dpl,#0x0e
      000D2C 12 15 EA         [24] 2930 	lcall	_SWD_Transfer
      000D2F AF 82            [24] 2931 	mov	r7,dpl
      000D31 78 69            [12] 2932 	mov	r0,#_response_value
      000D33 A6 07            [24] 2933 	mov	@r0,ar7
                                   2934 ;	DAP.c:705: while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
      000D35 BF 02 1B         [24] 2935 	cjne	r7,#0x02,00206$
      000D38 78 6A            [12] 2936 	mov	r0,#_retry
      000D3A 86 05            [24] 2937 	mov	ar5,@r0
      000D3C 08               [12] 2938 	inc	r0
      000D3D 86 06            [24] 2939 	mov	ar6,@r0
      000D3F 78 6A            [12] 2940 	mov	r0,#_retry
      000D41 ED               [12] 2941 	mov	a,r5
      000D42 24 FF            [12] 2942 	add	a,#0xff
      000D44 F6               [12] 2943 	mov	@r0,a
      000D45 EE               [12] 2944 	mov	a,r6
      000D46 34 FF            [12] 2945 	addc	a,#0xff
      000D48 08               [12] 2946 	inc	r0
      000D49 F6               [12] 2947 	mov	@r0,a
      000D4A ED               [12] 2948 	mov	a,r5
      000D4B 4E               [12] 2949 	orl	a,r6
      000D4C 60 05            [24] 2950 	jz	00206$
      000D4E 78 65            [12] 2951 	mov	r0,#_DAP_TransferAbort
      000D50 E6               [12] 2952 	mov	a,@r0
      000D51 60 D0            [24] 2953 	jz	00204$
      000D53                       2954 00206$:
                                   2955 ;	DAP.c:706: if (response_value != DAP_TRANSFER_OK)
      000D53 BF 01 02         [24] 2956 	cjne	r7,#0x01,00636$
      000D56 80 03            [24] 2957 	sjmp	00637$
      000D58                       2958 00636$:
      000D58 02 0E 17         [24] 2959 	ljmp	00221$
      000D5B                       2960 00637$:
                                   2961 ;	DAP.c:711: *res++ = (uint8_t)datas[0];
      000D5B AD 19            [24] 2962 	mov	r5,_DAP_SWD_Transfer_PARM_2
      000D5D AE 1A            [24] 2963 	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
      000D5F AF 1B            [24] 2964 	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
      000D61 90 00 05         [24] 2965 	mov	dptr,#_datas
      000D64 E0               [24] 2966 	movx	a,@dptr
      000D65 8D 82            [24] 2967 	mov	dpl,r5
      000D67 8E 83            [24] 2968 	mov	dph,r6
      000D69 8F F0            [24] 2969 	mov	b,r7
      000D6B 12 25 C1         [24] 2970 	lcall	__gptrput
      000D6E 74 01            [12] 2971 	mov	a,#0x01
      000D70 2D               [12] 2972 	add	a,r5
      000D71 F5 19            [12] 2973 	mov	_DAP_SWD_Transfer_PARM_2,a
      000D73 E4               [12] 2974 	clr	a
      000D74 3E               [12] 2975 	addc	a,r6
      000D75 F5 1A            [12] 2976 	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
      000D77 8F 1B            [24] 2977 	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
                                   2978 ;	DAP.c:712: *res++ = (uint8_t)datas[1];
      000D79 AD 19            [24] 2979 	mov	r5,_DAP_SWD_Transfer_PARM_2
      000D7B AE 1A            [24] 2980 	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
      000D7D AF 1B            [24] 2981 	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
      000D7F 90 00 06         [24] 2982 	mov	dptr,#(_datas + 0x0001)
      000D82 E0               [24] 2983 	movx	a,@dptr
      000D83 8D 82            [24] 2984 	mov	dpl,r5
      000D85 8E 83            [24] 2985 	mov	dph,r6
      000D87 8F F0            [24] 2986 	mov	b,r7
      000D89 12 25 C1         [24] 2987 	lcall	__gptrput
      000D8C 74 01            [12] 2988 	mov	a,#0x01
      000D8E 2D               [12] 2989 	add	a,r5
      000D8F F5 19            [12] 2990 	mov	_DAP_SWD_Transfer_PARM_2,a
      000D91 E4               [12] 2991 	clr	a
      000D92 3E               [12] 2992 	addc	a,r6
      000D93 F5 1A            [12] 2993 	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
      000D95 8F 1B            [24] 2994 	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
                                   2995 ;	DAP.c:713: *res++ = (uint8_t)datas[2];
      000D97 AD 19            [24] 2996 	mov	r5,_DAP_SWD_Transfer_PARM_2
      000D99 AE 1A            [24] 2997 	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
      000D9B AF 1B            [24] 2998 	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
      000D9D 90 00 07         [24] 2999 	mov	dptr,#(_datas + 0x0002)
      000DA0 E0               [24] 3000 	movx	a,@dptr
      000DA1 8D 82            [24] 3001 	mov	dpl,r5
      000DA3 8E 83            [24] 3002 	mov	dph,r6
      000DA5 8F F0            [24] 3003 	mov	b,r7
      000DA7 12 25 C1         [24] 3004 	lcall	__gptrput
      000DAA 74 01            [12] 3005 	mov	a,#0x01
      000DAC 2D               [12] 3006 	add	a,r5
      000DAD F5 19            [12] 3007 	mov	_DAP_SWD_Transfer_PARM_2,a
      000DAF E4               [12] 3008 	clr	a
      000DB0 3E               [12] 3009 	addc	a,r6
      000DB1 F5 1A            [12] 3010 	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
      000DB3 8F 1B            [24] 3011 	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
                                   3012 ;	DAP.c:714: *res++ = (uint8_t)datas[3];
      000DB5 AD 19            [24] 3013 	mov	r5,_DAP_SWD_Transfer_PARM_2
      000DB7 AE 1A            [24] 3014 	mov	r6,(_DAP_SWD_Transfer_PARM_2 + 1)
      000DB9 AF 1B            [24] 3015 	mov	r7,(_DAP_SWD_Transfer_PARM_2 + 2)
      000DBB 90 00 08         [24] 3016 	mov	dptr,#(_datas + 0x0003)
      000DBE E0               [24] 3017 	movx	a,@dptr
      000DBF FC               [12] 3018 	mov	r4,a
      000DC0 8D 82            [24] 3019 	mov	dpl,r5
      000DC2 8E 83            [24] 3020 	mov	dph,r6
      000DC4 8F F0            [24] 3021 	mov	b,r7
      000DC6 12 25 C1         [24] 3022 	lcall	__gptrput
      000DC9 74 01            [12] 3023 	mov	a,#0x01
      000DCB 2D               [12] 3024 	add	a,r5
      000DCC F5 19            [12] 3025 	mov	_DAP_SWD_Transfer_PARM_2,a
      000DCE E4               [12] 3026 	clr	a
      000DCF 3E               [12] 3027 	addc	a,r6
      000DD0 F5 1A            [12] 3028 	mov	(_DAP_SWD_Transfer_PARM_2 + 1),a
      000DD2 8F 1B            [24] 3029 	mov	(_DAP_SWD_Transfer_PARM_2 + 2),r7
      000DD4 80 41            [24] 3030 	sjmp	00221$
      000DD6                       3031 00217$:
                                   3032 ;	DAP.c:716: else if (check_write)
      000DD6 E5 20            [12] 3033 	mov	a,_DAP_SWD_Transfer_check_write_65536_95
      000DD8 60 3D            [24] 3034 	jz	00221$
                                   3035 ;	DAP.c:719: retry = retry_count;
      000DDA 78 59            [12] 3036 	mov	r0,#_retry_count
      000DDC 86 06            [24] 3037 	mov	ar6,@r0
      000DDE 08               [12] 3038 	inc	r0
      000DDF 86 07            [24] 3039 	mov	ar7,@r0
      000DE1 78 6A            [12] 3040 	mov	r0,#_retry
      000DE3 A6 06            [24] 3041 	mov	@r0,ar6
      000DE5 08               [12] 3042 	inc	r0
      000DE6 A6 07            [24] 3043 	mov	@r0,ar7
                                   3044 ;	DAP.c:720: do
      000DE8                       3045 00211$:
                                   3046 ;	DAP.c:722: response_value = SWD_Transfer(DP_RDBUFF | DAP_TRANSFER_RnW, NULL);
      000DE8 E4               [12] 3047 	clr	a
      000DE9 F5 48            [12] 3048 	mov	_SWD_Transfer_PARM_2,a
      000DEB F5 49            [12] 3049 	mov	(_SWD_Transfer_PARM_2 + 1),a
      000DED 75 82 0E         [24] 3050 	mov	dpl,#0x0e
      000DF0 12 15 EA         [24] 3051 	lcall	_SWD_Transfer
      000DF3 AF 82            [24] 3052 	mov	r7,dpl
      000DF5 78 69            [12] 3053 	mov	r0,#_response_value
      000DF7 A6 07            [24] 3054 	mov	@r0,ar7
                                   3055 ;	DAP.c:724: while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
      000DF9 BF 02 1B         [24] 3056 	cjne	r7,#0x02,00221$
      000DFC 78 6A            [12] 3057 	mov	r0,#_retry
      000DFE 86 06            [24] 3058 	mov	ar6,@r0
      000E00 08               [12] 3059 	inc	r0
      000E01 86 07            [24] 3060 	mov	ar7,@r0
      000E03 78 6A            [12] 3061 	mov	r0,#_retry
      000E05 EE               [12] 3062 	mov	a,r6
      000E06 24 FF            [12] 3063 	add	a,#0xff
      000E08 F6               [12] 3064 	mov	@r0,a
      000E09 EF               [12] 3065 	mov	a,r7
      000E0A 34 FF            [12] 3066 	addc	a,#0xff
      000E0C 08               [12] 3067 	inc	r0
      000E0D F6               [12] 3068 	mov	@r0,a
      000E0E EE               [12] 3069 	mov	a,r6
      000E0F 4F               [12] 3070 	orl	a,r7
      000E10 60 05            [24] 3071 	jz	00221$
      000E12 78 65            [12] 3072 	mov	r0,#_DAP_TransferAbort
      000E14 E6               [12] 3073 	mov	a,@r0
      000E15 60 D1            [24] 3074 	jz	00211$
                                   3075 ;	DAP.c:728: end:
      000E17                       3076 00221$:
                                   3077 ;	DAP.c:729: *(response_head + 0) = (uint8_t)response_count;
      000E17 85 1C 82         [24] 3078 	mov	dpl,_DAP_SWD_Transfer_response_head_65536_95
      000E1A 85 1D 83         [24] 3079 	mov	dph,(_DAP_SWD_Transfer_response_head_65536_95 + 1)
      000E1D 85 1E F0         [24] 3080 	mov	b,(_DAP_SWD_Transfer_response_head_65536_95 + 2)
      000E20 78 68            [12] 3081 	mov	r0,#_response_count
      000E22 E6               [12] 3082 	mov	a,@r0
      000E23 12 25 C1         [24] 3083 	lcall	__gptrput
                                   3084 ;	DAP.c:730: *(response_head + 1) = (uint8_t)response_value;
      000E26 74 01            [12] 3085 	mov	a,#0x01
      000E28 25 1C            [12] 3086 	add	a,_DAP_SWD_Transfer_response_head_65536_95
      000E2A FD               [12] 3087 	mov	r5,a
      000E2B E4               [12] 3088 	clr	a
      000E2C 35 1D            [12] 3089 	addc	a,(_DAP_SWD_Transfer_response_head_65536_95 + 1)
      000E2E FE               [12] 3090 	mov	r6,a
      000E2F AF 1E            [24] 3091 	mov	r7,(_DAP_SWD_Transfer_response_head_65536_95 + 2)
      000E31 8D 82            [24] 3092 	mov	dpl,r5
      000E33 8E 83            [24] 3093 	mov	dph,r6
      000E35 8F F0            [24] 3094 	mov	b,r7
      000E37 78 69            [12] 3095 	mov	r0,#_response_value
      000E39 E6               [12] 3096 	mov	a,@r0
      000E3A 12 25 C1         [24] 3097 	lcall	__gptrput
                                   3098 ;	DAP.c:732: return ((uint8_t)(res - response_head));
      000E3D E5 19            [12] 3099 	mov	a,_DAP_SWD_Transfer_PARM_2
      000E3F C3               [12] 3100 	clr	c
      000E40 95 1C            [12] 3101 	subb	a,_DAP_SWD_Transfer_response_head_65536_95
      000E42 FE               [12] 3102 	mov	r6,a
      000E43 E5 1A            [12] 3103 	mov	a,(_DAP_SWD_Transfer_PARM_2 + 1)
      000E45 95 1D            [12] 3104 	subb	a,(_DAP_SWD_Transfer_response_head_65536_95 + 1)
      000E47 8E 82            [24] 3105 	mov	dpl,r6
                                   3106 ;	DAP.c:733: }
      000E49 22               [24] 3107 	ret
                                   3108 ;------------------------------------------------------------
                                   3109 ;Allocation info for local variables in function 'DAP_Transfer'
                                   3110 ;------------------------------------------------------------
                                   3111 ;res                       Allocated with name '_DAP_Transfer_PARM_2'
                                   3112 ;req                       Allocated to registers r5 r6 r7 
                                   3113 ;num                       Allocated to registers 
                                   3114 ;------------------------------------------------------------
                                   3115 ;	DAP.c:783: static uint8_t DAP_Transfer(const uint8_t *req, uint8_t *res)
                                   3116 ;	-----------------------------------------
                                   3117 ;	 function DAP_Transfer
                                   3118 ;	-----------------------------------------
      000E4A                       3119 _DAP_Transfer:
      000E4A AD 82            [24] 3120 	mov	r5,dpl
      000E4C AE 83            [24] 3121 	mov	r6,dph
      000E4E AF F0            [24] 3122 	mov	r7,b
                                   3123 ;	DAP.c:790: num = DAP_SWD_Transfer(req, res);
      000E50 85 24 19         [24] 3124 	mov	_DAP_SWD_Transfer_PARM_2,_DAP_Transfer_PARM_2
      000E53 85 25 1A         [24] 3125 	mov	(_DAP_SWD_Transfer_PARM_2 + 1),(_DAP_Transfer_PARM_2 + 1)
      000E56 85 26 1B         [24] 3126 	mov	(_DAP_SWD_Transfer_PARM_2 + 2),(_DAP_Transfer_PARM_2 + 2)
      000E59 8D 82            [24] 3127 	mov	dpl,r5
      000E5B 8E 83            [24] 3128 	mov	dph,r6
      000E5D 8F F0            [24] 3129 	mov	b,r7
                                   3130 ;	DAP.c:797: return (num);
                                   3131 ;	DAP.c:798: }
      000E5F 02 06 BB         [24] 3132 	ljmp	_DAP_SWD_Transfer
                                   3133 ;------------------------------------------------------------
                                   3134 ;Allocation info for local variables in function 'DAP_SWD_TransferBlock'
                                   3135 ;------------------------------------------------------------
                                   3136 ;res                       Allocated with name '_DAP_SWD_TransferBlock_PARM_2'
                                   3137 ;req                       Allocated to registers r5 r6 r7 
                                   3138 ;response_head             Allocated with name '_DAP_SWD_TransferBlock_response_head_65536_145'
                                   3139 ;sloc0                     Allocated with name '_DAP_SWD_TransferBlock_sloc0_1_0'
                                   3140 ;sloc1                     Allocated with name '_DAP_SWD_TransferBlock_sloc1_1_0'
                                   3141 ;------------------------------------------------------------
                                   3142 ;	DAP.c:804: static uint8_t DAP_SWD_TransferBlock(const uint8_t *req, uint8_t *res)
                                   3143 ;	-----------------------------------------
                                   3144 ;	 function DAP_SWD_TransferBlock
                                   3145 ;	-----------------------------------------
      000E62                       3146 _DAP_SWD_TransferBlock:
      000E62 AD 82            [24] 3147 	mov	r5,dpl
      000E64 AE 83            [24] 3148 	mov	r6,dph
      000E66 AF F0            [24] 3149 	mov	r7,b
                                   3150 ;	DAP.c:808: response_count = 0U;
      000E68 78 68            [12] 3151 	mov	r0,#_response_count
      000E6A 76 00            [12] 3152 	mov	@r0,#0x00
                                   3153 ;	DAP.c:809: response_value = 0U;
      000E6C 78 69            [12] 3154 	mov	r0,#_response_value
      000E6E 76 00            [12] 3155 	mov	@r0,#0x00
                                   3156 ;	DAP.c:810: response_head = res;
      000E70 85 27 2A         [24] 3157 	mov	_DAP_SWD_TransferBlock_response_head_65536_145,_DAP_SWD_TransferBlock_PARM_2
      000E73 85 28 2B         [24] 3158 	mov	(_DAP_SWD_TransferBlock_response_head_65536_145 + 1),(_DAP_SWD_TransferBlock_PARM_2 + 1)
      000E76 85 29 2C         [24] 3159 	mov	(_DAP_SWD_TransferBlock_response_head_65536_145 + 2),(_DAP_SWD_TransferBlock_PARM_2 + 2)
                                   3160 ;	DAP.c:811: res += 3;
      000E79 74 03            [12] 3161 	mov	a,#0x03
      000E7B 25 2A            [12] 3162 	add	a,_DAP_SWD_TransferBlock_response_head_65536_145
      000E7D F5 27            [12] 3163 	mov	_DAP_SWD_TransferBlock_PARM_2,a
      000E7F E4               [12] 3164 	clr	a
      000E80 35 2B            [12] 3165 	addc	a,(_DAP_SWD_TransferBlock_response_head_65536_145 + 1)
      000E82 F5 28            [12] 3166 	mov	(_DAP_SWD_TransferBlock_PARM_2 + 1),a
      000E84 85 2C 29         [24] 3167 	mov	(_DAP_SWD_TransferBlock_PARM_2 + 2),(_DAP_SWD_TransferBlock_response_head_65536_145 + 2)
                                   3168 ;	DAP.c:813: DAP_TransferAbort = 0U;
      000E87 78 65            [12] 3169 	mov	r0,#_DAP_TransferAbort
      000E89 76 00            [12] 3170 	mov	@r0,#0x00
                                   3171 ;	DAP.c:815: req++; // Ignore DAP index
      000E8B 0D               [12] 3172 	inc	r5
      000E8C BD 00 01         [24] 3173 	cjne	r5,#0x00,00261$
      000E8F 0E               [12] 3174 	inc	r6
      000E90                       3175 00261$:
                                   3176 ;	DAP.c:817: request_count = (uint16_t)(*(req + 0) << 0) |
      000E90 8D 82            [24] 3177 	mov	dpl,r5
      000E92 8E 83            [24] 3178 	mov	dph,r6
      000E94 8F F0            [24] 3179 	mov	b,r7
      000E96 12 25 DC         [24] 3180 	lcall	__gptrget
      000E99 FC               [12] 3181 	mov	r4,a
      000E9A 7B 00            [12] 3182 	mov	r3,#0x00
      000E9C 8C 2D            [24] 3183 	mov	_DAP_SWD_TransferBlock_sloc0_1_0,r4
      000E9E 8B 2E            [24] 3184 	mov	(_DAP_SWD_TransferBlock_sloc0_1_0 + 1),r3
                                   3185 ;	DAP.c:818: (uint16_t)(*(req + 1) << 8);
      000EA0 74 01            [12] 3186 	mov	a,#0x01
      000EA2 2D               [12] 3187 	add	a,r5
      000EA3 FA               [12] 3188 	mov	r2,a
      000EA4 E4               [12] 3189 	clr	a
      000EA5 3E               [12] 3190 	addc	a,r6
      000EA6 FB               [12] 3191 	mov	r3,a
      000EA7 8F 04            [24] 3192 	mov	ar4,r7
      000EA9 8A 82            [24] 3193 	mov	dpl,r2
      000EAB 8B 83            [24] 3194 	mov	dph,r3
      000EAD 8C F0            [24] 3195 	mov	b,r4
      000EAF 12 25 DC         [24] 3196 	lcall	__gptrget
      000EB2 FC               [12] 3197 	mov	r4,a
      000EB3 7A 00            [12] 3198 	mov	r2,#0x00
      000EB5 E5 2D            [12] 3199 	mov	a,_DAP_SWD_TransferBlock_sloc0_1_0
      000EB7 42 02            [12] 3200 	orl	ar2,a
      000EB9 E5 2E            [12] 3201 	mov	a,(_DAP_SWD_TransferBlock_sloc0_1_0 + 1)
      000EBB 42 04            [12] 3202 	orl	ar4,a
      000EBD 78 66            [12] 3203 	mov	r0,#_request_count
      000EBF A6 02            [24] 3204 	mov	@r0,ar2
                                   3205 ;	DAP.c:819: req += 2;
      000EC1 74 02            [12] 3206 	mov	a,#0x02
      000EC3 2D               [12] 3207 	add	a,r5
      000EC4 FD               [12] 3208 	mov	r5,a
      000EC5 E4               [12] 3209 	clr	a
      000EC6 3E               [12] 3210 	addc	a,r6
      000EC7 FE               [12] 3211 	mov	r6,a
                                   3212 ;	DAP.c:820: if (request_count == 0U)
      000EC8 78 66            [12] 3213 	mov	r0,#_request_count
      000ECA E6               [12] 3214 	mov	a,@r0
      000ECB 70 03            [24] 3215 	jnz	00262$
      000ECD 02 11 35         [24] 3216 	ljmp	00143$
      000ED0                       3217 00262$:
                                   3218 ;	DAP.c:825: request_value = *req++;
      000ED0 8D 82            [24] 3219 	mov	dpl,r5
      000ED2 8E 83            [24] 3220 	mov	dph,r6
      000ED4 8F F0            [24] 3221 	mov	b,r7
      000ED6 12 25 DC         [24] 3222 	lcall	__gptrget
      000ED9 FC               [12] 3223 	mov	r4,a
      000EDA 0D               [12] 3224 	inc	r5
      000EDB BD 00 01         [24] 3225 	cjne	r5,#0x00,00263$
      000EDE 0E               [12] 3226 	inc	r6
      000EDF                       3227 00263$:
      000EDF 78 67            [12] 3228 	mov	r0,#_request_value
      000EE1 A6 04            [24] 3229 	mov	@r0,ar4
                                   3230 ;	DAP.c:826: if ((request_value & DAP_TRANSFER_RnW) != 0U)
      000EE3 EC               [12] 3231 	mov	a,r4
      000EE4 20 E1 03         [24] 3232 	jb	acc.1,00264$
      000EE7 02 10 3E         [24] 3233 	ljmp	00165$
      000EEA                       3234 00264$:
                                   3235 ;	DAP.c:829: if ((request_value & DAP_TRANSFER_APnDP) != 0U)
      000EEA EC               [12] 3236 	mov	a,r4
      000EEB 30 E0 46         [24] 3237 	jnb	acc.0,00159$
                                   3238 ;	DAP.c:832: retry = retry_count;
      000EEE 78 59            [12] 3239 	mov	r0,#_retry_count
      000EF0 86 03            [24] 3240 	mov	ar3,@r0
      000EF2 08               [12] 3241 	inc	r0
      000EF3 86 04            [24] 3242 	mov	ar4,@r0
      000EF5 78 6A            [12] 3243 	mov	r0,#_retry
      000EF7 A6 03            [24] 3244 	mov	@r0,ar3
      000EF9 08               [12] 3245 	inc	r0
      000EFA A6 04            [24] 3246 	mov	@r0,ar4
                                   3247 ;	DAP.c:833: do
      000EFC                       3248 00105$:
                                   3249 ;	DAP.c:835: response_value = SWD_Transfer(request_value, NULL);
      000EFC E4               [12] 3250 	clr	a
      000EFD F5 48            [12] 3251 	mov	_SWD_Transfer_PARM_2,a
      000EFF F5 49            [12] 3252 	mov	(_SWD_Transfer_PARM_2 + 1),a
      000F01 78 67            [12] 3253 	mov	r0,#_request_value
      000F03 86 82            [24] 3254 	mov	dpl,@r0
      000F05 12 15 EA         [24] 3255 	lcall	_SWD_Transfer
      000F08 AC 82            [24] 3256 	mov	r4,dpl
      000F0A 78 69            [12] 3257 	mov	r0,#_response_value
      000F0C A6 04            [24] 3258 	mov	@r0,ar4
                                   3259 ;	DAP.c:837: while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
      000F0E BC 02 1B         [24] 3260 	cjne	r4,#0x02,00107$
      000F11 78 6A            [12] 3261 	mov	r0,#_retry
      000F13 86 02            [24] 3262 	mov	ar2,@r0
      000F15 08               [12] 3263 	inc	r0
      000F16 86 03            [24] 3264 	mov	ar3,@r0
      000F18 78 6A            [12] 3265 	mov	r0,#_retry
      000F1A EA               [12] 3266 	mov	a,r2
      000F1B 24 FF            [12] 3267 	add	a,#0xff
      000F1D F6               [12] 3268 	mov	@r0,a
      000F1E EB               [12] 3269 	mov	a,r3
      000F1F 34 FF            [12] 3270 	addc	a,#0xff
      000F21 08               [12] 3271 	inc	r0
      000F22 F6               [12] 3272 	mov	@r0,a
      000F23 EA               [12] 3273 	mov	a,r2
      000F24 4B               [12] 3274 	orl	a,r3
      000F25 60 05            [24] 3275 	jz	00107$
      000F27 78 65            [12] 3276 	mov	r0,#_DAP_TransferAbort
      000F29 E6               [12] 3277 	mov	a,@r0
      000F2A 60 D0            [24] 3278 	jz	00105$
      000F2C                       3279 00107$:
                                   3280 ;	DAP.c:838: if (response_value != DAP_TRANSFER_OK)
      000F2C BC 01 02         [24] 3281 	cjne	r4,#0x01,00270$
      000F2F 80 03            [24] 3282 	sjmp	00271$
      000F31                       3283 00270$:
      000F31 02 11 35         [24] 3284 	ljmp	00143$
      000F34                       3285 00271$:
                                   3286 ;	DAP.c:843: while (request_count--)
      000F34                       3287 00159$:
      000F34                       3288 00122$:
      000F34 78 66            [12] 3289 	mov	r0,#_request_count
      000F36 86 04            [24] 3290 	mov	ar4,@r0
      000F38 78 66            [12] 3291 	mov	r0,#_request_count
      000F3A EC               [12] 3292 	mov	a,r4
      000F3B 14               [12] 3293 	dec	a
      000F3C F6               [12] 3294 	mov	@r0,a
      000F3D EC               [12] 3295 	mov	a,r4
      000F3E 70 03            [24] 3296 	jnz	00272$
      000F40 02 11 35         [24] 3297 	ljmp	00143$
      000F43                       3298 00272$:
                                   3299 ;	DAP.c:846: if ((request_count == 0U) && ((request_value & DAP_TRANSFER_APnDP) != 0U))
      000F43 78 66            [12] 3300 	mov	r0,#_request_count
      000F45 E6               [12] 3301 	mov	a,@r0
      000F46 70 0A            [24] 3302 	jnz	00113$
      000F48 78 67            [12] 3303 	mov	r0,#_request_value
      000F4A E6               [12] 3304 	mov	a,@r0
      000F4B 30 E0 04         [24] 3305 	jnb	acc.0,00113$
                                   3306 ;	DAP.c:849: request_value = DP_RDBUFF | DAP_TRANSFER_RnW;
      000F4E 78 67            [12] 3307 	mov	r0,#_request_value
      000F50 76 0E            [12] 3308 	mov	@r0,#0x0e
      000F52                       3309 00113$:
                                   3310 ;	DAP.c:851: retry = retry_count;
      000F52 78 59            [12] 3311 	mov	r0,#_retry_count
      000F54 86 03            [24] 3312 	mov	ar3,@r0
      000F56 08               [12] 3313 	inc	r0
      000F57 86 04            [24] 3314 	mov	ar4,@r0
      000F59 78 6A            [12] 3315 	mov	r0,#_retry
      000F5B A6 03            [24] 3316 	mov	@r0,ar3
      000F5D 08               [12] 3317 	inc	r0
      000F5E A6 04            [24] 3318 	mov	@r0,ar4
                                   3319 ;	DAP.c:852: do
      000F60                       3320 00117$:
                                   3321 ;	DAP.c:854: response_value = SWD_Transfer(request_value, datas);
      000F60 75 48 05         [24] 3322 	mov	_SWD_Transfer_PARM_2,#_datas
      000F63 75 49 00         [24] 3323 	mov	(_SWD_Transfer_PARM_2 + 1),#(_datas >> 8)
      000F66 78 67            [12] 3324 	mov	r0,#_request_value
      000F68 86 82            [24] 3325 	mov	dpl,@r0
      000F6A 12 15 EA         [24] 3326 	lcall	_SWD_Transfer
      000F6D AC 82            [24] 3327 	mov	r4,dpl
      000F6F 78 69            [12] 3328 	mov	r0,#_response_value
      000F71 A6 04            [24] 3329 	mov	@r0,ar4
                                   3330 ;	DAP.c:856: while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
      000F73 BC 02 1B         [24] 3331 	cjne	r4,#0x02,00119$
      000F76 78 6A            [12] 3332 	mov	r0,#_retry
      000F78 86 03            [24] 3333 	mov	ar3,@r0
      000F7A 08               [12] 3334 	inc	r0
      000F7B 86 04            [24] 3335 	mov	ar4,@r0
      000F7D 78 6A            [12] 3336 	mov	r0,#_retry
      000F7F EB               [12] 3337 	mov	a,r3
      000F80 24 FF            [12] 3338 	add	a,#0xff
      000F82 F6               [12] 3339 	mov	@r0,a
      000F83 EC               [12] 3340 	mov	a,r4
      000F84 34 FF            [12] 3341 	addc	a,#0xff
      000F86 08               [12] 3342 	inc	r0
      000F87 F6               [12] 3343 	mov	@r0,a
      000F88 EB               [12] 3344 	mov	a,r3
      000F89 4C               [12] 3345 	orl	a,r4
      000F8A 60 05            [24] 3346 	jz	00119$
      000F8C 78 65            [12] 3347 	mov	r0,#_DAP_TransferAbort
      000F8E E6               [12] 3348 	mov	a,@r0
      000F8F 60 CF            [24] 3349 	jz	00117$
      000F91                       3350 00119$:
                                   3351 ;	DAP.c:857: if (response_value != DAP_TRANSFER_OK)
      000F91 78 69            [12] 3352 	mov	r0,#_response_value
      000F93 B6 01 02         [24] 3353 	cjne	@r0,#0x01,00279$
      000F96 80 03            [24] 3354 	sjmp	00280$
      000F98                       3355 00279$:
      000F98 02 11 35         [24] 3356 	ljmp	00143$
      000F9B                       3357 00280$:
                                   3358 ;	DAP.c:862: *res++ = (uint8_t)datas[0];
      000F9B 85 27 2F         [24] 3359 	mov	_DAP_SWD_TransferBlock_sloc1_1_0,_DAP_SWD_TransferBlock_PARM_2
      000F9E 85 28 30         [24] 3360 	mov	(_DAP_SWD_TransferBlock_sloc1_1_0 + 1),(_DAP_SWD_TransferBlock_PARM_2 + 1)
      000FA1 85 29 31         [24] 3361 	mov	(_DAP_SWD_TransferBlock_sloc1_1_0 + 2),(_DAP_SWD_TransferBlock_PARM_2 + 2)
      000FA4 90 00 05         [24] 3362 	mov	dptr,#_datas
      000FA7 E0               [24] 3363 	movx	a,@dptr
      000FA8 85 2F 82         [24] 3364 	mov	dpl,_DAP_SWD_TransferBlock_sloc1_1_0
      000FAB 85 30 83         [24] 3365 	mov	dph,(_DAP_SWD_TransferBlock_sloc1_1_0 + 1)
      000FAE 85 31 F0         [24] 3366 	mov	b,(_DAP_SWD_TransferBlock_sloc1_1_0 + 2)
      000FB1 12 25 C1         [24] 3367 	lcall	__gptrput
      000FB4 74 01            [12] 3368 	mov	a,#0x01
      000FB6 25 2F            [12] 3369 	add	a,_DAP_SWD_TransferBlock_sloc1_1_0
      000FB8 F5 27            [12] 3370 	mov	_DAP_SWD_TransferBlock_PARM_2,a
      000FBA E4               [12] 3371 	clr	a
      000FBB 35 30            [12] 3372 	addc	a,(_DAP_SWD_TransferBlock_sloc1_1_0 + 1)
      000FBD F5 28            [12] 3373 	mov	(_DAP_SWD_TransferBlock_PARM_2 + 1),a
      000FBF 85 31 29         [24] 3374 	mov	(_DAP_SWD_TransferBlock_PARM_2 + 2),(_DAP_SWD_TransferBlock_sloc1_1_0 + 2)
                                   3375 ;	DAP.c:863: *res++ = (uint8_t)datas[1];
      000FC2 85 27 2F         [24] 3376 	mov	_DAP_SWD_TransferBlock_sloc1_1_0,_DAP_SWD_TransferBlock_PARM_2
      000FC5 85 28 30         [24] 3377 	mov	(_DAP_SWD_TransferBlock_sloc1_1_0 + 1),(_DAP_SWD_TransferBlock_PARM_2 + 1)
      000FC8 85 29 31         [24] 3378 	mov	(_DAP_SWD_TransferBlock_sloc1_1_0 + 2),(_DAP_SWD_TransferBlock_PARM_2 + 2)
      000FCB 90 00 06         [24] 3379 	mov	dptr,#(_datas + 0x0001)
      000FCE E0               [24] 3380 	movx	a,@dptr
      000FCF 85 2F 82         [24] 3381 	mov	dpl,_DAP_SWD_TransferBlock_sloc1_1_0
      000FD2 85 30 83         [24] 3382 	mov	dph,(_DAP_SWD_TransferBlock_sloc1_1_0 + 1)
      000FD5 85 31 F0         [24] 3383 	mov	b,(_DAP_SWD_TransferBlock_sloc1_1_0 + 2)
      000FD8 12 25 C1         [24] 3384 	lcall	__gptrput
      000FDB 74 01            [12] 3385 	mov	a,#0x01
      000FDD 25 2F            [12] 3386 	add	a,_DAP_SWD_TransferBlock_sloc1_1_0
      000FDF F5 27            [12] 3387 	mov	_DAP_SWD_TransferBlock_PARM_2,a
      000FE1 E4               [12] 3388 	clr	a
      000FE2 35 30            [12] 3389 	addc	a,(_DAP_SWD_TransferBlock_sloc1_1_0 + 1)
      000FE4 F5 28            [12] 3390 	mov	(_DAP_SWD_TransferBlock_PARM_2 + 1),a
      000FE6 85 31 29         [24] 3391 	mov	(_DAP_SWD_TransferBlock_PARM_2 + 2),(_DAP_SWD_TransferBlock_sloc1_1_0 + 2)
                                   3392 ;	DAP.c:864: *res++ = (uint8_t)datas[2];
      000FE9 85 27 2F         [24] 3393 	mov	_DAP_SWD_TransferBlock_sloc1_1_0,_DAP_SWD_TransferBlock_PARM_2
      000FEC 85 28 30         [24] 3394 	mov	(_DAP_SWD_TransferBlock_sloc1_1_0 + 1),(_DAP_SWD_TransferBlock_PARM_2 + 1)
      000FEF 85 29 31         [24] 3395 	mov	(_DAP_SWD_TransferBlock_sloc1_1_0 + 2),(_DAP_SWD_TransferBlock_PARM_2 + 2)
      000FF2 90 00 07         [24] 3396 	mov	dptr,#(_datas + 0x0002)
      000FF5 E0               [24] 3397 	movx	a,@dptr
      000FF6 85 2F 82         [24] 3398 	mov	dpl,_DAP_SWD_TransferBlock_sloc1_1_0
      000FF9 85 30 83         [24] 3399 	mov	dph,(_DAP_SWD_TransferBlock_sloc1_1_0 + 1)
      000FFC 85 31 F0         [24] 3400 	mov	b,(_DAP_SWD_TransferBlock_sloc1_1_0 + 2)
      000FFF 12 25 C1         [24] 3401 	lcall	__gptrput
      001002 74 01            [12] 3402 	mov	a,#0x01
      001004 25 2F            [12] 3403 	add	a,_DAP_SWD_TransferBlock_sloc1_1_0
      001006 F5 27            [12] 3404 	mov	_DAP_SWD_TransferBlock_PARM_2,a
      001008 E4               [12] 3405 	clr	a
      001009 35 30            [12] 3406 	addc	a,(_DAP_SWD_TransferBlock_sloc1_1_0 + 1)
      00100B F5 28            [12] 3407 	mov	(_DAP_SWD_TransferBlock_PARM_2 + 1),a
      00100D 85 31 29         [24] 3408 	mov	(_DAP_SWD_TransferBlock_PARM_2 + 2),(_DAP_SWD_TransferBlock_sloc1_1_0 + 2)
                                   3409 ;	DAP.c:865: *res++ = (uint8_t)datas[3];
      001010 85 27 2F         [24] 3410 	mov	_DAP_SWD_TransferBlock_sloc1_1_0,_DAP_SWD_TransferBlock_PARM_2
      001013 85 28 30         [24] 3411 	mov	(_DAP_SWD_TransferBlock_sloc1_1_0 + 1),(_DAP_SWD_TransferBlock_PARM_2 + 1)
      001016 85 29 31         [24] 3412 	mov	(_DAP_SWD_TransferBlock_sloc1_1_0 + 2),(_DAP_SWD_TransferBlock_PARM_2 + 2)
      001019 90 00 08         [24] 3413 	mov	dptr,#(_datas + 0x0003)
      00101C E0               [24] 3414 	movx	a,@dptr
      00101D FC               [12] 3415 	mov	r4,a
      00101E 85 2F 82         [24] 3416 	mov	dpl,_DAP_SWD_TransferBlock_sloc1_1_0
      001021 85 30 83         [24] 3417 	mov	dph,(_DAP_SWD_TransferBlock_sloc1_1_0 + 1)
      001024 85 31 F0         [24] 3418 	mov	b,(_DAP_SWD_TransferBlock_sloc1_1_0 + 2)
      001027 12 25 C1         [24] 3419 	lcall	__gptrput
      00102A 74 01            [12] 3420 	mov	a,#0x01
      00102C 25 2F            [12] 3421 	add	a,_DAP_SWD_TransferBlock_sloc1_1_0
      00102E F5 27            [12] 3422 	mov	_DAP_SWD_TransferBlock_PARM_2,a
      001030 E4               [12] 3423 	clr	a
      001031 35 30            [12] 3424 	addc	a,(_DAP_SWD_TransferBlock_sloc1_1_0 + 1)
      001033 F5 28            [12] 3425 	mov	(_DAP_SWD_TransferBlock_PARM_2 + 1),a
      001035 85 31 29         [24] 3426 	mov	(_DAP_SWD_TransferBlock_PARM_2 + 2),(_DAP_SWD_TransferBlock_sloc1_1_0 + 2)
                                   3427 ;	DAP.c:866: response_count++;
      001038 78 68            [12] 3428 	mov	r0,#_response_count
      00103A 06               [12] 3429 	inc	@r0
      00103B 02 0F 34         [24] 3430 	ljmp	00122$
                                   3431 ;	DAP.c:872: while (request_count--)
      00103E                       3432 00165$:
      00103E                       3433 00132$:
      00103E 78 66            [12] 3434 	mov	r0,#_request_count
      001040 86 04            [24] 3435 	mov	ar4,@r0
      001042 78 66            [12] 3436 	mov	r0,#_request_count
      001044 EC               [12] 3437 	mov	a,r4
      001045 14               [12] 3438 	dec	a
      001046 F6               [12] 3439 	mov	@r0,a
      001047 EC               [12] 3440 	mov	a,r4
      001048 70 03            [24] 3441 	jnz	00281$
      00104A 02 10 F8         [24] 3442 	ljmp	00134$
      00104D                       3443 00281$:
                                   3444 ;	DAP.c:875: datas[0] = (uint8_t)(*(req + 0));
      00104D 8D 82            [24] 3445 	mov	dpl,r5
      00104F 8E 83            [24] 3446 	mov	dph,r6
      001051 8F F0            [24] 3447 	mov	b,r7
      001053 12 25 DC         [24] 3448 	lcall	__gptrget
      001056 90 00 05         [24] 3449 	mov	dptr,#_datas
      001059 F0               [24] 3450 	movx	@dptr,a
                                   3451 ;	DAP.c:876: datas[1] = (uint8_t)(*(req + 1));
      00105A 74 01            [12] 3452 	mov	a,#0x01
      00105C 2D               [12] 3453 	add	a,r5
      00105D FA               [12] 3454 	mov	r2,a
      00105E E4               [12] 3455 	clr	a
      00105F 3E               [12] 3456 	addc	a,r6
      001060 FB               [12] 3457 	mov	r3,a
      001061 8F 04            [24] 3458 	mov	ar4,r7
      001063 8A 82            [24] 3459 	mov	dpl,r2
      001065 8B 83            [24] 3460 	mov	dph,r3
      001067 8C F0            [24] 3461 	mov	b,r4
      001069 12 25 DC         [24] 3462 	lcall	__gptrget
      00106C 90 00 06         [24] 3463 	mov	dptr,#(_datas + 0x0001)
      00106F F0               [24] 3464 	movx	@dptr,a
                                   3465 ;	DAP.c:877: datas[2] = (uint8_t)(*(req + 2));
      001070 74 02            [12] 3466 	mov	a,#0x02
      001072 2D               [12] 3467 	add	a,r5
      001073 FA               [12] 3468 	mov	r2,a
      001074 E4               [12] 3469 	clr	a
      001075 3E               [12] 3470 	addc	a,r6
      001076 FB               [12] 3471 	mov	r3,a
      001077 8F 04            [24] 3472 	mov	ar4,r7
      001079 8A 82            [24] 3473 	mov	dpl,r2
      00107B 8B 83            [24] 3474 	mov	dph,r3
      00107D 8C F0            [24] 3475 	mov	b,r4
      00107F 12 25 DC         [24] 3476 	lcall	__gptrget
      001082 90 00 07         [24] 3477 	mov	dptr,#(_datas + 0x0002)
      001085 F0               [24] 3478 	movx	@dptr,a
                                   3479 ;	DAP.c:878: datas[3] = (uint8_t)(*(req + 3));
      001086 74 03            [12] 3480 	mov	a,#0x03
      001088 2D               [12] 3481 	add	a,r5
      001089 FA               [12] 3482 	mov	r2,a
      00108A E4               [12] 3483 	clr	a
      00108B 3E               [12] 3484 	addc	a,r6
      00108C FB               [12] 3485 	mov	r3,a
      00108D 8F 04            [24] 3486 	mov	ar4,r7
      00108F 8A 82            [24] 3487 	mov	dpl,r2
      001091 8B 83            [24] 3488 	mov	dph,r3
      001093 8C F0            [24] 3489 	mov	b,r4
      001095 12 25 DC         [24] 3490 	lcall	__gptrget
      001098 FA               [12] 3491 	mov	r2,a
      001099 90 00 08         [24] 3492 	mov	dptr,#(_datas + 0x0003)
      00109C F0               [24] 3493 	movx	@dptr,a
                                   3494 ;	DAP.c:880: req += 4;
      00109D 74 04            [12] 3495 	mov	a,#0x04
      00109F 2D               [12] 3496 	add	a,r5
      0010A0 FD               [12] 3497 	mov	r5,a
      0010A1 E4               [12] 3498 	clr	a
      0010A2 3E               [12] 3499 	addc	a,r6
      0010A3 FE               [12] 3500 	mov	r6,a
                                   3501 ;	DAP.c:882: retry = retry_count;
      0010A4 78 59            [12] 3502 	mov	r0,#_retry_count
      0010A6 86 03            [24] 3503 	mov	ar3,@r0
      0010A8 08               [12] 3504 	inc	r0
      0010A9 86 04            [24] 3505 	mov	ar4,@r0
      0010AB 78 6A            [12] 3506 	mov	r0,#_retry
      0010AD A6 03            [24] 3507 	mov	@r0,ar3
      0010AF 08               [12] 3508 	inc	r0
      0010B0 A6 04            [24] 3509 	mov	@r0,ar4
                                   3510 ;	DAP.c:883: do
      0010B2                       3511 00127$:
                                   3512 ;	DAP.c:885: response_value = SWD_Transfer(request_value, datas);
      0010B2 75 48 05         [24] 3513 	mov	_SWD_Transfer_PARM_2,#_datas
      0010B5 75 49 00         [24] 3514 	mov	(_SWD_Transfer_PARM_2 + 1),#(_datas >> 8)
      0010B8 78 67            [12] 3515 	mov	r0,#_request_value
      0010BA 86 82            [24] 3516 	mov	dpl,@r0
      0010BC C0 07            [24] 3517 	push	ar7
      0010BE C0 06            [24] 3518 	push	ar6
      0010C0 C0 05            [24] 3519 	push	ar5
      0010C2 12 15 EA         [24] 3520 	lcall	_SWD_Transfer
      0010C5 AC 82            [24] 3521 	mov	r4,dpl
      0010C7 D0 05            [24] 3522 	pop	ar5
      0010C9 D0 06            [24] 3523 	pop	ar6
      0010CB D0 07            [24] 3524 	pop	ar7
      0010CD 78 69            [12] 3525 	mov	r0,#_response_value
      0010CF A6 04            [24] 3526 	mov	@r0,ar4
                                   3527 ;	DAP.c:887: while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
      0010D1 BC 02 1B         [24] 3528 	cjne	r4,#0x02,00129$
      0010D4 78 6A            [12] 3529 	mov	r0,#_retry
      0010D6 86 02            [24] 3530 	mov	ar2,@r0
      0010D8 08               [12] 3531 	inc	r0
      0010D9 86 03            [24] 3532 	mov	ar3,@r0
      0010DB 78 6A            [12] 3533 	mov	r0,#_retry
      0010DD EA               [12] 3534 	mov	a,r2
      0010DE 24 FF            [12] 3535 	add	a,#0xff
      0010E0 F6               [12] 3536 	mov	@r0,a
      0010E1 EB               [12] 3537 	mov	a,r3
      0010E2 34 FF            [12] 3538 	addc	a,#0xff
      0010E4 08               [12] 3539 	inc	r0
      0010E5 F6               [12] 3540 	mov	@r0,a
      0010E6 EA               [12] 3541 	mov	a,r2
      0010E7 4B               [12] 3542 	orl	a,r3
      0010E8 60 05            [24] 3543 	jz	00129$
      0010EA 78 65            [12] 3544 	mov	r0,#_DAP_TransferAbort
      0010EC E6               [12] 3545 	mov	a,@r0
      0010ED 60 C3            [24] 3546 	jz	00127$
      0010EF                       3547 00129$:
                                   3548 ;	DAP.c:888: if (response_value != DAP_TRANSFER_OK)
      0010EF BC 01 43         [24] 3549 	cjne	r4,#0x01,00143$
                                   3550 ;	DAP.c:892: response_count++;
      0010F2 78 68            [12] 3551 	mov	r0,#_response_count
      0010F4 06               [12] 3552 	inc	@r0
      0010F5 02 10 3E         [24] 3553 	ljmp	00132$
      0010F8                       3554 00134$:
                                   3555 ;	DAP.c:895: retry = retry_count;
      0010F8 78 59            [12] 3556 	mov	r0,#_retry_count
      0010FA 86 06            [24] 3557 	mov	ar6,@r0
      0010FC 08               [12] 3558 	inc	r0
      0010FD 86 07            [24] 3559 	mov	ar7,@r0
      0010FF 78 6A            [12] 3560 	mov	r0,#_retry
      001101 A6 06            [24] 3561 	mov	@r0,ar6
      001103 08               [12] 3562 	inc	r0
      001104 A6 07            [24] 3563 	mov	@r0,ar7
                                   3564 ;	DAP.c:896: do
      001106                       3565 00137$:
                                   3566 ;	DAP.c:898: response_value = SWD_Transfer(DP_RDBUFF | DAP_TRANSFER_RnW, NULL);
      001106 E4               [12] 3567 	clr	a
      001107 F5 48            [12] 3568 	mov	_SWD_Transfer_PARM_2,a
      001109 F5 49            [12] 3569 	mov	(_SWD_Transfer_PARM_2 + 1),a
      00110B 75 82 0E         [24] 3570 	mov	dpl,#0x0e
      00110E 12 15 EA         [24] 3571 	lcall	_SWD_Transfer
      001111 AF 82            [24] 3572 	mov	r7,dpl
      001113 78 69            [12] 3573 	mov	r0,#_response_value
      001115 A6 07            [24] 3574 	mov	@r0,ar7
                                   3575 ;	DAP.c:900: while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
      001117 BF 02 1B         [24] 3576 	cjne	r7,#0x02,00143$
      00111A 78 6A            [12] 3577 	mov	r0,#_retry
      00111C 86 06            [24] 3578 	mov	ar6,@r0
      00111E 08               [12] 3579 	inc	r0
      00111F 86 07            [24] 3580 	mov	ar7,@r0
      001121 78 6A            [12] 3581 	mov	r0,#_retry
      001123 EE               [12] 3582 	mov	a,r6
      001124 24 FF            [12] 3583 	add	a,#0xff
      001126 F6               [12] 3584 	mov	@r0,a
      001127 EF               [12] 3585 	mov	a,r7
      001128 34 FF            [12] 3586 	addc	a,#0xff
      00112A 08               [12] 3587 	inc	r0
      00112B F6               [12] 3588 	mov	@r0,a
      00112C EE               [12] 3589 	mov	a,r6
      00112D 4F               [12] 3590 	orl	a,r7
      00112E 60 05            [24] 3591 	jz	00143$
      001130 78 65            [12] 3592 	mov	r0,#_DAP_TransferAbort
      001132 E6               [12] 3593 	mov	a,@r0
      001133 60 D1            [24] 3594 	jz	00137$
                                   3595 ;	DAP.c:903: end:
      001135                       3596 00143$:
                                   3597 ;	DAP.c:904: *(response_head + 0) = (uint8_t)(response_count >> 0);
      001135 78 68            [12] 3598 	mov	r0,#_response_count
      001137 86 07            [24] 3599 	mov	ar7,@r0
      001139 85 2A 82         [24] 3600 	mov	dpl,_DAP_SWD_TransferBlock_response_head_65536_145
      00113C 85 2B 83         [24] 3601 	mov	dph,(_DAP_SWD_TransferBlock_response_head_65536_145 + 1)
      00113F 85 2C F0         [24] 3602 	mov	b,(_DAP_SWD_TransferBlock_response_head_65536_145 + 2)
      001142 EF               [12] 3603 	mov	a,r7
      001143 12 25 C1         [24] 3604 	lcall	__gptrput
                                   3605 ;	DAP.c:905: *(response_head + 1) = (uint8_t)(response_count >> 8);
      001146 74 01            [12] 3606 	mov	a,#0x01
      001148 25 2A            [12] 3607 	add	a,_DAP_SWD_TransferBlock_response_head_65536_145
      00114A FD               [12] 3608 	mov	r5,a
      00114B E4               [12] 3609 	clr	a
      00114C 35 2B            [12] 3610 	addc	a,(_DAP_SWD_TransferBlock_response_head_65536_145 + 1)
      00114E FE               [12] 3611 	mov	r6,a
      00114F AF 2C            [24] 3612 	mov	r7,(_DAP_SWD_TransferBlock_response_head_65536_145 + 2)
      001151 8D 82            [24] 3613 	mov	dpl,r5
      001153 8E 83            [24] 3614 	mov	dph,r6
      001155 8F F0            [24] 3615 	mov	b,r7
      001157 E4               [12] 3616 	clr	a
      001158 12 25 C1         [24] 3617 	lcall	__gptrput
                                   3618 ;	DAP.c:906: *(response_head + 2) = (uint8_t)response_value;
      00115B 74 02            [12] 3619 	mov	a,#0x02
      00115D 25 2A            [12] 3620 	add	a,_DAP_SWD_TransferBlock_response_head_65536_145
      00115F FD               [12] 3621 	mov	r5,a
      001160 E4               [12] 3622 	clr	a
      001161 35 2B            [12] 3623 	addc	a,(_DAP_SWD_TransferBlock_response_head_65536_145 + 1)
      001163 FE               [12] 3624 	mov	r6,a
      001164 AF 2C            [24] 3625 	mov	r7,(_DAP_SWD_TransferBlock_response_head_65536_145 + 2)
      001166 8D 82            [24] 3626 	mov	dpl,r5
      001168 8E 83            [24] 3627 	mov	dph,r6
      00116A 8F F0            [24] 3628 	mov	b,r7
      00116C 78 69            [12] 3629 	mov	r0,#_response_value
      00116E E6               [12] 3630 	mov	a,@r0
      00116F 12 25 C1         [24] 3631 	lcall	__gptrput
                                   3632 ;	DAP.c:908: return ((uint8_t)(res - response_head));
      001172 E5 27            [12] 3633 	mov	a,_DAP_SWD_TransferBlock_PARM_2
      001174 C3               [12] 3634 	clr	c
      001175 95 2A            [12] 3635 	subb	a,_DAP_SWD_TransferBlock_response_head_65536_145
      001177 FE               [12] 3636 	mov	r6,a
      001178 E5 28            [12] 3637 	mov	a,(_DAP_SWD_TransferBlock_PARM_2 + 1)
      00117A 95 2B            [12] 3638 	subb	a,(_DAP_SWD_TransferBlock_response_head_65536_145 + 1)
      00117C 8E 82            [24] 3639 	mov	dpl,r6
                                   3640 ;	DAP.c:909: }
      00117E 22               [24] 3641 	ret
                                   3642 ;------------------------------------------------------------
                                   3643 ;Allocation info for local variables in function 'DAP_TransferBlock'
                                   3644 ;------------------------------------------------------------
                                   3645 ;res                       Allocated with name '_DAP_TransferBlock_PARM_2'
                                   3646 ;req                       Allocated to registers r5 r6 r7 
                                   3647 ;num                       Allocated to registers r7 
                                   3648 ;sloc0                     Allocated with name '_DAP_TransferBlock_sloc0_1_0'
                                   3649 ;------------------------------------------------------------
                                   3650 ;	DAP.c:916: static uint8_t DAP_TransferBlock(const uint8_t *req, uint8_t *res)
                                   3651 ;	-----------------------------------------
                                   3652 ;	 function DAP_TransferBlock
                                   3653 ;	-----------------------------------------
      00117F                       3654 _DAP_TransferBlock:
      00117F AD 82            [24] 3655 	mov	r5,dpl
      001181 AE 83            [24] 3656 	mov	r6,dph
      001183 AF F0            [24] 3657 	mov	r7,b
                                   3658 ;	DAP.c:920: switch (debug_port)
      001185 78 55            [12] 3659 	mov	r0,#_debug_port
      001187 B6 01 16         [24] 3660 	cjne	@r0,#0x01,00102$
                                   3661 ;	DAP.c:923: num = DAP_SWD_TransferBlock(req, res);
      00118A 85 32 27         [24] 3662 	mov	_DAP_SWD_TransferBlock_PARM_2,_DAP_TransferBlock_PARM_2
      00118D 85 33 28         [24] 3663 	mov	(_DAP_SWD_TransferBlock_PARM_2 + 1),(_DAP_TransferBlock_PARM_2 + 1)
      001190 85 34 29         [24] 3664 	mov	(_DAP_SWD_TransferBlock_PARM_2 + 2),(_DAP_TransferBlock_PARM_2 + 2)
      001193 8D 82            [24] 3665 	mov	dpl,r5
      001195 8E 83            [24] 3666 	mov	dph,r6
      001197 8F F0            [24] 3667 	mov	b,r7
      001199 12 0E 62         [24] 3668 	lcall	_DAP_SWD_TransferBlock
      00119C AF 82            [24] 3669 	mov	r7,dpl
                                   3670 ;	DAP.c:924: break;
                                   3671 ;	DAP.c:926: default:
      00119E 80 41            [24] 3672 	sjmp	00103$
      0011A0                       3673 00102$:
                                   3674 ;	DAP.c:927: *(res + 0) = 0U; // res count [7:0]
      0011A0 85 32 35         [24] 3675 	mov	_DAP_TransferBlock_sloc0_1_0,_DAP_TransferBlock_PARM_2
      0011A3 85 33 36         [24] 3676 	mov	(_DAP_TransferBlock_sloc0_1_0 + 1),(_DAP_TransferBlock_PARM_2 + 1)
      0011A6 85 34 37         [24] 3677 	mov	(_DAP_TransferBlock_sloc0_1_0 + 2),(_DAP_TransferBlock_PARM_2 + 2)
      0011A9 85 35 82         [24] 3678 	mov	dpl,_DAP_TransferBlock_sloc0_1_0
      0011AC 85 36 83         [24] 3679 	mov	dph,(_DAP_TransferBlock_sloc0_1_0 + 1)
      0011AF 85 37 F0         [24] 3680 	mov	b,(_DAP_TransferBlock_sloc0_1_0 + 2)
      0011B2 E4               [12] 3681 	clr	a
      0011B3 12 25 C1         [24] 3682 	lcall	__gptrput
                                   3683 ;	DAP.c:928: *(res + 1) = 0U; // res count[15:8]
      0011B6 04               [12] 3684 	inc	a
      0011B7 25 35            [12] 3685 	add	a,_DAP_TransferBlock_sloc0_1_0
      0011B9 FA               [12] 3686 	mov	r2,a
      0011BA E4               [12] 3687 	clr	a
      0011BB 35 36            [12] 3688 	addc	a,(_DAP_TransferBlock_sloc0_1_0 + 1)
      0011BD FB               [12] 3689 	mov	r3,a
      0011BE AE 37            [24] 3690 	mov	r6,(_DAP_TransferBlock_sloc0_1_0 + 2)
      0011C0 8A 82            [24] 3691 	mov	dpl,r2
      0011C2 8B 83            [24] 3692 	mov	dph,r3
      0011C4 8E F0            [24] 3693 	mov	b,r6
      0011C6 E4               [12] 3694 	clr	a
      0011C7 12 25 C1         [24] 3695 	lcall	__gptrput
                                   3696 ;	DAP.c:929: *(res + 2) = 0U; // res value
      0011CA 74 02            [12] 3697 	mov	a,#0x02
      0011CC 25 35            [12] 3698 	add	a,_DAP_TransferBlock_sloc0_1_0
      0011CE FC               [12] 3699 	mov	r4,a
      0011CF E4               [12] 3700 	clr	a
      0011D0 35 36            [12] 3701 	addc	a,(_DAP_TransferBlock_sloc0_1_0 + 1)
      0011D2 FD               [12] 3702 	mov	r5,a
      0011D3 AE 37            [24] 3703 	mov	r6,(_DAP_TransferBlock_sloc0_1_0 + 2)
      0011D5 8C 82            [24] 3704 	mov	dpl,r4
      0011D7 8D 83            [24] 3705 	mov	dph,r5
      0011D9 8E F0            [24] 3706 	mov	b,r6
      0011DB E4               [12] 3707 	clr	a
      0011DC 12 25 C1         [24] 3708 	lcall	__gptrput
                                   3709 ;	DAP.c:930: num = 3U;
      0011DF 7F 03            [12] 3710 	mov	r7,#0x03
                                   3711 ;	DAP.c:932: }
      0011E1                       3712 00103$:
                                   3713 ;	DAP.c:945: return (num);
      0011E1 8F 82            [24] 3714 	mov	dpl,r7
                                   3715 ;	DAP.c:946: }
      0011E3 22               [24] 3716 	ret
                                   3717 ;------------------------------------------------------------
                                   3718 ;Allocation info for local variables in function 'DAP_SWD_WriteAbort'
                                   3719 ;------------------------------------------------------------
                                   3720 ;res                       Allocated with name '_DAP_SWD_WriteAbort_PARM_2'
                                   3721 ;req                       Allocated to registers r5 r6 r7 
                                   3722 ;------------------------------------------------------------
                                   3723 ;	DAP.c:952: static uint8_t DAP_SWD_WriteAbort(const uint8_t *req, uint8_t *res)
                                   3724 ;	-----------------------------------------
                                   3725 ;	 function DAP_SWD_WriteAbort
                                   3726 ;	-----------------------------------------
      0011E4                       3727 _DAP_SWD_WriteAbort:
      0011E4 AD 82            [24] 3728 	mov	r5,dpl
      0011E6 AE 83            [24] 3729 	mov	r6,dph
      0011E8 AF F0            [24] 3730 	mov	r7,b
                                   3731 ;	DAP.c:955: datas[0] = (uint8_t)(*(req + 1));
      0011EA 74 01            [12] 3732 	mov	a,#0x01
      0011EC 2D               [12] 3733 	add	a,r5
      0011ED FA               [12] 3734 	mov	r2,a
      0011EE E4               [12] 3735 	clr	a
      0011EF 3E               [12] 3736 	addc	a,r6
      0011F0 FB               [12] 3737 	mov	r3,a
      0011F1 8F 04            [24] 3738 	mov	ar4,r7
      0011F3 8A 82            [24] 3739 	mov	dpl,r2
      0011F5 8B 83            [24] 3740 	mov	dph,r3
      0011F7 8C F0            [24] 3741 	mov	b,r4
      0011F9 12 25 DC         [24] 3742 	lcall	__gptrget
      0011FC 90 00 05         [24] 3743 	mov	dptr,#_datas
      0011FF F0               [24] 3744 	movx	@dptr,a
                                   3745 ;	DAP.c:956: datas[1] = (uint8_t)(*(req + 2));
      001200 74 02            [12] 3746 	mov	a,#0x02
      001202 2D               [12] 3747 	add	a,r5
      001203 FA               [12] 3748 	mov	r2,a
      001204 E4               [12] 3749 	clr	a
      001205 3E               [12] 3750 	addc	a,r6
      001206 FB               [12] 3751 	mov	r3,a
      001207 8F 04            [24] 3752 	mov	ar4,r7
      001209 8A 82            [24] 3753 	mov	dpl,r2
      00120B 8B 83            [24] 3754 	mov	dph,r3
      00120D 8C F0            [24] 3755 	mov	b,r4
      00120F 12 25 DC         [24] 3756 	lcall	__gptrget
      001212 90 00 06         [24] 3757 	mov	dptr,#(_datas + 0x0001)
      001215 F0               [24] 3758 	movx	@dptr,a
                                   3759 ;	DAP.c:957: datas[2] = (uint8_t)(*(req + 3));
      001216 74 03            [12] 3760 	mov	a,#0x03
      001218 2D               [12] 3761 	add	a,r5
      001219 FA               [12] 3762 	mov	r2,a
      00121A E4               [12] 3763 	clr	a
      00121B 3E               [12] 3764 	addc	a,r6
      00121C FB               [12] 3765 	mov	r3,a
      00121D 8F 04            [24] 3766 	mov	ar4,r7
      00121F 8A 82            [24] 3767 	mov	dpl,r2
      001221 8B 83            [24] 3768 	mov	dph,r3
      001223 8C F0            [24] 3769 	mov	b,r4
      001225 12 25 DC         [24] 3770 	lcall	__gptrget
      001228 90 00 07         [24] 3771 	mov	dptr,#(_datas + 0x0002)
      00122B F0               [24] 3772 	movx	@dptr,a
                                   3773 ;	DAP.c:958: datas[3] = (uint8_t)(*(req + 4));
      00122C 74 04            [12] 3774 	mov	a,#0x04
      00122E 2D               [12] 3775 	add	a,r5
      00122F FD               [12] 3776 	mov	r5,a
      001230 E4               [12] 3777 	clr	a
      001231 3E               [12] 3778 	addc	a,r6
      001232 FE               [12] 3779 	mov	r6,a
      001233 8D 82            [24] 3780 	mov	dpl,r5
      001235 8E 83            [24] 3781 	mov	dph,r6
      001237 8F F0            [24] 3782 	mov	b,r7
      001239 12 25 DC         [24] 3783 	lcall	__gptrget
      00123C 90 00 08         [24] 3784 	mov	dptr,#(_datas + 0x0003)
      00123F F0               [24] 3785 	movx	@dptr,a
                                   3786 ;	DAP.c:961: SWD_Transfer(DP_ABORT, datas);
      001240 75 48 05         [24] 3787 	mov	_SWD_Transfer_PARM_2,#_datas
      001243 75 49 00         [24] 3788 	mov	(_SWD_Transfer_PARM_2 + 1),#(_datas >> 8)
      001246 75 82 00         [24] 3789 	mov	dpl,#0x00
      001249 12 15 EA         [24] 3790 	lcall	_SWD_Transfer
                                   3791 ;	DAP.c:963: *res = DAP_OK;
      00124C AD 38            [24] 3792 	mov	r5,_DAP_SWD_WriteAbort_PARM_2
      00124E AE 39            [24] 3793 	mov	r6,(_DAP_SWD_WriteAbort_PARM_2 + 1)
      001250 AF 3A            [24] 3794 	mov	r7,(_DAP_SWD_WriteAbort_PARM_2 + 2)
      001252 8D 82            [24] 3795 	mov	dpl,r5
      001254 8E 83            [24] 3796 	mov	dph,r6
      001256 8F F0            [24] 3797 	mov	b,r7
      001258 E4               [12] 3798 	clr	a
      001259 12 25 C1         [24] 3799 	lcall	__gptrput
                                   3800 ;	DAP.c:964: return (1U);
      00125C 75 82 01         [24] 3801 	mov	dpl,#0x01
                                   3802 ;	DAP.c:965: }
      00125F 22               [24] 3803 	ret
                                   3804 ;------------------------------------------------------------
                                   3805 ;Allocation info for local variables in function 'DAP_WriteAbort'
                                   3806 ;------------------------------------------------------------
                                   3807 ;res                       Allocated with name '_DAP_WriteAbort_PARM_2'
                                   3808 ;req                       Allocated to registers r5 r6 r7 
                                   3809 ;num                       Allocated to registers r7 
                                   3810 ;------------------------------------------------------------
                                   3811 ;	DAP.c:972: static uint8_t DAP_WriteAbort(const uint8_t *req, uint8_t *res)
                                   3812 ;	-----------------------------------------
                                   3813 ;	 function DAP_WriteAbort
                                   3814 ;	-----------------------------------------
      001260                       3815 _DAP_WriteAbort:
      001260 AD 82            [24] 3816 	mov	r5,dpl
      001262 AE 83            [24] 3817 	mov	r6,dph
      001264 AF F0            [24] 3818 	mov	r7,b
                                   3819 ;	DAP.c:976: switch (debug_port)
      001266 78 55            [12] 3820 	mov	r0,#_debug_port
      001268 B6 01 16         [24] 3821 	cjne	@r0,#0x01,00102$
                                   3822 ;	DAP.c:979: num = DAP_SWD_WriteAbort(req, res);
      00126B 85 3B 38         [24] 3823 	mov	_DAP_SWD_WriteAbort_PARM_2,_DAP_WriteAbort_PARM_2
      00126E 85 3C 39         [24] 3824 	mov	(_DAP_SWD_WriteAbort_PARM_2 + 1),(_DAP_WriteAbort_PARM_2 + 1)
      001271 85 3D 3A         [24] 3825 	mov	(_DAP_SWD_WriteAbort_PARM_2 + 2),(_DAP_WriteAbort_PARM_2 + 2)
      001274 8D 82            [24] 3826 	mov	dpl,r5
      001276 8E 83            [24] 3827 	mov	dph,r6
      001278 8F F0            [24] 3828 	mov	b,r7
      00127A 12 11 E4         [24] 3829 	lcall	_DAP_SWD_WriteAbort
      00127D AF 82            [24] 3830 	mov	r7,dpl
                                   3831 ;	DAP.c:980: break;
                                   3832 ;	DAP.c:982: default:
      00127F 80 13            [24] 3833 	sjmp	00103$
      001281                       3834 00102$:
                                   3835 ;	DAP.c:983: *res = DAP_ERROR;
      001281 AC 3B            [24] 3836 	mov	r4,_DAP_WriteAbort_PARM_2
      001283 AD 3C            [24] 3837 	mov	r5,(_DAP_WriteAbort_PARM_2 + 1)
      001285 AE 3D            [24] 3838 	mov	r6,(_DAP_WriteAbort_PARM_2 + 2)
      001287 8C 82            [24] 3839 	mov	dpl,r4
      001289 8D 83            [24] 3840 	mov	dph,r5
      00128B 8E F0            [24] 3841 	mov	b,r6
      00128D 74 FF            [12] 3842 	mov	a,#0xff
      00128F 12 25 C1         [24] 3843 	lcall	__gptrput
                                   3844 ;	DAP.c:984: num = 1U;
      001292 7F 01            [12] 3845 	mov	r7,#0x01
                                   3846 ;	DAP.c:986: }
      001294                       3847 00103$:
                                   3848 ;	DAP.c:987: return num;
      001294 8F 82            [24] 3849 	mov	dpl,r7
                                   3850 ;	DAP.c:988: }
      001296 22               [24] 3851 	ret
                                   3852 ;------------------------------------------------------------
                                   3853 ;Allocation info for local variables in function 'DAP_Thread'
                                   3854 ;------------------------------------------------------------
                                   3855 ;num                       Allocated to registers r6 
                                   3856 ;returnVal                 Allocated to registers 
                                   3857 ;t                         Allocated to registers r3 r4 r5 r6 
                                   3858 ;req                       Allocated to registers 
                                   3859 ;res                       Allocated to registers 
                                   3860 ;------------------------------------------------------------
                                   3861 ;	DAP.c:992: uint8_t DAP_Thread(void)
                                   3862 ;	-----------------------------------------
                                   3863 ;	 function DAP_Thread
                                   3864 ;	-----------------------------------------
      001297                       3865 _DAP_Thread:
                                   3866 ;	DAP.c:1000: uint8_t __xdata *req = &Ep1Buffer[0];
                                   3867 ;	DAP.c:1001: uint8_t __xdata *res = &Ep1Buffer[64];
                                   3868 ;	DAP.c:1003: *res++ = *req;
      001297 90 01 75         [24] 3869 	mov	dptr,#_Ep1Buffer
      00129A E0               [24] 3870 	movx	a,@dptr
      00129B 90 01 B5         [24] 3871 	mov	dptr,#(_Ep1Buffer + 0x0040)
      00129E F0               [24] 3872 	movx	@dptr,a
                                   3873 ;	DAP.c:1004: switch (*req++)
      00129F 90 01 75         [24] 3874 	mov	dptr,#_Ep1Buffer
      0012A2 E0               [24] 3875 	movx	a,@dptr
      0012A3 FF               [12] 3876 	mov	r7,a
      0012A4 BF 00 03         [24] 3877 	cjne	r7,#0x00,00215$
      0012A7 02 13 3F         [24] 3878 	ljmp	00103$
      0012AA                       3879 00215$:
      0012AA BF 01 03         [24] 3880 	cjne	r7,#0x01,00216$
      0012AD 02 13 5F         [24] 3881 	ljmp	00104$
      0012B0                       3882 00216$:
      0012B0 BF 02 03         [24] 3883 	cjne	r7,#0x02,00217$
      0012B3 02 13 76         [24] 3884 	ljmp	00105$
      0012B6                       3885 00217$:
      0012B6 BF 03 03         [24] 3886 	cjne	r7,#0x03,00218$
      0012B9 02 13 8D         [24] 3887 	ljmp	00106$
      0012BC                       3888 00218$:
      0012BC BF 04 03         [24] 3889 	cjne	r7,#0x04,00219$
      0012BF 02 14 32         [24] 3890 	ljmp	00114$
      0012C2                       3891 00219$:
      0012C2 BF 05 02         [24] 3892 	cjne	r7,#0x05,00220$
      0012C5 80 4A            [24] 3893 	sjmp	00101$
      0012C7                       3894 00220$:
      0012C7 BF 06 02         [24] 3895 	cjne	r7,#0x06,00221$
      0012CA 80 5C            [24] 3896 	sjmp	00102$
      0012CC                       3897 00221$:
      0012CC BF 08 03         [24] 3898 	cjne	r7,#0x08,00222$
      0012CF 02 14 48         [24] 3899 	ljmp	00115$
      0012D2                       3900 00222$:
      0012D2 BF 09 03         [24] 3901 	cjne	r7,#0x09,00223$
      0012D5 02 13 9B         [24] 3902 	ljmp	00107$
      0012D8                       3903 00223$:
      0012D8 BF 0A 03         [24] 3904 	cjne	r7,#0x0a,00224$
      0012DB 02 13 B2         [24] 3905 	ljmp	00108$
      0012DE                       3906 00224$:
      0012DE BF 10 03         [24] 3907 	cjne	r7,#0x10,00225$
      0012E1 02 13 C0         [24] 3908 	ljmp	00109$
      0012E4                       3909 00225$:
      0012E4 BF 11 03         [24] 3910 	cjne	r7,#0x11,00226$
      0012E7 02 13 D7         [24] 3911 	ljmp	00110$
      0012EA                       3912 00226$:
      0012EA BF 12 03         [24] 3913 	cjne	r7,#0x12,00227$
      0012ED 02 13 EE         [24] 3914 	ljmp	00111$
      0012F0                       3915 00227$:
      0012F0 BF 13 03         [24] 3916 	cjne	r7,#0x13,00228$
      0012F3 02 14 05         [24] 3917 	ljmp	00112$
      0012F6                       3918 00228$:
      0012F6 BF 1D 03         [24] 3919 	cjne	r7,#0x1d,00229$
      0012F9 02 14 1C         [24] 3920 	ljmp	00113$
      0012FC                       3921 00229$:
      0012FC BF 7E 03         [24] 3922 	cjne	r7,#0x7e,00230$
      0012FF 02 14 86         [24] 3923 	ljmp	00119$
      001302                       3924 00230$:
      001302 BF 7F 03         [24] 3925 	cjne	r7,#0x7f,00231$
      001305 02 14 86         [24] 3926 	ljmp	00119$
      001308                       3927 00231$:
      001308 BF FF 03         [24] 3928 	cjne	r7,#0xff,00232$
      00130B 02 14 5E         [24] 3929 	ljmp	00116$
      00130E                       3930 00232$:
      00130E 02 14 86         [24] 3931 	ljmp	00119$
                                   3932 ;	DAP.c:1006: case ID_DAP_Transfer:
      001311                       3933 00101$:
                                   3934 ;	DAP.c:1007: num = DAP_Transfer(req, res);
      001311 75 24 B6         [24] 3935 	mov	_DAP_Transfer_PARM_2,#(_Ep1Buffer + 0x0041)
      001314 75 25 01         [24] 3936 	mov	(_DAP_Transfer_PARM_2 + 1),#((_Ep1Buffer + 0x0041) >> 8)
      001317 75 26 00         [24] 3937 	mov	(_DAP_Transfer_PARM_2 + 2),#0x00
      00131A 90 01 76         [24] 3938 	mov	dptr,#(_Ep1Buffer + 0x0001)
      00131D 75 F0 00         [24] 3939 	mov	b,#0x00
      001320 12 0E 4A         [24] 3940 	lcall	_DAP_Transfer
      001323 AF 82            [24] 3941 	mov	r7,dpl
                                   3942 ;	DAP.c:1008: break;
      001325 02 14 8E         [24] 3943 	ljmp	00120$
                                   3944 ;	DAP.c:1010: case ID_DAP_TransferBlock:
      001328                       3945 00102$:
                                   3946 ;	DAP.c:1011: num = DAP_TransferBlock(req, res);
      001328 75 32 B6         [24] 3947 	mov	_DAP_TransferBlock_PARM_2,#(_Ep1Buffer + 0x0041)
      00132B 75 33 01         [24] 3948 	mov	(_DAP_TransferBlock_PARM_2 + 1),#((_Ep1Buffer + 0x0041) >> 8)
      00132E 75 34 00         [24] 3949 	mov	(_DAP_TransferBlock_PARM_2 + 2),#0x00
      001331 90 01 76         [24] 3950 	mov	dptr,#(_Ep1Buffer + 0x0001)
      001334 75 F0 00         [24] 3951 	mov	b,#0x00
      001337 12 11 7F         [24] 3952 	lcall	_DAP_TransferBlock
      00133A AF 82            [24] 3953 	mov	r7,dpl
                                   3954 ;	DAP.c:1012: break;
      00133C 02 14 8E         [24] 3955 	ljmp	00120$
                                   3956 ;	DAP.c:1014: case ID_DAP_Info:
      00133F                       3957 00103$:
                                   3958 ;	DAP.c:1015: num = DAP_Info(*req, res + 1);
      00133F 90 01 76         [24] 3959 	mov	dptr,#(_Ep1Buffer + 0x0001)
      001342 E0               [24] 3960 	movx	a,@dptr
      001343 FE               [12] 3961 	mov	r6,a
      001344 75 09 B7         [24] 3962 	mov	_DAP_Info_PARM_2,#(_Ep1Buffer + 0x0042)
      001347 75 0A 01         [24] 3963 	mov	(_DAP_Info_PARM_2 + 1),#((_Ep1Buffer + 0x0042) >> 8)
      00134A 75 0B 00         [24] 3964 	mov	(_DAP_Info_PARM_2 + 2),#0x00
      00134D 8E 82            [24] 3965 	mov	dpl,r6
      00134F 12 01 2D         [24] 3966 	lcall	_DAP_Info
      001352 AE 82            [24] 3967 	mov	r6,dpl
                                   3968 ;	DAP.c:1016: *res = (uint8_t)num;
      001354 90 01 B6         [24] 3969 	mov	dptr,#(_Ep1Buffer + 0x0041)
      001357 EE               [12] 3970 	mov	a,r6
      001358 F0               [24] 3971 	movx	@dptr,a
                                   3972 ;	DAP.c:1017: num++;
      001359 EE               [12] 3973 	mov	a,r6
      00135A 04               [12] 3974 	inc	a
      00135B FF               [12] 3975 	mov	r7,a
                                   3976 ;	DAP.c:1018: break;
      00135C 02 14 8E         [24] 3977 	ljmp	00120$
                                   3978 ;	DAP.c:1020: case ID_DAP_HostStatus:
      00135F                       3979 00104$:
                                   3980 ;	DAP.c:1021: num = DAP_HostStatus(req, res);
      00135F 75 48 B6         [24] 3981 	mov	_DAP_HostStatus_PARM_2,#(_Ep1Buffer + 0x0041)
      001362 75 49 01         [24] 3982 	mov	(_DAP_HostStatus_PARM_2 + 1),#((_Ep1Buffer + 0x0041) >> 8)
      001365 75 4A 00         [24] 3983 	mov	(_DAP_HostStatus_PARM_2 + 2),#0x00
      001368 90 01 76         [24] 3984 	mov	dptr,#(_Ep1Buffer + 0x0001)
      00136B 75 F0 00         [24] 3985 	mov	b,#0x00
      00136E 12 02 36         [24] 3986 	lcall	_DAP_HostStatus
      001371 AF 82            [24] 3987 	mov	r7,dpl
                                   3988 ;	DAP.c:1022: break;
      001373 02 14 8E         [24] 3989 	ljmp	00120$
                                   3990 ;	DAP.c:1024: case ID_DAP_Connect:
      001376                       3991 00105$:
                                   3992 ;	DAP.c:1025: num = DAP_Connect(req, res);
      001376 75 0C B6         [24] 3993 	mov	_DAP_Connect_PARM_2,#(_Ep1Buffer + 0x0041)
      001379 75 0D 01         [24] 3994 	mov	(_DAP_Connect_PARM_2 + 1),#((_Ep1Buffer + 0x0041) >> 8)
      00137C 75 0E 00         [24] 3995 	mov	(_DAP_Connect_PARM_2 + 2),#0x00
      00137F 90 01 76         [24] 3996 	mov	dptr,#(_Ep1Buffer + 0x0001)
      001382 75 F0 00         [24] 3997 	mov	b,#0x00
      001385 12 02 A4         [24] 3998 	lcall	_DAP_Connect
      001388 AF 82            [24] 3999 	mov	r7,dpl
                                   4000 ;	DAP.c:1026: break;
      00138A 02 14 8E         [24] 4001 	ljmp	00120$
                                   4002 ;	DAP.c:1028: case ID_DAP_Disconnect:
      00138D                       4003 00106$:
                                   4004 ;	DAP.c:1029: num = DAP_Disconnect(res);
      00138D 90 01 B6         [24] 4005 	mov	dptr,#(_Ep1Buffer + 0x0041)
      001390 75 F0 00         [24] 4006 	mov	b,#0x00
      001393 12 02 D8         [24] 4007 	lcall	_DAP_Disconnect
      001396 AF 82            [24] 4008 	mov	r7,dpl
                                   4009 ;	DAP.c:1030: break;
      001398 02 14 8E         [24] 4010 	ljmp	00120$
                                   4011 ;	DAP.c:1032: case ID_DAP_Delay:
      00139B                       4012 00107$:
                                   4013 ;	DAP.c:1033: num = DAP_Delay(req, res);
      00139B 75 48 B6         [24] 4014 	mov	_DAP_Delay_PARM_2,#(_Ep1Buffer + 0x0041)
      00139E 75 49 01         [24] 4015 	mov	(_DAP_Delay_PARM_2 + 1),#((_Ep1Buffer + 0x0041) >> 8)
      0013A1 75 4A 00         [24] 4016 	mov	(_DAP_Delay_PARM_2 + 2),#0x00
      0013A4 90 01 76         [24] 4017 	mov	dptr,#(_Ep1Buffer + 0x0001)
      0013A7 75 F0 00         [24] 4018 	mov	b,#0x00
      0013AA 12 01 F0         [24] 4019 	lcall	_DAP_Delay
      0013AD AF 82            [24] 4020 	mov	r7,dpl
                                   4021 ;	DAP.c:1034: break;
      0013AF 02 14 8E         [24] 4022 	ljmp	00120$
                                   4023 ;	DAP.c:1036: case ID_DAP_ResetTarget:
      0013B2                       4024 00108$:
                                   4025 ;	DAP.c:1037: num = DAP_ResetTarget(res);
      0013B2 90 01 B6         [24] 4026 	mov	dptr,#(_Ep1Buffer + 0x0041)
      0013B5 75 F0 00         [24] 4027 	mov	b,#0x00
      0013B8 12 02 FF         [24] 4028 	lcall	_DAP_ResetTarget
      0013BB AF 82            [24] 4029 	mov	r7,dpl
                                   4030 ;	DAP.c:1038: break;
      0013BD 02 14 8E         [24] 4031 	ljmp	00120$
                                   4032 ;	DAP.c:1040: case ID_DAP_SWJ_Pins:
      0013C0                       4033 00109$:
                                   4034 ;	DAP.c:1041: num = DAP_SWJ_Pins(req, res);
      0013C0 75 48 B6         [24] 4035 	mov	_DAP_SWJ_Pins_PARM_2,#(_Ep1Buffer + 0x0041)
      0013C3 75 49 01         [24] 4036 	mov	(_DAP_SWJ_Pins_PARM_2 + 1),#((_Ep1Buffer + 0x0041) >> 8)
      0013C6 75 4A 00         [24] 4037 	mov	(_DAP_SWJ_Pins_PARM_2 + 2),#0x00
      0013C9 90 01 76         [24] 4038 	mov	dptr,#(_Ep1Buffer + 0x0001)
      0013CC 75 F0 00         [24] 4039 	mov	b,#0x00
      0013CF 12 03 25         [24] 4040 	lcall	_DAP_SWJ_Pins
      0013D2 AF 82            [24] 4041 	mov	r7,dpl
                                   4042 ;	DAP.c:1042: break;
      0013D4 02 14 8E         [24] 4043 	ljmp	00120$
                                   4044 ;	DAP.c:1044: case ID_DAP_SWJ_Clock:
      0013D7                       4045 00110$:
                                   4046 ;	DAP.c:1045: num = DAP_SWJ_Clock(req, res);
      0013D7 75 0F B6         [24] 4047 	mov	_DAP_SWJ_Clock_PARM_2,#(_Ep1Buffer + 0x0041)
      0013DA 75 10 01         [24] 4048 	mov	(_DAP_SWJ_Clock_PARM_2 + 1),#((_Ep1Buffer + 0x0041) >> 8)
      0013DD 75 11 00         [24] 4049 	mov	(_DAP_SWJ_Clock_PARM_2 + 2),#0x00
      0013E0 90 01 76         [24] 4050 	mov	dptr,#(_Ep1Buffer + 0x0001)
      0013E3 75 F0 00         [24] 4051 	mov	b,#0x00
      0013E6 12 04 66         [24] 4052 	lcall	_DAP_SWJ_Clock
      0013E9 AF 82            [24] 4053 	mov	r7,dpl
                                   4054 ;	DAP.c:1046: break;
      0013EB 02 14 8E         [24] 4055 	ljmp	00120$
                                   4056 ;	DAP.c:1048: case ID_DAP_SWJ_Sequence:
      0013EE                       4057 00111$:
                                   4058 ;	DAP.c:1049: num = DAP_SWJ_Sequence(req, res);
      0013EE 75 12 B6         [24] 4059 	mov	_DAP_SWJ_Sequence_PARM_2,#(_Ep1Buffer + 0x0041)
      0013F1 75 13 01         [24] 4060 	mov	(_DAP_SWJ_Sequence_PARM_2 + 1),#((_Ep1Buffer + 0x0041) >> 8)
      0013F4 75 14 00         [24] 4061 	mov	(_DAP_SWJ_Sequence_PARM_2 + 2),#0x00
      0013F7 90 01 76         [24] 4062 	mov	dptr,#(_Ep1Buffer + 0x0001)
      0013FA 75 F0 00         [24] 4063 	mov	b,#0x00
      0013FD 12 04 F1         [24] 4064 	lcall	_DAP_SWJ_Sequence
      001400 AF 82            [24] 4065 	mov	r7,dpl
                                   4066 ;	DAP.c:1050: break;
      001402 02 14 8E         [24] 4067 	ljmp	00120$
                                   4068 ;	DAP.c:1052: case ID_DAP_SWD_Configure:
      001405                       4069 00112$:
                                   4070 ;	DAP.c:1053: num = DAP_SWD_Configure(req, res);
      001405 75 48 B6         [24] 4071 	mov	_DAP_SWD_Configure_PARM_2,#(_Ep1Buffer + 0x0041)
      001408 75 49 01         [24] 4072 	mov	(_DAP_SWD_Configure_PARM_2 + 1),#((_Ep1Buffer + 0x0041) >> 8)
      00140B 75 4A 00         [24] 4073 	mov	(_DAP_SWD_Configure_PARM_2 + 2),#0x00
      00140E 90 01 76         [24] 4074 	mov	dptr,#(_Ep1Buffer + 0x0001)
      001411 75 F0 00         [24] 4075 	mov	b,#0x00
      001414 12 05 25         [24] 4076 	lcall	_DAP_SWD_Configure
      001417 AF 82            [24] 4077 	mov	r7,dpl
                                   4078 ;	DAP.c:1054: break;
      001419 02 14 8E         [24] 4079 	ljmp	00120$
                                   4080 ;	DAP.c:1056: case ID_DAP_SWD_Sequence:
      00141C                       4081 00113$:
                                   4082 ;	DAP.c:1057: num = DAP_SWD_Sequence(req, res);
      00141C 75 15 B6         [24] 4083 	mov	_DAP_SWD_Sequence_PARM_2,#(_Ep1Buffer + 0x0041)
      00141F 75 16 01         [24] 4084 	mov	(_DAP_SWD_Sequence_PARM_2 + 1),#((_Ep1Buffer + 0x0041) >> 8)
      001422 75 17 00         [24] 4085 	mov	(_DAP_SWD_Sequence_PARM_2 + 2),#0x00
      001425 90 01 76         [24] 4086 	mov	dptr,#(_Ep1Buffer + 0x0001)
      001428 75 F0 00         [24] 4087 	mov	b,#0x00
      00142B 12 05 56         [24] 4088 	lcall	_DAP_SWD_Sequence
      00142E AF 82            [24] 4089 	mov	r7,dpl
                                   4090 ;	DAP.c:1058: break;
                                   4091 ;	DAP.c:1060: case ID_DAP_TransferConfigure:
      001430 80 5C            [24] 4092 	sjmp	00120$
      001432                       4093 00114$:
                                   4094 ;	DAP.c:1061: num = DAP_TransferConfigure(req, res);
      001432 75 48 B6         [24] 4095 	mov	_DAP_TransferConfigure_PARM_2,#(_Ep1Buffer + 0x0041)
      001435 75 49 01         [24] 4096 	mov	(_DAP_TransferConfigure_PARM_2 + 1),#((_Ep1Buffer + 0x0041) >> 8)
      001438 75 4A 00         [24] 4097 	mov	(_DAP_TransferConfigure_PARM_2 + 2),#0x00
      00143B 90 01 76         [24] 4098 	mov	dptr,#(_Ep1Buffer + 0x0001)
      00143E 75 F0 00         [24] 4099 	mov	b,#0x00
      001441 12 06 26         [24] 4100 	lcall	_DAP_TransferConfigure
      001444 AF 82            [24] 4101 	mov	r7,dpl
                                   4102 ;	DAP.c:1062: break;
                                   4103 ;	DAP.c:1064: case ID_DAP_WriteABORT:
      001446 80 46            [24] 4104 	sjmp	00120$
      001448                       4105 00115$:
                                   4106 ;	DAP.c:1065: num = DAP_WriteAbort(req, res);
      001448 75 3B B6         [24] 4107 	mov	_DAP_WriteAbort_PARM_2,#(_Ep1Buffer + 0x0041)
      00144B 75 3C 01         [24] 4108 	mov	(_DAP_WriteAbort_PARM_2 + 1),#((_Ep1Buffer + 0x0041) >> 8)
      00144E 75 3D 00         [24] 4109 	mov	(_DAP_WriteAbort_PARM_2 + 2),#0x00
      001451 90 01 76         [24] 4110 	mov	dptr,#(_Ep1Buffer + 0x0001)
      001454 75 F0 00         [24] 4111 	mov	b,#0x00
      001457 12 12 60         [24] 4112 	lcall	_DAP_WriteAbort
      00145A AF 82            [24] 4113 	mov	r7,dpl
                                   4114 ;	DAP.c:1066: break;
                                   4115 ;	DAP.c:1067: case 0xff:
      00145C 80 30            [24] 4116 	sjmp	00120$
      00145E                       4117 00116$:
                                   4118 ;	DAP.c:1069: t = calc();
      00145E 12 1A 67         [24] 4119 	lcall	_calc
      001461 AB 82            [24] 4120 	mov	r3,dpl
      001463 AC 83            [24] 4121 	mov	r4,dph
      001465 AD F0            [24] 4122 	mov	r5,b
      001467 FE               [12] 4123 	mov	r6,a
                                   4124 ;	DAP.c:1070: *res = (t >> 0);
      001468 8B 02            [24] 4125 	mov	ar2,r3
      00146A 90 01 B6         [24] 4126 	mov	dptr,#(_Ep1Buffer + 0x0041)
      00146D EA               [12] 4127 	mov	a,r2
      00146E F0               [24] 4128 	movx	@dptr,a
                                   4129 ;	DAP.c:1071: ++res;
                                   4130 ;	DAP.c:1072: *res = (t >> 8);
      00146F 8C 02            [24] 4131 	mov	ar2,r4
      001471 90 01 B7         [24] 4132 	mov	dptr,#(_Ep1Buffer + 0x0042)
      001474 EA               [12] 4133 	mov	a,r2
      001475 F0               [24] 4134 	movx	@dptr,a
                                   4135 ;	DAP.c:1073: ++res;
                                   4136 ;	DAP.c:1074: *res = (t >> 16);
      001476 8D 02            [24] 4137 	mov	ar2,r5
      001478 90 01 B8         [24] 4138 	mov	dptr,#(_Ep1Buffer + 0x0043)
      00147B EA               [12] 4139 	mov	a,r2
      00147C F0               [24] 4140 	movx	@dptr,a
                                   4141 ;	DAP.c:1075: ++res;
                                   4142 ;	DAP.c:1076: *res = (t >> 24);
      00147D 8E 03            [24] 4143 	mov	ar3,r6
      00147F 90 01 B9         [24] 4144 	mov	dptr,#(_Ep1Buffer + 0x0044)
      001482 EB               [12] 4145 	mov	a,r3
      001483 F0               [24] 4146 	movx	@dptr,a
                                   4147 ;	DAP.c:1077: break;
                                   4148 ;	DAP.c:1080: default:
      001484 80 08            [24] 4149 	sjmp	00120$
      001486                       4150 00119$:
                                   4151 ;	DAP.c:1081: *(res - 1) = ID_DAP_Invalid;
      001486 90 01 B5         [24] 4152 	mov	dptr,#(_Ep1Buffer + 0x0040)
      001489 74 FF            [12] 4153 	mov	a,#0xff
      00148B F0               [24] 4154 	movx	@dptr,a
                                   4155 ;	DAP.c:1082: num = 1;
      00148C 7F 01            [12] 4156 	mov	r7,#0x01
                                   4157 ;	DAP.c:1084: }
      00148E                       4158 00120$:
                                   4159 ;	DAP.c:1086: returnVal = num + 1;
      00148E EF               [12] 4160 	mov	a,r7
      00148F 04               [12] 4161 	inc	a
      001490 F5 82            [12] 4162 	mov	dpl,a
                                   4163 ;	DAP.c:1089: return returnVal;
                                   4164 ;	DAP.c:1090: }
      001492 22               [24] 4165 	ret
                                   4166 	.area CSEG    (CODE)
                                   4167 	.area CONST   (CODE)
      0025FC                       4168 __str_0:
      0025FC 31 2E 31 30           4169 	.ascii "1.10"
      002600 00                    4170 	.db 0x00
                                   4171 	.area XINIT   (CODE)
                                   4172 	.area CABS    (ABS,CODE)
