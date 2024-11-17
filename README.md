# STM32-ILI9341
Simple driver for ILI9341 320x240 TFT LCD with Touchscreen for STM32 microcontrollers

Requires no DMA or Interrupts while still maintaining very fast screen draws. See performance analysis below

The intent of this library is to provide a really simple way to get ILI9341 projects started without complex methods.
Basic SPI and GPIO inputs/Outputs are enough to use the library.

Contains:
  - main driver for initialization and basic functions "ILI9341_STM32_Driver"
  - GFX driver for advanced functionality (fonts, pictures)
  - Touchscreen driver
  - Example project with CubeMX built for STM32F746ZG Nucleo board
    - Example usage of functions


ILI9341 Driver library for STM32


Performance

Software:
  - STM32CubeIDE V1.14

Settings:	
  - SPI @ 50MHz 
  - STM32F746ZG Nucleo board
  - Redraw entire screen

  Theoretical maximum FPS with 50Mhz SPI calculated to be 40.69 FPS
  
  320x240 = 76800 pixels, each pixel contains 16bit colour information (2x8)
  Theoretical Max FPS: 1/((320x240x16)/50000000)

With ART Accelerator, instruction prefetch, CPU ICACHE and CPU DCACHE enabled:

 - FPS:							39.62
 - SPI utilization:					97.37%
 - MB/Second:						6.09

With ART Accelerator, instruction prefetch, CPU ICACHE and CPU DCACHE disabled:

 - FPS:							35.45
 - SPI utilization:					87.12%
 - MB/Second:						5.44




# WORK PROGRESS

|           **WORK2DO**                                                                        |**Status**|**Deadline**|**Compile?**|**Author**|  **Necessary level**  |
|:--------------------------------------------------------------------------------------------:|:--------:|:----------:|:----------:|:--------:|:---------------------:|
|      Create a STM32F749ZGT6 projetc in STM32CUBEIDE                                          |Incomplete| 11/17/2024 |     No     |phu2011831|    Necessary          |
|      Add LVGL library, link button to library                                                |Incomplete| 11/24/2024 |            |          |    Unnecessary        |
|Create 2 Screens: 1. Digital Speedometer Speed Meter KMH/MPH and 2. Displaying Value of Sensor |Incomplete| 11/30/2024 |            |          |    Necessary          |
|      Write task to implement page navigation with the change page button                     |Incomplete| 12/07/2025 |            |          |    Necessary          |


# MAPPING PORT FOR HW