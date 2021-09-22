#ifndef COMMON_H
#define COMMON_H

#include "sx127x.h"
#include "net/lora.h"

#include "lora.h"

#define MAX_PACKET_LEN 256

#define DEFAULT_LORA_BANDWIDTH        LORA_BW_500_KHZ
#define DEFAULT_LORA_SPREADING_FACTOR LORA_SF7
#define DEFAULT_LORA_CODERATE         LORA_CR_4_5
#define DEFAULT_LORA_CHANNEL          SX127X_CHANNEL_DEFAULT
#define DEFAULT_LORA_POWER            SX127X_RADIO_TX_POWER

#endif /* COMMON_H */
