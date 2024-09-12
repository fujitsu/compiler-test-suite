        REAL*8 A1(10),B1(10)
        DATA A1/10*0/
        DATA B1/10*0/
        a=2
        b=5
        m=a*b
        n=a+b*3
	l=b*2
        DO I=n,m,l
	B1(I)=I*2+I
	A1(I)=EXP(B1(I))
        ENDDO
        write(6,*)"A1=",A1
        END
