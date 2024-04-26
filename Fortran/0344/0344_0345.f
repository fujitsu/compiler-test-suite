      PROGRAM MAIN
      INTEGER A/10/,B/10/
      CALL SUB3(A,B)
      STOP
      END
C
      SUBROUTINE SUB3(A,B)
      INTEGER A,B,Z(20),C,AA,XX(20)
      DATA Z,XX/40*1/
      C=B
      K1=1
      N=A-1
      DO 22 K=K1,N
        ZZ=(Z(K)-Z(A))/C
        AA=EXP(ZZ)
        XX(K)=XX(A)+1-AA
   22 CONTINUE
      WRITE(6,*) XX
      RETURN
      END
