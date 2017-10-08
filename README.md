# Realtime-Bluetooth-Networks
A 6 weeks embedded and real time systems MOOC based on an ARM Cortex-M4F microcontroller from the University of Texas at Austin through [**edX**](https://courses.edx.org/).

Date: September - October 2017

Course achieved with a score of 96.5% (**[Certificate](https://courses.edx.org/certificates/df9e89dc603442f2869169aa75d07562)** available)

You can find a **[syllabus](syllabus.md)** of this course.

Every lab is given as an existant project with a grading system TExaS that remotely permits to evaluate my work (and push the grade on edX MOOC). \
As a consequence, for each lab assignment, I completed an existant project given by the teaching staff with the requirements.

My contributions include:
- gloabal declarations and/or declarations in header files. 
- functions defintion if already declared by teachers.
- functions implementation otherwise.

In most of the cases, there are all these alternatives.

## Common Files

There are some file types which will appear in every lab assignment.

`***.uvproj` `***.uvgui` `***.uvopt` - uVision files (open `***.uvproj` to get the full project) \
`***.axf` `TExaS.h` `texas.o` - autograder files \
`tm4c123gh6pm.h` - useful address definitions for launchpad \
`startup.s` - assembly startup file

## Requirements

**[Kiel uVsion 5](https://www.keil.com/demo/eval/armv4.htm)** - All the code/debug were done on this IDE. \
**[Stellaris/Tiva LaunchPad™](http://www.ti.com/tool/ek-tm4c123gxl)** - Everything is meant to work on a EK-TM4C123G launchpad. \
**[Educational BoosterPack MKII](http://www.ti.com/tool/BOOSTXL-EDUMKII)** - Various analog and digital inputs/outputs for the TM4C123G launchpad. \
**[SimpleLink™ CC2650 Wireless MCU LaunchPad™ Kit](http://www.ti.com/tool/launchxl-cc2650)** - Launchpad used in BoosterPack mode to bring Bluetooth low energy connectivity to the TM4C123G launchpad.
