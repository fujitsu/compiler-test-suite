SUBROUTINE SUB(A,B,N,M)
  REAL*8 A(N,N,N),B(N,N,N)
  DO I=1,M
     DO J=1,M
        DO K=1,M
           B(I,J,K) = A(I,J,K) + B(I,J,K)
        ENDDO
     ENDDO
  ENDDO
  RETURN
END SUBROUTINE SUB

PROGRAM MAIN
END PROGRAM MAIN
