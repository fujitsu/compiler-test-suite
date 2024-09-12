        REAL*8 A1(10),B1(10),K,L
        DO I=1,10
          DO j=1,10
            L=J*2
            B1(J)=EXP(L)
          ENDDO
          K=I+3
          A1(I)=EXP(K)
        ENDDO
        write(6,*)"A1=",A1
        write(6,*)"B1=",B1
        END
