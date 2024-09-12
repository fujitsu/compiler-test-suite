      PROGRAM MAIN
      REAL A(10)/1,2,3,4,5,6,7,8,9,-10/,B(2)/0,0/,C(10),S/999/
      DO 10 I=1,10
       S   =B(1)
       B(1)=S   +A(I)
  10  CONTINUE
      WRITE(6,900) S
      WRITE(6,900) B
      DO 20 I=1,10
       S   =B(2)+A(I)
       B(2)=S
  20  CONTINUE
      WRITE(6,900) S
      WRITE(6,900) B
  900 FORMAT(' ',(6E12.4))
      STOP
      END
