      PROGRAM MAIN
      INTEGER A(10),B(10)
      DATA A/10*5/,B/10*-5/
      DO 10 I=1,10
        IF (B(I)) 5,20,20
    5   IF (A(I)) 20,20,6
    6   A(I)=B(I)+I
   10 CONTINUE
   20 CONTINUE
   30 WRITE(6,*) A
      WRITE(6,*) B
      STOP
      END
