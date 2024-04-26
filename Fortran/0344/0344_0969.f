      PROGRAM MAIN
      LOGICAL L(100)
      INTEGER A(100)
      DATA A/100*2/,N/100/
      DO 10 I=1,N
         L(I) = BTEST(A(I),2)
   10 CONTINUE
      WRITE(6,100) (L(I),I=1,N)
  100 FORMAT(10L4)
      STOP
      END
