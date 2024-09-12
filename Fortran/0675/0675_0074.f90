	REAL*8 A1(100),B1(100),C1(100)
        DO I=1,100
           B1(I)=I*3
           A1(I)=EXP(B1(I))
           C1(I)=A1(I)+B1(I)
        ENDDO
        write(6,*)"A1="
        write(6,9) sum(A1)
        write(6,*)"B1="
        write(6,9) sum(B1)
        write(6,*)"C1="
        write(6,9) sum(C1)
9       format(E30.15)
        END 
