        REAL*8 A1(1000),B1(1000),C1(1000),K,L
        DO I=1,1000
          K=I*3
          A1(I)=SIN(K)
          DO j=1,1000
            L=K+J
            B1(I)=COS(L)
          ENDDO
          C1(I)=TAN(L)
        ENDDO
        write(6,*)"A1=",A1
        write(6,*)"B1=",B1
        write(6,*)"C1=",C1
        END
