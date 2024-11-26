################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Drivers/CMSIS/DSP/DSP_Lib_TestSuite/Common/Startup/startup_stm32f746zgtx.s 

OBJS += \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/Common/Startup/startup_stm32f746zgtx.o 

S_DEPS += \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/Common/Startup/startup_stm32f746zgtx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/DSP_Lib_TestSuite/Common/Startup/%.o: ../Drivers/CMSIS/DSP/DSP_Lib_TestSuite/Common/Startup/%.s Drivers/CMSIS/DSP/DSP_Lib_TestSuite/Common/Startup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Drivers-2f-CMSIS-2f-DSP-2f-DSP_Lib_TestSuite-2f-Common-2f-Startup

clean-Drivers-2f-CMSIS-2f-DSP-2f-DSP_Lib_TestSuite-2f-Common-2f-Startup:
	-$(RM) ./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/Common/Startup/startup_stm32f746zgtx.d ./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/Common/Startup/startup_stm32f746zgtx.o

.PHONY: clean-Drivers-2f-CMSIS-2f-DSP-2f-DSP_Lib_TestSuite-2f-Common-2f-Startup

