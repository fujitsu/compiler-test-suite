        REAL*8 A1(1000),B1(1000),K(1000),L(1000)
        DO I=1,1000
          K(I)=I+3
          A1(I)=SIN(K(I))
          DO j=1,1000
            L(J)=J*2
            B1(J)=COS(L(J))
          ENDDO
        ENDDO
        write(6,*)"A1=",A1
        write(6,*)"B1=",B1
        END
