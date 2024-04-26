      PROGRAM MAIN
      REAL A(100),B(100),C(100)
      DATA B/100*0./,C/100*0/,J/2/
C
      DO 10 I=1,100
        A(I)=REAL(I)/2
   10 CONTINUE
      DO 20 I=1,100
        C(I)=J+B(J-1)-I
        IF (A(50).LE.25) THEN
          DO 30 J=I+1,100
            B(I)=C(I)+B(J)
            C(I)=J+B(J)-I
   30     CONTINUE
        ELSE
          DO 40 J=I+2,100
            B(J)=A(J)+B(J)
   40     CONTINUE
        ENDIF
        C(I)=J+B(J-1)+A(I)
   20 CONTINUE
C
      
      WRITE(6,*) C
      STOP
      END
