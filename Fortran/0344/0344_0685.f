      REAL*4  A(100)/100*1.0/
      AMAX=0.0
      DO 10 I=1,100
      ATMP=ABS(A(I))
      IF (ATMP.GT.AMAX) THEN
        AMAX=ATMP
      ENDIF
  10  CONTINUE
      WRITE(6,600) AMAX
 600  FORMAT(1H , F12.3)
      STOP
      END
