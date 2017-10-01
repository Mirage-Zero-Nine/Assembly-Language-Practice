.data ; Data and control address definition 

	CONTROL: .word 0x10000  ; address of control port
	DATA: .word 0x10008 	; address of data port

.text

main:
	ld r20,CONTROL(r0) 
	ld r21,DATA(r0)		; load control and data
	daddi r1,r0,1010    ; load value into register
	sd r1,0(r21) 	 	; first set DATA
						; '0' is the address of memory
	daddi r1,r0,2 		; '2' is the integer output command
	sd r1,0(r20) 		; then write CONTROL 
						; outputs on WinMips64 terminal




	