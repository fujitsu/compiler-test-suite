      INTEGER A(100),B(100)
      DATA A/100*1/,B/100*2/,N/100/
      DO 10 I=1,N
         A(I) = ISHFT(A(I),2)
         B(I) = ISHFT(B(I),-2)
   10 CONTINUE
      WRITE(6,100) (A(I)+B(I),I=1,N)
  100 FORMAT(10I4)
C
      STOP
      END
