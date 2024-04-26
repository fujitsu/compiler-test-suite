      INTEGER A(10)/10*1/,B(10)/10*1/,N/0/
      DO 10 I=1,10
        A(I) = N
        B(I) = I*2
        DO 10 J=1,10
          A(J) = A(J) + B(I)
          N = N + 1
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
