      REAL*4 A(100),B(100)
      DATA M/100/
      DO 10 I=1,M
         CALL AAE(A(I),B(I))
   10 CONTINUE
      WRITE(6,100) A,B
  100 FORMAT(15F5.1)
      STOP
      END
C
      SUBROUTINE AAE(A,B)
      REAL*4 A,B
      A = 0.1
      B = 0.2
      RETURN
      END
