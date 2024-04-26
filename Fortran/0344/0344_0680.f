      REAL A(100)/30*1.0,40*3.0,30*2.0/
      X=0.0
      J=0
      K=0
      DO 10 I=1,100,3
        Y=A(I)-X
        IF (Y.GT.0) THEN
          X=A(I)
          K=I+1
        ENDIF
   10 CONTINUE
      WRITE(6,*) K
      WRITE(6,1000) X
 1000 FORMAT(F10.5)
      STOP
      END
