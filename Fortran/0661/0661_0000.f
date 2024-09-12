      DIMENSION I(10)
  10  J=1
      CALL SUB(*10,I(9),I(J),I(J+1))
      PRINT *,'PASS'
  1   STOP
      END
      SUBROUTINE SUB(*,I,J,K)
      I=1
      J=2
      K=3
      IF (I.EQ.1) RETURN
      RETURN I
      END
