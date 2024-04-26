      PROGRAM MAIN
      DIMENSION A(50),B(50),C(50)
      DATA A/10*1.,10*2.,10*3.,10*4.,10*5./
      DATA B/10*5.,10*4.,10*3.,10*2.,10*1./
C
      DO 10 I=2,49
        IF (A(I).GT.3.0) THEN
          C(I)=A(I)+B(I+1)
          A(I)=B(I)
          IF (C(I).LE.5.0) THEN
            B(I)=A(I-1)+5.
            A(I)=A(I)+C(I)
          ENDIF
          B(I+1)=A(I)+B(I)
        ENDIF
   10 CONTINUE
C
      
      WRITE (6,*) A
      STOP
      END
