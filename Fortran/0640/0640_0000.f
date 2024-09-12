      PROGRAM MAIN
      REAL*8 A(10,10)/90*3.5,10*2.5/
      DO 10 I=1,10
       DO 10 J=1,10
  11    IF(A(I,J).LT.3) GOTO 10
         A(I,J)=A(I,J)*.1
         GOTO 11
  10  CONTINUE
      WRITE(6,*) A
      DO 20 I=1,10
       DO 20 J=1,10
  21    CONTINUE
         A(I,J)=A(I,J)*10
        IF(A(I,J).LT.3) GOTO 21
  20  CONTINUE
      WRITE(6,*) A
      END
