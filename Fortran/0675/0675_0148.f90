        REAL*8 A1(1000),B1(1000),K,L
        DO I=1,1000
          DO j=1,1000
            L=J*2
            B1(J)=LOG(L)
          ENDDO
          K=I+3
          A1(I)=COS(K)
        ENDDO
        write(6,*)"A1=",A1
        write(6,*)"B1=",B1
        END