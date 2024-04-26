      PROGRAM MAIN
      INTEGER A(10),B(10)
      DATA A,B/20*1/
      DO 10 I=1,10
        IF (B(I).GT.A(I)) GOTO 20
        IF (A(I).EQ.2) GOTO 20
    5   A(I)=B(I)+I
   10 CONTINUE
   20 WRITE(6,*) A
   30 WRITE(6,*) B
      STOP
      END
