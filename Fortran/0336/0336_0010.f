      PROGRAM MAIN
      REAL X(100),Y(100)
      N=100
      CALL SUB(M)
      IF(M.EQ.1) THEN
        DO I=1,N
          Y(I)=1
        END DO
        L=0
        DO J=1,N
          Y(J)=1
        END DO
      END IF
      DO K=1,N
        X(K)=1
      END DO
      DO K=1,N
        X(K)=1
      END DO
      PRINT *,X,Y
      STOP
      END

      SUBROUTINE SUB(M)
      INTEGER M
      M=1
      END SUBROUTINE
