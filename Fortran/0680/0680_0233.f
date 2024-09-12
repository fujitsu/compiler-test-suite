      PROGRAM MAIN
      INTEGER I
      REAL*8 A(100)/100*0/,B(100)/100*0/,X/2/
      COMPLEX*16 C(100)
      DO 10 I=1,100
         A(I)=I
   10 CONTINUE
      DO 20 I=1,100
         IF (I.GT.50) GOTO 20
         C(I)=DCMPLX(A(I),X)
         B(I)=CDABS(C(I))
   20 CONTINUE
      WRITE(6,100) (B(I),I=1,100)
  100 FORMAT(1H ,6(F7.3,3X))
      STOP
      END
