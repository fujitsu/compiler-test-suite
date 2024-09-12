	REAL*8 A(10),B(10),C(10),D(10),E(10),F(10),G(10)
	DATA D/1,2,3,4,5,6,7,8,9,10/
	DATA B/5,6,7,8,9,10,11,12,13,14/
	DO i=1,10
	 C(i)=i+1
	 A(i)=EXP(C(i))
	   if ( i .eq.5 ) goto 10
	   D(i)=i+2
	   B(i)=EXP(D(i))
10 	 E(i)=EXP(5.0_8)
	 F(i)=EXP(C(i)+1)
	 G(i)=EXP(E(i))
        ENDDO
	WRITE(6,*)'A1=',A
	WRITE(6,*)'B1=',B
	WRITE(6,*)'E1=',E
	WRITE(6,*)'F1=',F
        WRITE(6,*)'G1=',G
        END
