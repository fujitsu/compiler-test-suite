        REAL*8 A1(10,10),B1(10,10)
        DO J=1,10
        DO I=1,10
           B1(I,J)=I*3+J/2
           A1(J,I)=EXP(B1(I,J))
        ENDDO
        ENDDO
        write(6,*)"A1=",A1
        write(6,*)"B1=",B1
        END

