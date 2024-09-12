      PROGRAM MAIN
      INTEGER I
      REAL*4 A(100)/100*0/,B(100)/100*0/,X/2/
      DO 10 I=1,100
         A(I)=I
   10 CONTINUE
      DO 20 I=1,100
         IF (I.GT.50) GOTO 20
         B(I)=AMOD(A(I),X)
   20 CONTINUE
      WRITE(6,100) (B(I),I=1,100)
  100 FORMAT(1H ,6(F7.3,3X))
      STOP
      END
