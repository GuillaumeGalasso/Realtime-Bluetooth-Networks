# Lab 4: Priority Scheduler

Lab achieved with a score of 100%

## Purpose

Lab 4 is an incremental improvement over Lab 3. In particular, you will add priority to the TCB. If all threads have equal priority, then the system runs as round robin. There will be two types of interrupts: periodic and edge-triggered. On the occurrence of the interrupt, the OS will simply signal one or more semaphores, and then run the scheduler. All threads, including event threads and main threads, are run by the scheduler. Event threads will be assigned high priority to assure low jitter and low latency.

Just like Labs 2 and 3, the starter project will not execute until you implement the necessary RTOS functions. We encourage you to reuse code from Lab 3. Identical to Lab 3, the user code inputs from the microphone, accelerometer, light sensor, temperature sensor and switches. It performs some simple measurements and calculations of steps, sound intensity, light intensity, and temperature. It outputs data to the LCD and it generates simple beeping sounds.

Your RTOS will run eight main threads. Tasks 0, 1, 3 are event threads. The periodic interrupt will signal semaphores for Task0 and Task1. An edge triggered interrupt will signal a semaphore for Task 3.

![diagram](Lab_dataFlow.jpg)

*Data flow graph of Lab 4*.

This simple fitness device has eight tasks: eight main threads. Since you have two periodic threads to schedule, you could use one hardware timer to run both tasks, or you could use two hardware timers, one for each task. You will continue to use SysTick interrupts to switch between the six main threads. These are the eight tasks:
- Task0: event thread samples microphone input at 1000 Hz
- Task1: event thread samples acceleration input at 10 Hz (calls Put)
- Task2: main thread detecting steps and plotting at on LCD, runs about 10 Hz (calls Get)
- Task3: event thread inputs from switches, outputs to buzzer (calls Sleep)
- Task4: main thread measures temperature, runs about 1 Hz (calls Sleep)
- Task5: main thread output numerical data to LCD, runs about 1 Hz
- Task6: main thread measures light, runs about 1.25 Hz (calls Sleep)
- Task7: main thread that does no work

Thread 7, which doesn’t do any useful task, will never sleep or block. 

Just like Lab 3, this thread will make your RTOS easier to implement because you do not need to handle the case where all main threads are sleeping or blocked.

## Completed files

`OS.c` - OS functions file \
`osasm.s` - SysTick interrupt service routine and StartOS function definition (ARM)
