      INTEGER N/100/
      CALL LVLTST(N)
      STOP
      END
C
      SUBROUTINE LVLTST(N)
      REAL*4 A(100),B(100),C(100)
      DATA A/100*.0/,B/100*.1/,C/100*.2/
      DO 10 I=1,N
         A(I) = B(I) + C(I)
   10 CONTINUE
      WRITE(6,100) A,B,C
  100 FORMAT(15F5.1)
C
      RETURN
      END
