      PROGRAM MAIN
      REAL*4 A(100),B(100,100)
      DATA A/100*1.0/,B/10000*1.1/
      DO 10 I=3,100
         A(I) = I
         A(I) = A(I) + 1
         A(I) = A(I-2) + I
         DO 10 J=1,100
            B(J,I) = SQRT(FLOAT(J))
   10 CONTINUE
      WRITE(6,1) A,((B(i,j),i=1,100,10),j=1,100,10)
   1  FORMAT(6f12.4)
      STOP
      END
