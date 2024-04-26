      DIMENSION  A(10),B(10)
      LOGICAL    L(10)
      DATA       L/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     1             .FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA       A,B/20*1.0/
C
      DO 10 I=1,10
        X = 0.
        Y = X
        IF(.NOT.L(I)) THEN
          Y = A(I)
        ENDIF
        B(I) = Y
   10 CONTINUE
C
      WRITE(6,1000) B
 1000 FORMAT(10(F10.5))
      STOP
      END
