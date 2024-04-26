      DIMENSION A(10,10,10),B(10,10,10),C(20,20)
      DATA  A,B/1000*1.0,1000*2.0/
      DATA  C/400*3.0/
      DO I=1,10
        DO J=1,10
          DO K=1,6
            A(I,J,K) = C(J,K) + B(J,K,I)
            B(K,J,I) = A(K,J,I)
          ENDDO
        ENDDO

        DO L=1,20 
          C(L,1) = C(L,1) - FLOAT(0)
        ENDDO
      ENDDO
      PRINT*,A
      END
