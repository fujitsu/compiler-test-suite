      INTEGER  N(10)/3*-1,4*5,3*1/
      REAL*4  A(10)/1.0,4.0,9.0,16.0,25.0,36.0,49.0,64.0,81.0,100.0/
      M=0
      Z=0.0
      DO 10 I=1,10
        IF (N(I).GT.M) THEN
          M=N(I)
          Z=SQRT(A(M))
        ENDIF
  10  CONTINUE
      WRITE(6,*) M,Z
      STOP
      END
