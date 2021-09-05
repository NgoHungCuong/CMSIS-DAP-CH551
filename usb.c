#include "usb.h"
#include "ch552.h"
#include <stdint.h>
#include "gpio.h"
#include "DAP.h"

/*=================================================================
USB demo
CH55x
Ngo Hung Cuong
=================================================================*/
#ifdef USB_DBG
	SBIT(LED, 0x90, 4);
#endif

#define EP0_SZ 64

__code uint8_t deviceDescriptor[] =
{
    0x12, 0x01, // bLength, bDescriptorType
    0x00, 0x02, // bcdUSB (low byte), bcdUSB (high byte)
    0x00, 0x00, // bDeviceClass, bDeviceSubClass
    0x00, EP0_SZ, // bDeviceProtocl, bMaxPacketSize
    0x48, 0x43, // idVendor (low byte), idVendor (high byte)
    0x07, 0x00, // idProduct (low byte), idProduct (high byte)
    0x01, 0x00, // bcdDevice (low byte), bcdDevice (high byte)
    0x01, 0x02, // iManufacturer, iProduct
    0x03, 0x01  // iSerialNumber (none), bNumConfigurations
};

__code uint8_t HID_DeviceReportDescriptor[] =
{
    0x06, 0x00, 0xFF,       // Usage Page = 0xFF00 (Vendor Defined Page 1)
    0x09, 0x01,             // Usage (Vendor Usage 1)
    0xA1, 0x01,             // Collection (Application)
    0x19, 0x01,             //      Usage Minimum 
    0x29, 0x40,             //      Usage Maximum 	//64 input usages total (0x01 to 0x40)
    0x15, 0x01,             //      Logical Minimum (data bytes in the report may have minimum value = 0x00)
    0x25, 0x40,      	  	//      Logical Maximum (data bytes in the report may have maximum value = 0x00FF = unsigned 255)
    0x75, 0x08,             //      Report Size: 8-bit field size
    0x95, 0x40,             //      Report Count: Make sixty-four 8-bit fields (the next time the parser hits an "Input", "Output", or "Feature" item)
    0x81, 0x00,             //      Input (Data, Array, Abs): Instantiates input packet fields based on the above report size, count, logical min/max, and usage.
    0x19, 0x01,             //      Usage Minimum 
    0x29, 0x40,             //      Usage Maximum 	//64 output usages total (0x01 to 0x40)
    0x91, 0x00,             //      Output (Data, Array, Abs): Instantiates output packet fields.  Uses same report size and count as "Input" fields, since nothing new/different was specified to the parser since the "Input" item.
    0xC0
};

__code uint8_t configDescriptor[] = {
#if 0	
	0x09, 			/* bLength: Configuration Descriptor size */
    0x02, 			/* bDescriptorType: Configuration */
    34,
					/* wTotalLength: Bytes returned */
    0x00,
    0x01,         	/* bNumInterfaces: 1 interface */
    0x01,         	/* bConfigurationValue: Configuration value */
    0x00,         	/* iConfiguration: Index of string descriptor describing
                                 the configuration*/
    0xC0,         	/* bmAttributes: Self powered */
    0x32,         	/* MaxPower 100 mA: this current is used for detecting Vbus */

    /* 09 */
    0x09,         	/* bLength: Interface Descriptor size */
    0x04, 		  	/* bDescriptorType: Interface descriptor type */
    0x00,         	/* bInterfaceNumber: Number of Interface */
    0x00,         	/* bAlternateSetting: Alternate setting */
    0x01,         	/* bNumEndpoints */
    0x03,         	/* bInterfaceClass: HID */
    0x00,         	/* bInterfaceSubClass : 1=BOOT, 0=no boot */
    0x00,         	/* nInterfaceProtocol : 0=none, 1=keyboard, 2=mouse */
    0x00,           /* iInterface: Index of string descriptor */
    
    0x09,
	0x21,
	0x01, 0x01,
	0x00,
	0x01,
	0x22,
	51, //42,/* so luong byte nay can phai sua*/
	0x00,
	
	0x07,
	0x05,
	0x81,
	0x03,
	0x08,
	0x00,
	0x01, 
	/*
	0x07,
	0x05,
	0x01,
	0x03,
	0x40,
	0x00,
	0x01
	*/
#endif
	0x09, 			/* bLength: Configuration Descriptor size */
    0x02, 			/* bDescriptorType: Configuration */
    41,
					/* wTotalLength: Bytes returned */
    0x00,
    0x01,         	/* bNumInterfaces: 1 interface */
    0x01,         	/* bConfigurationValue: Configuration value */
    0x00,         	/* iConfiguration: Index of string descriptor describing
                                 the configuration*/
    0xC0,         	/* bmAttributes: Self powered */
    0x32,         	/* MaxPower 100 mA: this current is used for detecting Vbus */

    /* 09 */
    0x09,         	/* bLength: Interface Descriptor size */
    0x04, 		  	/* bDescriptorType: Interface descriptor type */
    0x00,         	/* bInterfaceNumber: Number of Interface */
    0x00,         	/* bAlternateSetting: Alternate setting */
    0x02,         	/* bNumEndpoints */
    0x03,         	/* bInterfaceClass: HID */
    0x00,         	/* bInterfaceSubClass : 1=BOOT, 0=no boot */
    0x00,         	/* nInterfaceProtocol : 0=none, 1=keyboard, 2=mouse */
    0x00,           /* iInterface: Index of string descriptor */
    
	0x09,         /* bLength: HID Descriptor size */
    0x21, /* bDescriptorType: HID */
	//**************************Ngo Hung Cuong
    0x11,         /* bcdHID: HID Class Spec release number */
    0x01,
    0x00,         /* bCountryCode: Hardware target country */
    0x01,         /* bNumDescriptors: Number of HID class descriptors to follow */
    0x22,         /* bDescriptorType */
    28,/* wItemLength: Total length of Report descriptor */
    0x00,
	
	0x07,
	0x05,
	0x81,
	0x03,
	0x40,
	0x00,
	0x01, 
	
	0x07,
	0x05,
	0x01,
	0x03,
	0x40,
	0x00,
	0x01
};

__code uint8_t stringDescriptor[] = {
	0x04,	// bLength
	0x03,	// bDescriptorType
	0x09,	// wLANGID[0] (low byte)
	0x04	// wLANGID[0] (high byte)
};

__code uint8_t manufacturerDescriptor[] = {
	38,
    0x03,
	'w', 0, 'w', 0, 'w', 0, '.', 0,
    'l', 0, 'i', 0, 'n', 0, 'h', 0, 'k', 0, 'i', 0, 'e', 0, 'n', 0,
    '2', 0, '4', 0, '7', 0, '.', 0, 'v', 0, 'n', 0
};

__code uint8_t productDescriptor[] = {
	20,
	0x03,
	'C', 0, 'M', 0, 'S', 0, 'I', 0, 'S', 0, '-', 0, 'D', 0, 'A', 0, 'P', 0
};

__code uint8_t serialDescriptor[] = {
	26,
	0x03,
	'+', 0, '8', 0, '4', 0, '9', 0, '8', 0, '9', 0, '6', 0, '9', 0, 
	'6', 0, '9', 0, '7', 0, '1', 0
};

uint32_t calc(void)
{
	uint32_t res, i;

	res = 0;
	for (i = 0; i < sizeof(deviceDescriptor); ++i) {
		res += deviceDescriptor[i];
	}

	for (i = 0; i < sizeof(HID_DeviceReportDescriptor); ++i) {
		res += HID_DeviceReportDescriptor[i];
	}

	for (i = 0; i < sizeof(configDescriptor); ++i) {
		res += configDescriptor[i];
	}

	for (i = 0; i < sizeof(stringDescriptor); ++i) {
		res += stringDescriptor[i];
	}

	for (i = 0; i < sizeof(manufacturerDescriptor); ++i) {
		res += manufacturerDescriptor[i];
	}

	for (i = 0; i < sizeof(productDescriptor); ++i) {
		res += productDescriptor[i];
	}

	for (i = 0; i < sizeof(serialDescriptor); ++i) {
		res += serialDescriptor[i];
	}
	return res;
}

__code uint8_t u8Ver[] = "mcuProg v1.0 b181231";

__xdata uint8_t u8Ep0Buff[64];
__xdata uint8_t u8ReceiveBuff[150];
__xdata uint8_t u8TransBuff[150];
__xdata uint8_t Ep1Buffer[128];
__xdata uint8_t u8SetupPacket[8];

uint8_t *pu8Buff;
uint8_t u8Total;
uint8_t u8HidReq = 0;
uint8_t u8HidNum = 0;

uint8_t u8Addr = 0;
uint8_t u8Config = 0;

uint8_t u8sync = 0;

#define SETUP_STATE 0
#define DATA_STATE 1
#define STATUS_STATE 2

uint8_t u8ControlState = SETUP_STATE;

static void EP0_Setup(void);
static void EP0_Out(void);
static void EP0_In(void);
static void StandardRequest(void);
static void ClassRequest(void);
static void VendorRequest(void);

static void GetStatus(void);
static void ClearFeature(void);
static void SetFeature(void);
static void SetAddress(void);
static void GetDescriptor(void);
static void SetDescriptor(void);
static void GetConfiguration(void);
static void SetConfiguration(void);
static void GetInterface(void);
static void SetInterface(void);
static void SynchFrame(void);

static void HID_SetIdle(void);
static void HID_SetReport(void);
static void HID_GetReport(void);

void EP0_SendData0(uint8_t *buff, uint8_t len);
void EP0_SendData1(uint8_t *buff, uint8_t len);
void EP0_RecData0(uint8_t *buff, uint8_t len);
void EP0_RecData1(uint8_t *buff, uint8_t len);
void EP0_Stall();

void EP1_SendData(void);
void EP1_RecData(void);

void UART0_Send(uint8_t u8Data);

void EP0_SendData0(uint8_t *buff, uint8_t len)
{
	uint8_t i;
	u8Total = len;
	pu8Buff = buff;
	
	if (len <= EP0_SZ) {
		for (i = 0; i < len; ++i) {
			u8Ep0Buff[i] = buff[i];
		}
		UEP0_T_LEN = len;
	} else {
		for (i = 0; i < EP0_SZ; ++i) {
			u8Ep0Buff[i] = buff[i];
		}
		UEP0_T_LEN = EP0_SZ;
	}
	u8sync = 0;
	UEP0_CTRL = (UEP_T_RES_ACK | UEP_R_RES_ACK);
}
void EP0_SendData1(uint8_t *buff, uint8_t len)
{
	uint8_t i;
	u8Total = len;
	pu8Buff = buff;
	
	if (len <= EP0_SZ) {
		for (i = 0; i < len; ++i) {
			u8Ep0Buff[i] = buff[i];
		}
		UEP0_T_LEN = len;
	} else {
		for (i = 0; i < EP0_SZ; ++i) {
			u8Ep0Buff[i] = buff[i];
		}
		UEP0_T_LEN = EP0_SZ;
	}
	u8sync = 1;
	UEP0_CTRL = (0x40 | UEP_T_RES_ACK | UEP_R_RES_ACK);
}
void EP0_RecData0(uint8_t *buff, uint8_t len)
{
	u8Total = len;
	pu8Buff = buff;
	
	UEP0_CTRL = (UEP_T_RES_NAK | UEP_R_RES_ACK);
}
void EP0_RecData1(uint8_t *buff, uint8_t len)
{
	u8Total = len;
	pu8Buff = buff;
	
	UEP0_CTRL = (0x80 | UEP_T_RES_NAK | UEP_R_RES_ACK);
}

void EP0_Stall()
{	
	UEP0_T_LEN = 0x00;
	UEP0_CTRL = 0x03;
}

void EP1_SendData(void)
{
	uint8_t t;
	UEP1_T_LEN = 0x40;
	t = UEP1_CTRL;
	t &= ~(0x03);
	UEP1_CTRL = t;
}

void EP1_RecData(void)
{	
	uint8_t t;
	UEP1_T_LEN = 0x40;
	t = UEP1_CTRL;
	t &= ~(0x0C);
	UEP1_CTRL = t;
}

void EP1_In(void);
void EP1_Out(void);

void USB_InitClock(void) {

}

void USB_Init(void) {
	//khoi tao USB
	//chon toc do
	//cho phep tro treo hoat dong
	
	USB_CTRL = 0x29;
	UDEV_CTRL |= bUD_PORT_EN;
#ifdef USB_DBG	
	LED = 0;
#endif
}

void USB_Task(void) {

	//xu ly cac trang thai USB
	if (UIF_SUSPEND) {
		UIF_SUSPEND = 0;
	} else if (UIF_BUS_RST) {
		//nhan duoc RESET
		USB_DEV_AD = 0x00;
		UEP0_T_LEN = EP0_SZ;
		UEP0_CTRL = UEP_R_RES_ACK | UEP_T_RES_NAK;
		UIF_TRANSFER = 0;
		UIF_BUS_RST = 0;
		UEP0_DMA = (uint16_t)u8Ep0Buff;
		u8Addr = 0;
		u8Config = 0;
	} else if (UIF_TRANSFER) {
		//nhan duoc 1 transaction
		//kiem tra xem EP nao
#ifdef USB_DBG
		LED=1;
		LED=0;
#endif
		//bo bit stall
		UEP0_CTRL = UEP_R_RES_NAK | UEP_T_RES_NAK;
		//kiem tra xem EP nao
		if((USB_INT_ST & 0x0F) == 0x00) {
			//EP0
			if((USB_INT_ST & 0x30) == 0x20) {
				//EP0 IN
				EP0_In();
			} else {
				//EP0 OUT, SETUP
				if((USB_INT_ST & 0x30) == 0x30) {
					//SETUP				
					EP0_Setup();
				} else if ((USB_INT_ST & 0x30) == 0x00) {
					//OUT
					EP0_Out();
				}
			}
		} else {
			//EP1-7...
			//thu voi EP1 OUT
			if((USB_INT_ST & 0x0F) == 0x01) {
				//kiem tra xem thuoc EP1 IN hay EP1 OUT
				if((USB_INT_ST & 0x30) == 0x20) {
					EP1_In();
				} else {
					EP1_Out();
				}
			}
		}
		UIF_TRANSFER = 0;
		//UCONbits.PKTDIS=0;
	}
}

static void EP0_Setup(void) {
	//kiem tra xem host yeu cau gi
	uint8_t i;
	uint8_t u8RequestType;
	//Led_On();
	for (i = 0; i < 8; ++i) {
		u8SetupPacket[i] = u8Ep0Buff[i];
#ifdef USB_DBG
		UART0_Send(u8Ep0Buff[i]);
#endif
	}
	
	u8RequestType = (u8Ep0Buff[0] & 0x60) >> 5;
	switch(u8RequestType) {
	case 0x00:
		//standard request
		StandardRequest();
		break;
	case 0x01:
		//class request
		ClassRequest();
		break;
	case 0x02:
		//vendor request
		VendorRequest();
		break;
	default:
		//stall EP0 IN
		//===================================
		EP0_RecData0(u8ReceiveBuff, EP0_SZ);
		EP0_Stall();
		break;
	}
}

static void EP0_Out(void) {
	uint8_t i;
	if (u8ControlState == DATA_STATE) {
		if (u8Total <= EP0_SZ) {
			//sao du lieu nhan duoc vao vung nho
			for (i = 0; i < u8Total; ++i) {
				pu8Buff[i] = u8Ep0Buff[i];
#ifdef USB_DBG
				UART0_Send(u8Ep0Buff[i]);
#endif
			}
			
			//kiem tra hid request
			//thu dieu khien led tu HOST
			if (u8HidReq) {
#ifdef USE_CALLBACK
				EP0_Out_CallBack();
#endif				
				u8HidReq = 0;
			}			
			u8ControlState = STATUS_STATE;
			EP0_SendData1(u8TransBuff, 0);
		} else {
			for (i = 0; i < EP0_SZ; ++i) {
				pu8Buff[i] = u8Ep0Buff[i];
#ifdef USB_DBG
				UART0_Send(u8Ep0Buff[i]);
#endif
			}
			if (UEP0_CTRL & 0x80) {
				EP0_RecData0(pu8Buff + EP0_SZ, u8Total - EP0_SZ);
			} else {
				EP0_RecData1(pu8Buff + EP0_SZ, u8Total - EP0_SZ);
			}
		}
	} else if (u8ControlState == STATUS_STATE) {
		u8ControlState = SETUP_STATE;
		EP0_RecData0(u8ReceiveBuff, EP0_SZ);
		//Led_Off();
	}
}
static void EP0_In(void) {

	if (u8ControlState == DATA_STATE) {
		if (u8Total <= EP0_SZ) {
			u8Total = 0;
			u8ControlState = STATUS_STATE;
			EP0_RecData1(u8ReceiveBuff, 0);
			if (u8sync) {
				EP0_SendData0(pu8Buff, 0);
			} else {
				EP0_SendData1(pu8Buff, 0);
			}
			//Led_Off();
		} else {
			if (u8sync) {
				EP0_SendData0(pu8Buff + EP0_SZ, u8Total - EP0_SZ);
			} else {
				EP0_SendData1(pu8Buff + EP0_SZ, u8Total - EP0_SZ);
			}
		}
	} else if (u8ControlState == STATUS_STATE) {
		if (u8Addr) {
			USB_DEV_AD = u8Addr;
			u8Addr = 0;
		}
		
		u8ControlState = SETUP_STATE;
		EP0_RecData0(u8ReceiveBuff, EP0_SZ);
		//Led_Off();
	}
}

static void StandardRequest(void) {
	//xu ly 11 loai request
	switch(u8SetupPacket[1]) {
	case 0x00:
		//Get Status
		GetStatus();
		break;
	case 0x01:
		//Clear Feature
		ClearFeature();
		break;
	case 0x03:
		//Set Feature
		SetFeature();
		break;
	case 0x05:
		//Set Address
		SetAddress();
		break;
	case 0x06:
		//Get Descriptor
		GetDescriptor();
		break;
	case 0x07:
		//Set Descriptor
		SetDescriptor();
		break;
	case 0x08:
		//Get Configuration
		GetConfiguration();
		break;
	case 0x09:
		//Set Configuration
		SetConfiguration();
		break;
	case 0x0A:
		//Get Interface
		GetInterface();
		break;
	case 0x0B:
		//Set Interface
		SetInterface();
		break;
	case 0x0C:
		//Synch Frame
		SynchFrame();
		break;
	}
}
static void ClassRequest(void) {
	switch(u8SetupPacket[1]) {
	case 0x0A:
		HID_SetIdle();
		break;
	case 0x09:
		HID_SetReport();
		break;
	case 0x01:
		HID_GetReport();
		break;
	}
}

static void VendorRequest(void) {
	
}

static void GetStatus(void) {
	uint8_t u8R;
	
	//uint8_t endpointNum;
    //uint8_t endpointDir;
	//uint16_t pos;
	
	u8R=u8SetupPacket[0] & 0x1F;
	
	switch(u8R) {
	case 0x00:
		//Device
		u8TransBuff[0] = 0x00;
		u8TransBuff[1] = 0x00;
		
		EP0_SendData1(u8TransBuff, 2);
		
		u8ControlState = DATA_STATE;
		break;
	case 0x01:
		//Interface
		u8TransBuff[0] = 0x00;
		u8TransBuff[1] = 0x00;
		EP0_SendData1(u8TransBuff, 2);
		u8ControlState = DATA_STATE;
		break;
	case 0x02:
		//EndPoint
		//endpointNum = u8SetupPacket[4] & 0x0F;
		//endpointDir = u8SetupPacket[4] & 0x80;
		u8TransBuff[0] = 0x00;	
		u8TransBuff[1] = 0x00;
		EP0_SendData1(u8TransBuff, 2);
		u8ControlState = DATA_STATE;
		break;
	default:
		//stall EP0 IN
		//===================================
		EP0_RecData0(u8ReceiveBuff, EP0_SZ);
		u8ControlState = SETUP_STATE;
			
		//BDT0IN.u8BdCnt = 0x00;
		//BDT0IN.u8BdStat = 0x80 | 0x40 | 0x08 | 0x04;//STALL EP0 IN
		EP0_Stall();
		break;
	}
}
static void ClearFeature(void) {
	uint8_t u8R;
	
	//uint8_t endpointNum;
    //uint8_t endpointDir;
	//uint8_t u8Feature;
	//uint16_t pos;
	
	u8R=u8SetupPacket[0] & 0x1F;
	
	switch(u8R) {
	case 0x00:
		//device
		EP0_SendData1(u8TransBuff, 0);
		u8ControlState = STATUS_STATE;
		/*
		BDT0OUT.u8BdCnt = 0x40;
		BDT0OUT.u8BdStat = 0x80 | 0x08;//DATA0 SETUP STAGE
		
		BDT0IN.u8BdCnt = 0x00;
		BDT0IN.u8BdStat = 0x80 | 0x40 | 0x08;//DATA1 STATUS STAGE
		*/
		break;
	//case 0x01:
		//interface
		//break;
	case 0x02:
		//endpoint
		//endpointNum = u8SetupPacket[4] & 0x0F;
		//endpointDir = u8SetupPacket[4] & 0x80;
		//u8Feature=u8SetupPacket[2];

		EP0_SendData1(u8TransBuff, 0);
		u8ControlState = STATUS_STATE;
		break;
	default:
		//stall EP0 IN
		//===================================
		/*
		BDT0OUT.u8BdCnt = 0x40;
		BDT0OUT.u8BdStat = 0x80 | 0x08;//DATA0 SETUP STAGE
		*/
		EP0_RecData0(u8ReceiveBuff, EP0_SZ);
	
		//BDT0IN.u8BdCnt = 0x00;
		//BDT0IN.u8BdStat = 0x80 | 0x40 | 0x08 | 0x04;//STALL EP0 IN
		EP0_Stall();
		u8ControlState = SETUP_STATE;
		break;
	}
	
}
static void SetFeature(void) {
	uint8_t u8R;
	
	//uint8_t endpointNum;
    //uint8_t endpointDir;
	//uint8_t u8Feature;
	//uint16_t pos;
	
	u8R=u8Ep0Buff[0] & 0x1F;
	
	switch(u8R) {
	case 0x00:
		//device
		/*
		BDT0OUT.u8BdCnt = 0x40;
		BDT0OUT.u8BdStat = 0x80 | 0x08;//DATA0 SETUP STAGE
		
		BDT0IN.u8BdCnt = 0x00;
		BDT0IN.u8BdStat = 0x80 | 0x40 | 0x08;//DATA1 STATUS STAGE
		*/
		EP0_SendData1(u8TransBuff, 0);
		u8ControlState = STATUS_STATE;
		break;
	//case 0x01:
		//interface
		//break;
	case 0x02:
		//endpoint
		//endpointNum = u8SetupPacket[4] & 0x0F;
		//endpointDir = u8SetupPacket[4] & 0x80;
		//u8Feature=u8SetupPacket[2];
		EP0_SendData1(u8TransBuff, 0);
		u8ControlState = STATUS_STATE;
		break;
	default:
		//stall EP0 IN
		//===================================
		//BDT0OUT.u8BdCnt = 0x40;
		//BDT0OUT.u8BdStat = 0x80 | 0x08;//DATA0 SETUP STAGE
		EP0_RecData0(u8ReceiveBuff, EP0_SZ);
	
		//BDT0IN.u8BdCnt = 0x00;
		//BDT0IN.u8BdStat = 0x80 | 0x40 | 0x08 | 0x04;//STALL EP0 IN
		EP0_Stall();
		u8ControlState = SETUP_STATE;
		break;
	}
}
static void SetAddress(void) {
	//chi luu lai dia chi, chua thay doi dia chi ngay
	u8Addr = u8SetupPacket[2];
	
	EP0_SendData1(u8TransBuff, 0);
	u8ControlState = STATUS_STATE;
	//EP0_RecData0(u8ReceiveBuff, 0x40);
}
static void GetDescriptor(void) {
	uint16_t i;
	uint16_t u16Len;
	u16Len = u8SetupPacket[7];
	u16Len <<= 8;
	u16Len += u8SetupPacket[6];
	
	P1_MOD_OC &= ~(1 << 5);
	P1_DIR_PU |= (1 << 5);
	
	P1 |= (1 << 5);
	P1 &= ~(1 << 5);
	P1 |= (1 << 5);
	P1 &= ~(1 << 5);
	P1 |= (1 << 5);
	P1 &= ~(1 << 5);
	P1 |= (1 << 5);
	P1 &= ~(1 << 5);
	P1 |= (1 << 5);
	P1 &= ~(1 << 5);
	
	switch(u8SetupPacket[3]) {
	case 0x01:
		//DEVICE DESCRIPTOR
#ifdef USB_DBG
		LED = 1;
		LED = 0;
		LED = 1;
		LED = 0;
		LED = 1;
		LED = 0;
		LED = 1;
		LED = 0;
#endif
		if(u16Len >= 0x12) {
			u16Len = 0x12;
		}
		for(i = 0; i < u16Len; ++i) {
			u8TransBuff[i] = deviceDescriptor[i];
		}
		u8ControlState = DATA_STATE;
		EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
		break;
	case 0x02:
		//CONFIGURATION DESCRIPTOR
		if(u16Len >= 41) {
			u16Len = 41;
		}
		for(i = 0; i < u16Len; ++i) {
			u8TransBuff[i]=configDescriptor[i];
		}
		
		u8ControlState = DATA_STATE;
		EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
		break;
	case 0x03:
		//STRING DESCRIPTOR
		switch(u8SetupPacket[2]) {
		case 0x00:
			//STRING LANG
			if(u16Len >= 0x04) {
				u16Len = 0x04;
			}
			for(i = 0; i < u16Len; ++i) {
				u8TransBuff[i]=stringDescriptor[i];
			}
			
			u8ControlState = DATA_STATE;
			EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
			break;
		case 0x01:
			//STRING MAN
			if(u16Len >= 38) {
				u16Len = 38;
			}
			for(i = 0; i < u16Len; ++i) {
				u8TransBuff[i]=manufacturerDescriptor[i];
			}
			
			u8ControlState = DATA_STATE;
			EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
			break;
		case 0x02:
			//STRING PRODUCT
			if(u16Len >= 20) {
				u16Len = 20;
			}
			for(i = 0; i < u16Len; ++i) {
				u8TransBuff[i]=productDescriptor[i];
			}
			
			u8ControlState = DATA_STATE;
			EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
			break;
		case 0x03:
			//STRING SERIAL
			if(u16Len >= 26) {
				u16Len = 26;
			}
			for(i = 0; i < u16Len; ++i) {
				u8TransBuff[i]=serialDescriptor[i];
			}
			
			u8ControlState = DATA_STATE;
			EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
			break;
		default:
			EP0_RecData0(u8ReceiveBuff, EP0_SZ);
			
			EP0_Stall();
			
			u8ControlState = SETUP_STATE;
			
			break;
		}
		break;
	case 0x22:
		switch (u8SetupPacket[2]) {
		case 0x00:
			if(u16Len >= /*42*/28) {
				u16Len = /*42*/28;
				//u8Desc = 1;
			}
			for(i=0; i<u16Len; ++i) {
				u8TransBuff[i]=HID_DeviceReportDescriptor[i];
			}
			
			u8ControlState = DATA_STATE;
			EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
			break;
		}
		break;
	default:
		EP0_RecData0(u8ReceiveBuff, EP0_SZ);
			
		EP0_Stall();
		
		u8ControlState = SETUP_STATE;
		
		break;
	}
}
static void SetDescriptor(void) {
	EP0_RecData0(u8ReceiveBuff, EP0_SZ);
	/*
	BDT0OUT.u8BdCnt = 0x40;
	BDT0OUT.u8BdStat = 0x80 | 0x40 | 0x08;//DATA0 SETUP STAGE
	*/
	//BDT0IN.u8BdCnt = 0x00;
	//BDT0IN.u8BdStat = 0x80 | 0x40 | 0x08 | 0x04;//STALL
	EP0_Stall();
	u8ControlState = SETUP_STATE;
}
static void GetConfiguration(void) {
	u8TransBuff[0] = u8Config;
		
	//BDT0OUT.u8BdCnt = 0x40;
	//BDT0OUT.u8BdStat = 0x80 | 0x40 | 0x08;//DATA1 STATUS STAGE
	EP0_SendData1(u8TransBuff, 0x01);
	//BDT0IN.u8BdCnt = 0x01;
	//BDT0IN.u8BdStat = 0x80 | 0x40 | 0x08;//DATA1 DATA STAGE
	u8ControlState = DATA_STATE;
}
static void SetConfiguration(void) {
	u8Config=u8SetupPacket[2];
#if 1
	UEP4_1_MOD = (1 << 7) | (1 << 6);
	UEP1_CTRL = 0x10 | UEP_R_RES_ACK | UEP_T_RES_NAK;

	UEP1_DMA = (uint16_t)Ep1Buffer;
	//u8Ep1Sync = 0;
	EP1_RecData();
#endif
	//BDT0OUT.u8BdCnt = 0x40;
	//BDT0OUT.u8BdStat = 0x80 | 0x40 | 0x08;//DATA1 STATUS STAGE
	
	//BDT0IN.u8BdCnt = 0x00;
	//BDT0IN.u8BdStat = 0x80 | 0x40 | 0x08;//DATA1 DATA STAGE
	EP0_SendData1(u8TransBuff, 0);
	u8ControlState = STATUS_STATE;
}
static void GetInterface(void) {
	u8TransBuff[0] = 0x00;
	
	//BDT0OUT.u8BdCnt = 0x40;
	//BDT0OUT.u8BdStat = 0x80 | 0x08;//DATA0 SETUP STAGE
	
	//BDT0IN.u8BdCnt = 0x01;
	//BDT0IN.u8BdStat = 0x80 | 0x40 | 0x08;//DATA1 DATA STAGE
	EP0_SendData1(u8TransBuff, 0x01);
	u8ControlState = DATA_STATE;
}
static void SetInterface(void) {
	/*
	BDT0OUT.u8BdCnt = 0x40;
	BDT0OUT.u8BdStat = 0x80 | 0x08;//DATA0 SETUP STAGE
	
	BDT0IN.u8BdCnt = 0x00;
	BDT0IN.u8BdStat = 0x80 | 0x40 | 0x08;//DATA1 DATA STAGE
	*/
	EP0_SendData1(u8TransBuff, 0);
	u8ControlState = STATUS_STATE;
}
static void SynchFrame(void) {
	
}

void EP1_Out(void) {
	DAP_Thread();
	EP1_SendData();
	EP1_RecData();
}

void EP1_In(void) {
	uint8_t t;
	UEP1_T_LEN = 0x40;
	t = UEP1_CTRL;
	t &= ~(0x03);
	t |= 0x02;
	UEP1_CTRL = t;
}

static void HID_SetIdle(void) {

	u8ControlState = SETUP_STATE;
	EP0_Stall();
}

static void HID_SetReport(void) {
	switch (u8SetupPacket[2]) {
	case 0x01:
	case 0x02:
		u8HidReq = 1;
		u8ControlState = DATA_STATE;
		EP0_RecData1(u8ReceiveBuff, u8SetupPacket[6]);
		break;
	case 0x04:
		u8HidReq = 1;
		u8ControlState = DATA_STATE;
		EP0_RecData1(u8ReceiveBuff, u8SetupPacket[6]);
		break;
	}
}

static void HID_GetReport(void) {
	//gui du lieu nguoc lai
	
	u8ControlState = DATA_STATE;
	EP0_SendData1(u8TransBuff, u8HidNum);
}
