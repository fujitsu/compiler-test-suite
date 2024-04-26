      DIMENSION  LST(10),B(10,10)
      DATA  B,N/100*2.0,10/
      DO 1 I=1,N
    1 LST(I) = I
      DO 10 J=1,10
        DO 10 I=1,N
          B(LST(I),J) = I
   10 CONTINUE
      WRITE(6,*) B
      STOP
      END
