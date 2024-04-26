      K=0
      DO 10 J=1,10
        DO 10 I=1,10000
          IF(I.GT.50) THEN
            K=K+1
          ENDIF
  10  CONTINUE
      WRITE(6,*) K
C
      K=0
      DO 20 J=1,10
        DO 20 I=1,10000
          IF(I.GT.50) THEN
            K=K+1
          ENDIF
  20  CONTINUE
      WRITE(6,*) K,I,J
      STOP
      END
