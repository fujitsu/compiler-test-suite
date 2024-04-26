      SUBROUTINE SUB(L,B,A,INDEX,N)
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      DIMENSION A(1),B(1),INDEX(1)
      K=1
      DO I=1,L
         DO J=0,N-1
            B(K)=A(INDEX(I)+J)
 1          K=K+1
         ENDDO
      ENDDO
      END

      write(6,*) "ok"
      end

