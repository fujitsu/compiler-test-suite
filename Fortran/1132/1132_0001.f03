      PROGRAM CV2000
      TYPE STR
         REAL*8 A(10,10)/90*3.5,10*2.5/
      END type STR
      TYPE(STR) STR_DATA
      DATA  J/2/
      DO 12 I=1,10
  11   IF(STR_DATA%A(I,J).LT.3) GOTO 12
        DO 10 J=1,10
         STR_DATA%A(I,J)=STR_DATA%A(I,J)*.1
         IF(J.EQ.10) GOTO 11
  10    CONTINUE
        J=J-10
       GOTO 11
  12  CONTINUE
      WRITE(6,*) STR_DATA%A
      DO 20 I=1,10
  21    CONTINUE
       DO 22 J=1,10
  22     STR_DATA%A(I,J)=STR_DATA%A(I,J)*10
        IF(STR_DATA%A(I,J-1).LT.3) GOTO 21
  20    IF(STR_DATA%A(I,J-2).LT.9) GOTO 21
      WRITE(6,*) STR_DATA%A
      END
