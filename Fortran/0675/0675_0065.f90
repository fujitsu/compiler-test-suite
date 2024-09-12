	REAL*8 A1(100),B1
        DO I=1,100
           B1=I*3
           A1(I)=SIN(B1)
        ENDDO
        write(6,*)"A1=",A1
        write(6,*)"B1=",B1
        END 
