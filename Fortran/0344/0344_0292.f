      PROGRAM MAIN
      REAL A(100),B(100)
      DATA A/100*10/,B/100*5/
C
      DO 20 I=2,100
        B(I)=A(I)/I*50+B(I)
        IF (B(I).GT.0.0) THEN
          B(I)=A(I)/I*50+B(I)
        ELSEIF (B(I).EQ.0.0) THEN
            B(I)=A(I)+B(I-1)
          ELSE
            A(I)=50+B(I-1)
            B(I)=A(I)/I*50+B(I)
          ENDIF
        B(I)=A(I)/I*50+B(I)
   20 CONTINUE
      
      WRITE (6,*) B
      STOP
      END
