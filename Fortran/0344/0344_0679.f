      REAL A(100)/30*1.0,40*3.0,30*2.0/
      T=0.0
      K=0
      DO 10 I=1,10
        IF (A(I).GT.T) THEN
          T=A(I)
          K=I
        ENDIF
   10 CONTINUE
      WRITE(6,1000) T
      WRITE(6,*) K
 1000 FORMAT(F10.5)
      STOP
      END
