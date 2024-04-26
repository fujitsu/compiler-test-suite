      REAL*4 A(10,10),B(10,10)
      DATA A/100*1/,B/100*2/
      WRITE(6,99) ((A(I,J)+B(I,J),I=1,10),J=1,10)
   99 FORMAT(10F5.1)
      STOP
      END
