      K=0
      J=10
      DO 10 I=1,100000
        IF(J.GT.5) THEN
          K=K+1
        ENDIF
  10  CONTINUE
      WRITE(6,*) K
      STOP
      END
