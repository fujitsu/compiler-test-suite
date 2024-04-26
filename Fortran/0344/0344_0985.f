      REAL*8  A(100)
      REAL*8  B(100)
      REAL*4  C(100)
      DATA A/100*1.1/,B/100*2.2/,C/100*3.3/,N/100/
C
      DO 10 I=1,N
         WRITE(6,1) A,B,C
   10 CONTINUE
    1 FORMAT(1H ,10F5.1)
  100 FORMAT(1H ,5F10.2)
      STOP
      END
