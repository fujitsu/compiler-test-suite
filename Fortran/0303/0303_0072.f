      DIMENSION  A(10),B(10),C(10)
      LOGICAL    L(10)
      DATA       L/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     1             .FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA       A,B/20*1.0/,c/10*0/
C
      DO 10 I=1,10
        X = 0.
        Y = X
        A(1) = I
        IF(.NOT.L(I)) THEN
          C(I) = A(1)
        ENDIF
        B(I) = Y
   10 CONTINUE
C
      WRITE(6,1000) B
      WRITE(6,1000) C
 1000 FORMAT(10(F10.5))
      STOP
      END
