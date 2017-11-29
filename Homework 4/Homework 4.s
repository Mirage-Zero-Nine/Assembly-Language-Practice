.text

        add.d f0, f0, 2

Loop: 	
        LD 		F2, 	8(R1)		 
        LD 		F4, 	0(R1)		 
        mul.d 	        F6, 	F4, 	F0
        sub.d		F8,	F2,	F6
        SD		F8, 	0(R2)

        LD 		F2, 	16(R1)		 
        LD 		F4, 	8(R1)		 
        mul.d 	        F6, 	F4, 	F0
        sub.d		F8,	F2,	F6
        SD		F8, 	8(R2)

        LD 		F2, 	24(R1)		 
        LD 		F4, 	16(R1)		 
        mul.d 	        F6, 	F4, 	F0
        sub.d		F8,	F2,	F6
        SD		F8, 	16(R2)

        dsub 		R1, 	R1,	#8	
        dsub		R2,	R2,	#8
        BNEZ		R2,  	Loop