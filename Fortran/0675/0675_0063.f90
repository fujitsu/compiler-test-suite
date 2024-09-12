	REAL*8 A1(100),B1(100),C1(100),D1(100)
        DO I=1,100
           B1(I)=I*3
           A1(I)=SIN(B1(I))
           C1(I)=I+I*2*1
           D1(I)=SIN(C1(I))
        ENDDO
        write(6,*)"A1=",A1
        write(6,*)"B1=",B1
        write(6,*)"C1=",C1
        write(6,*)"D1=",D1
        END 
