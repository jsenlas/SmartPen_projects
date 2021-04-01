################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/jakub/ZppData/STMicroelectronics/STM32CubeWB/Projects/P-NUCLEO-WB55.USBDongle/Applications/BLE/BLE_p2pServer/STM32_WPAN/App/app_ble.c \
/home/jakub/ZppData/STMicroelectronics/STM32CubeWB/Projects/P-NUCLEO-WB55.USBDongle/Applications/BLE/BLE_p2pServer/STM32_WPAN/App/p2p_server_app.c 

OBJS += \
./Application/STM32_WPAN/app/app_ble.o \
./Application/STM32_WPAN/app/p2p_server_app.o 

C_DEPS += \
./Application/STM32_WPAN/app/app_ble.d \
./Application/STM32_WPAN/app/p2p_server_app.d 


# Each subdirectory must supply rules for building sources it contributes
Application/STM32_WPAN/app/app_ble.o: /home/jakub/ZppData/STMicroelectronics/STM32CubeWB/Projects/P-NUCLEO-WB55.USBDongle/Applications/BLE/BLE_p2pServer/STM32_WPAN/App/app_ble.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DUSE_STM32WBXX_USB_DONGLE -DCORE_CM4 -DDEBUG -DSTM32WB55xx -c -I../../Core/Inc -I../../../../../../../Utilities/lpm/tiny_lpm -I../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../../../../../../Utilities/sequencer -I../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/vcp -I../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../STM32_WPAN/App -I../../../../../../../Middlewares/ST/STM32_WPAN/ble/core -I../../../../../../../Middlewares/ST/STM32_WPAN -I../../../../../../../Middlewares/ST/STM32_WPAN/ble/core/template -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../Middlewares/ST/STM32_WPAN/ble/core/auto -I../../../../../../../Drivers/BSP/P-NUCLEO-WB55.USBDongle -I../../../../../../../Middlewares/ST/STM32_WPAN/utilities -I../../../../../../../Middlewares/ST/STM32_WPAN/ble -I../../../../../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/STM32_WPAN/app/app_ble.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/STM32_WPAN/app/p2p_server_app.o: /home/jakub/ZppData/STMicroelectronics/STM32CubeWB/Projects/P-NUCLEO-WB55.USBDongle/Applications/BLE/BLE_p2pServer/STM32_WPAN/App/p2p_server_app.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DUSE_STM32WBXX_USB_DONGLE -DCORE_CM4 -DDEBUG -DSTM32WB55xx -c -I../../Core/Inc -I../../../../../../../Utilities/lpm/tiny_lpm -I../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../../../../../../Utilities/sequencer -I../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/vcp -I../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../STM32_WPAN/App -I../../../../../../../Middlewares/ST/STM32_WPAN/ble/core -I../../../../../../../Middlewares/ST/STM32_WPAN -I../../../../../../../Middlewares/ST/STM32_WPAN/ble/core/template -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../Middlewares/ST/STM32_WPAN/ble/core/auto -I../../../../../../../Drivers/BSP/P-NUCLEO-WB55.USBDongle -I../../../../../../../Middlewares/ST/STM32_WPAN/utilities -I../../../../../../../Middlewares/ST/STM32_WPAN/ble -I../../../../../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/STM32_WPAN/app/p2p_server_app.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

