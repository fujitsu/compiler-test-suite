        REAL*8 A1(100),B1(100),C1(100),L(100),M(100)
        DO I=1,100
          A1=I
          DO J=1,100
            L(J)=J*2
            B1(J)=LOG(L(J))
          ENDDO
          DO K=1,100
            M(K)=K+3
            C1(K)=SIN(M(K))
          ENDDO
        ENDDO
        write(6,*)"A1=",A1
        write(6,*)"B1=",B1
        write(6,*)"C1=",C1
        END
