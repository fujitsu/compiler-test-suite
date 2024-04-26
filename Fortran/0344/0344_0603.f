      REAL A(10)
      DATA N/5/
      DO 10 I=1,10
        A(I)=I
 10   CONTINUE
      A(N)=A(N)+1
      WRITE(6,1000) A
 1000 FORMAT(F10.5)
      STOP
      END
