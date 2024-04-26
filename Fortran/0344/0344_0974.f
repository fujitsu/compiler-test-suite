      INTEGER A(100),B(100)
      DATA N/100/,B/100*2/,INC/3/
      DO 10 I=1,N
         A(I) = ISHFT(B(I),INC)
   10 CONTINUE
      WRITE(6,100) (A(I)+B(I),I=1,N)
  100 FORMAT(10I4)
      STOP
      END
