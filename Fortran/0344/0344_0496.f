      PROGRAM MAIN
      REAL*8  A(10),B(10)
      EQUIVALENCE (A(1),B(1))
      DO 5 I=1,10
    5   A(I)=REAL(I)
      DO 10 I=1,10
        IF (A(I)**2.LT.1) GOTO 20
        IF (SIN(B(I)).LE.0) THEN
          A(I)=B(I)+I
        ELSE
          GOTO 20
       ENDIF
   10 CONTINUE
   20 A(I)=A(I)*B(I)
   30 WRITE(6,*) B
      STOP
      END
