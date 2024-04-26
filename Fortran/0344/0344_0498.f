      PROGRAM MAIN
      INTEGER*4 A(10),B(10)
      DATA A/10*0/,B/10*0/
      DO 10 I=1,10
        IF (A(I)*B(I)) 1,2,3
    2   IF (A(I).LE.10) GOTO 3
        GOTO 4
    1   IF (B(I).LE.20) GOTO 3
    4   IF (A(I)+B(I)) 3,5,5
    5   A(I)=B(I)-A(I)**2+1
   10 CONTINUE
    3 B(I)=A(I)+I
      WRITE(6,*) A
      WRITE(6,*) B
      STOP
      END
