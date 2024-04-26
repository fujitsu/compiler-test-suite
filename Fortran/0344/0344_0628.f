      REAL A(10)
      DO 10 I=1,10
        CALL SUB(A(I))
 10   CONTINUE
      WRITE(6,1000) A
 1000 FORMAT(F10.5)
      STOP
      END
C
      SUBROUTINE SUB(A)
       A=1.0
      RETURN
      END
