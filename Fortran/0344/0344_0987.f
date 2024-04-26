      REAL*8     A(100)
      COMPLEX*16 B(100)
      INTEGER*8  C(100)
      DATA A/100*0.0/,B/100*(4.3,5.4)/,C/100*30/
C
      DO 10 I=1,100
         A(I) = B(I) + C(I)
   10 CONTINUE
      WRITE(6,1) A
    1 FORMAT(1H ,10F5.1)
      STOP
      END
