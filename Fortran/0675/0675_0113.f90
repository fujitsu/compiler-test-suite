        REAL*8 A1(10),B1(10)
        a=2
        b=5
        m=a*b
        DO I=1,m
	B1(I)=I*2+I*3
        A1(I)=EXP(B1(I))
        ENDDO
        write(6,*)"A1=",A1
        END
