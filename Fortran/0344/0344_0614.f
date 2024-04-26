      REAL*4 A(10)/10*1.0/,B(10)/10*2.0/,C(10)
      DO 10 I=1,10
        S=A(I)+B(I)
        C(I)=S*A(I)
 10   CONTINUE
      WRITE(6,1000) C
 1000 FORMAT(F10.5)
      STOP
      END
