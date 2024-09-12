        REAL*8 B1(1000),C1(1000)
        DO I=1,1000
           B1(I)=I
           C1(I)=LOG(B1(I))
        ENDDO
        write(6,*)"B1=",B1
        write(6,*)"C1=",C1
        END
