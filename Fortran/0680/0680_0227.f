      PROGRAM MAIN
      INTEGER I
      REAL*8 A(100)/100*0/,B(100)/100*0/
      DO 10 I=1,100,2
        A(I)=I+0.3
        A(I+1)=I+0.8
   10 CONTINUE
      DO 20 I=1,100
        B(I)=DNINT(A(I))
   20 CONTINUE
      WRITE(6,100) (B(I),I=1,100)
  100 FORMAT(1H ,5(F7.3,3X))
      STOP
      END
