      INTEGER*4  A(10),B(10)
      LOGICAL    L(10)
      DATA       L/10*.TRUE./
      DATA       A/10*2/
      DATA       B/1,0,1,0,1,0,1,1,0,1/
      DO 10 I=1,10
        IF(A(I).GT.B(I)) THEN
          IF(L(I)) THEN
            A(I)=5
          ELSE
            B(I)=5
          ENDIF
        ENDIF
   10 CONTINUE
      WRITE(6,*) A
      WRITE(6,*) B
      STOP
      END
