# Lab 6: Bluetooth BLE

## Purpose

The objectives of Lab 6 are:
- Interface the 2650 BLE module to the LaunchPad
- Develop a set of NPI message packets to support BLE communication
- Connect the fitness device to a cell phone
- Understand the concepts of service, characteristic, and advertising

Grading your Lab 6 does require a LaunchPad development board and one of the CC2650 modules. There are two aspects of Lab 6 that are graded. 

The Lab6wLab3 project allows you to complete Lab 6 using the RTOS from Lab 3. The next step is to open Lab6 project and paste in either your Lab 3 solution (files OS.c, OS.h and osasm.s)

First, you must implement the following 11 functions that produce NPI messages in AP_Lab6.c file. These functions do not send the messages, they just create the message with the proper syntax. Prior to launching the fitness device, the grader will evaluate these functions. If you hold button 1 down when the software is started it will pause after this initial grading so you can see the results.
- BuildGetStatusMsg
- BuildGetVersionMsg
- BuildAddServiceMsg
- BuildRegisterServiceMsg
- BuildAddCharValueMsg
- BuildAddCharDescriptorMsg
- BuildAddNotifyCharDescriptorMsg
- BuildSetDeviceNameMsg
- BuildSetAdvertisementData1Msg
- BuildSetAdvertisementDataMsg
- BuildStartAdvertisementMsg

The second part of the grading involves Bluetooth communication.

Basically, these 11 functions are used to formulate NPI messages that are sent from your LaunchPad to the CC2650 (which is running SNP).

## Completed files

`AP_Lab6.c` - NPI messages functions definition file
