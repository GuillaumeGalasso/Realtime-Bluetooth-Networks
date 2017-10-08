# Lab 2: Thread Management

Lab achieved with a score of 100%

## Purpose

A real-time system is one that guarantees the jitters are less than a desired threshold, and the averages are close to desired values. Now that we are using interrupts we expect the jitter for the two event tasks to be quite low. For the four main threads, you will be graded only on minimum, maximum, and average time between execution of tasks. 

Your assignment is implement the OS functions in OS.c and write the SysTick interrupt service routine in osasm.s.

More specifically, we are asking you to develop and debug a real-time operating system, such that
- Task0: jitter between executions should be less than or equal to 15us
- Task1: jitter between executions should be less than or equal to 30us
- Task2: average time between executions should be 100 ms within 5%
- Task3: average time between executions should be less than 50 ms
- Task4: average time between executions should be less than 1.2 s
- Task5: average time between executions should be 1.0 s within 5%

![diagram](Lab_dataFlow.jpg)

*Data flow graph of Lab 2*.

## Completed files

`OS.c` - OS functions file \
`osasm.s` - SysTick interrupt service routine definition (ARM)
