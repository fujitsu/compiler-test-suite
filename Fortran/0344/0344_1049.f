      DATA L/1/
      CALL SUB1(L)
      STOP
      END
C
      SUBROUTINE SUB1(L)
      REAL*4 A(100),B(100),C(100)
      DATA A/100*0.0/,B/100*1.0/,C/100*2.0/,N/100/,M/0/
      DO 10 I=1,N
         A(I) = B(I) + C(I)
         M    = M    +   L
         A(M) = B(M) + C(M)
   10 CONTINUE
      WRITE(6,100) (A(I),B(I),C(I),I=1,M)
  100 FORMAT(3F5.1)
      RETURN
      END
