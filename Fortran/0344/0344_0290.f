      PROGRAM MAIN
      IMPLICIT INTEGER(A-D)
      DIMENSION N(100),B(100)
      DATA C/100/,B/100*5/,L/3/,N/100*3/
C
      A=C/3
      DO 10 I=100,1,-1
        L=I
        IF (A.LT.50) THEN
          CALL SUB1(N(I),L)
        ENDIF
        B(I)=B(I)+L*I
   10 CONTINUE
      
      WRITE(6,101) B
  101 FORMAT(10I8)
      STOP
      END
C
      SUBROUTINE SUB1(B,L)
      IMPLICIT INTEGER(A-D)
      DO 20 K=1,100
        L=L+B/K
   20 CONTINUE
      RETURN
      END
