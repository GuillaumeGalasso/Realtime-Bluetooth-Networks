# Lab 5: File System using a Solid-State Disk

Lab achieved with a score of 100%

## Purpose

The system has four layers:

1) The physical layer provides basic erase and program functions. These functions begin with Flash_ and can be found in the FlashProgram.c file. These functions are provided.

2) The disk layer partitions the second half of the on-board flash into a solid state disk. The sector size will be 512 bytes. This module provides sector read and write functions. These functions begin with eDisk_. You will implement these functions by filling in C code within the eDisk.c file. In particular, you will implement
- enum DRESULT eDisk_Init(uint32_t drive);
- enum DRESULT eDisk_ReadSector(uint8_t *buff, uint8_t sector);
- enum DRESULT eDisk_WriteSector(const uint8_t *buff, uint8_t sector);
- enum DRESULT eDisk_Format(void);

3) The file system layer implements the write-once file system. These functions begin with eFile_. You will implement these functions by filling in C code within the eFile.c file. In particular, you will implement
- uint8_t OS_File_Format(void);
- uint8_t OS_File_New(void);
- uint8_t OS_File_Append(uint8_t num, uint8_t buf[512]);
- uint8_t OS_File_Read(uint8_t num, uint8_t location, uint8_t buf[512]);
- uint8_t OS_File_Flush(void);

4) The highest level is the user application. In Lab 5, this layer is given. It consists of the Lab 5 grader and a simple example of how the functions could be used.

## Completed files

`eDisk.c` \
`eFile.c`
