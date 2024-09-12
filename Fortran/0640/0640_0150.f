      PROGRAM MAIN
      REAL     A(10)/10*100/,B(2)/2*99/,S/200/
      DO 10 I=1,10
       IF (I.GE.10)  GOTO 10
        S=I
        DO 20 J=1,2
  20     B(J)=S
        A(I)=S*S
  10  CONTINUE
      WRITE(6,*) A
      WRITE(6,*) B
      STOP
      END
