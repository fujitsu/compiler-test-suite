      INTEGER  AMAX
      INTEGER  A(10)
      DATA     AMAX/0/
      DATA     A/3,7,3,9,1,5,2,8,10,4/
      DO 10 I=1,10
        IF (AMAX.LT.A(I))THEN
          AMAX=A(I)
        ENDIF
   10 CONTINUE
      WRITE(6,100) AMAX
  100 FORMAT (4I10)
      STOP
      END
