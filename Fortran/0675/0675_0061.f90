        REAL*8 A1(1000,1000),B1(1000,1000),C1(1000,1000)
        C1=0
        DO J=1,1000
           I=1
           B1(I,J)=J/2
           C1(I,J)=SIN(B1(I,J)+2)
        DO I=1,1000
           B1(I,J)=I*3+J/2
           A1(I,J)=SIN(B1(I,J))
        ENDDO
        ENDDO
        DO J=1,100
        DO I=1,10
        write(6,*)"A1(I,J)=",A1(I,J)
        write(6,*)"C1(J,I)=",C1(J,I)
        ENDDO
        ENDDO
        END
