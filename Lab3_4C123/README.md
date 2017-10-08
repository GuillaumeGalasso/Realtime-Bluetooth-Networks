# Lab 3: Blocking, Sleeping and FIFO Queues

Lab achieved with a score of 100%

## Purpose

As we progress through this class, your RTOS will become more and more complex. The Lab 3 starter project using the LaunchPad and the Educational BoosterPack MKII (BOOSTXL-EDUMKII) is again a fitness device. Just like Lab 2, the starter project will not execute until you implement the necessary RTOS functions.

 Consider reusing code from Lab 2. The user code inputs from the microphone, accelerometer, light sensor, temperature sensor and switches. It performs some simple measurements and calculations of steps, sound intensity, light intensity, and temperature. It outputs data to the LCD and it generates simple beeping sounds. Figure Lab3.1 shows the data flow graph of Lab 3.
 
This simple fitness device has eight tasks: two periodic and six main threads. Since you have two periodic threads to schedule, you could use one hardware timer to run both tasks, or you could use two hardware timers, one for each task. You will continue to use SysTick interrupts to switch between the six main threads. These are the eight tasks:
- Task0: event thread samples microphone input at 1000 Hz
- Task1: event thread samples acceleration input at 10 Hz (calls Put)
- Task2: main thread detecting steps and plotting at on LCD, runs about 10 Hz (calls Get)
- Task3: main thread inputs from switches, outputs to buzzer (calls Sleep)
- Task4: main thread measures temperature, runs about 1 Hz (calls Sleep)
- Task5: main thread output numerical data to LCD, runs about 1 Hz
- Task6: main thread measures light, runs about 1.25 Hz (calls Sleep)
- Task7: main thread that does no work

Thread 7, which doesn’t do any useful task, will never sleep or block. Adding this thread will make your RTOS easier to implement because you do not need to handle the case where all main threads are sleeping or blocked.

You are asked to implement the RTOS by writing code in the osasm.s and OS.c files

![diagram](Lab_dataFlow.jpg)

*Data flow graph of Lab 3*.

## Completed files

`OS.c` - OS functions file \
`osasm.s` - SysTick interrupt service routine and StartOS function definition (ARM)
