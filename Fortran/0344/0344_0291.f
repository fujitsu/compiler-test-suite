      PROGRAM MAIN
      LOGICAL L(10)
      REAL A(361),B(361),C(361),D
      DATA C/361*0/,B/361*5/
C
      DO 10 J=1,10,2
        L(J)=.TRUE.
        L(J+1)=.FALSE.
   10 CONTINUE
      DO 20 I=2,361
        A(I)=I
        IF (L(3)) THEN
          D=REAL(I)
          B(I)=A(I)+SIN(D)
          C(I)=A(I)+B(I)-C(I-1)
          C(I)=B(I-1)+C(I)
        ELSE
          D=REAL(I)
          B(I)=COS(D)
          C(I)=A(I)+B(I)+C(I-1)
        ENDIF
   20 CONTINUE
      
      WRITE (6,101) C
  101 FORMAT(7F10.5)
      STOP
      END
