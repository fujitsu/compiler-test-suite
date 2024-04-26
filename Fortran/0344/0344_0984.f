      REAL*8  A(100)
      REAL*8  B(100)
      REAL*4  C(100)
      DATA A/100*1.1/,B/100*2.2/,C/100*3.3/,N/100/
C
      DO 10 I=1,N
         CALL SUB1(A(I),B(I),C(I))
   10 CONTINUE
      WRITE(6,100) (A(I),I=1,N)
  100 FORMAT(1H ,5F10.2)
      STOP
      END
C
      SUBROUTINE SUB1(A,B,C)
      REAL*8  A
      REAL*8  B
      REAL*4  C
C
      A = B + C
      RETURN
      END
