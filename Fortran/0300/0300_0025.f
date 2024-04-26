      REAL*4  A(20,20,20),B(20,20,20),C(20,20,20)
      DATA  A,B/8000*1.,8000*2./,C/8000*3./
      DO K=3,4
         DO I=5,2,-1
            DO J=3,11
               A(I,J,K) =B(I+1,K+1,J+1)+C(K,J,I)
            ENDDO
            DO J=2,11
               B(I,J,K) = A(K-1,J,I-1)*C(J,K,I)
            ENDDO
         ENDDO
      ENDDO
      DO I=2,5
         DO J=3,11
            DO K=3,4
               PRINT*,I,J,K,A(I,J,K),B(I,J,K)
            ENDDO
         ENDDO
      ENDDO
      END
