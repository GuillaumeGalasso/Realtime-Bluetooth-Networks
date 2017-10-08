;/*****************************************************************************/
; OSasm.s: low-level OS commands, written in assembly                       */
; Runs on LM4F120/TM4C123/MSP432
; Lab 2 starter file
; February 10, 2016
;

; Completed by Guillaume Galasso with a score of 100%

        AREA |.text|, CODE, READONLY, ALIGN=2
        THUMB
        REQUIRE8
        PRESERVE8

        EXTERN  RunPt            ; currently running thread
        EXPORT  StartOS
        EXPORT  SysTick_Handler
        IMPORT  Scheduler


SysTick_Handler                ; 1) Saves R0-R3,R12,LR,PC,PSR
    CPSID   I                  ; 2) Prevent interrupt during switch
	PUSH {R4-R11}              ; 3) Save the other registers
	LDR R0, =RunPt             ; 4) R0 <- RunpPt @
	LDR R1, [R0]               ;    R1 <- RunPt
	STR SP, [R1]               ; 5) Save SP into TCB
	PUSH {R0,LR}
	BL Scheduler
	POP {R0,LR}
	LDR R1, [R0]               ; 6) R1 <- RunPt
	LDR SP, [R1]               ; 7) SP = RunPt->SP
	POP {R4-R11}               ; 8) pop back R4-R11
    CPSIE   I                  ; 9) tasks run with interrupts enabled
    BX      LR                 ; 10) restore R0-R3,R12,LR,PC,PSR

StartOS
	LDR R0, =RunPt
	LDR R2, [R0]               ; R0 <- *RunPt
	LDR SP, [R2]               ; RinPt->SP
	POP     {R4-R11}           ; restore R4-R11
    POP     {R0-R3}            ; restore R0-R3
    POP     {R12}
    ADD     SP,SP,#4           ; discard LR from initial stack
    POP     {LR}               ; start location
    ADD     SP,SP,#4           ; discard PSR
    CPSIE   I                  ; Enable interrupts at processor level
    BX      LR                 ; start first thread

    ALIGN
    END
