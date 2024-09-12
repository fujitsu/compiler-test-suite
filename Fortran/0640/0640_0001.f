      PROGRAM MAIN
      REAL*8 A(10,10)/90*3.5,10*2.5/
      DATA  J/2/
      DO 12 I=1,10
  11   IF(A(I,J).LT.3) GOTO 12
        DO 10 J=1,10
         A(I,J)=A(I,J)*.1
         IF(J.EQ.10) GOTO 11
  10    CONTINUE
        J=J-10
       GOTO 11
  12  CONTINUE
      WRITE(6,*) A
      DO 20 I=1,10
  21    CONTINUE
       DO 22 J=1,10
  22     A(I,J)=A(I,J)*10
        IF(A(I,J-1).LT.3) GOTO 21
  20    IF(A(I,J-2).LT.9) GOTO 21
      WRITE(6,*) A
      END
