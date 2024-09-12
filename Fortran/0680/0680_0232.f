      PROGRAM MAIN
      INTEGER I
      REAL*8 A(100)/100*0/,B(100)/100*0/
      DO 10 I=1,100,2
        A(I)=DBLE(I)+0.3
        A(I+1)=DBLE(I)+0.8
   10 CONTINUE
      DO 20 I=1,100
        IF (I.GT.50) GOTO 20
        B(I)=DCOS(A(I))
   20 CONTINUE
      WRITE(6,100) (B(I),I=1,100)
  100 FORMAT(1H ,5(F10.7,3X))
      STOP
      END
