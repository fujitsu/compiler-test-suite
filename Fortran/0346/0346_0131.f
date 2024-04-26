      DIMENSION  A(10),B(10)
      DATA  A,B/5*1.0,5*2.0,10*1.0/
      DO 10 N=1,10
        IF(A(N).EQ.1.0) THEN
          B(N) = A(N) * 2.0
        ENDIF
   10 CONTINUE
      WRITE(6,*) B
      STOP
      END
