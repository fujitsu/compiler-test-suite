      PROGRAM MAIN
      REAL*4  A(10),B(10)
      DATA A,B/20*1./
      DO 10 I=1,10
        IF (A(I)**2.LT.1) GOTO 20
        IF (SIN(B(I))) 20,10,7
    7   A(I)=B(I)+I
   10 CONTINUE
   20 WRITE(6,*) A
   30 WRITE(6,*) B
      STOP
      END
