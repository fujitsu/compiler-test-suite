      INTEGER A(10)
      CHARACTER*3 C,CA(10)
      I0=0
      I1=1
      I10=10
      A=1
      C='123'
      CA=C
      CALL SUB1((/(i,i= 1, 10) /))
      CALL SUB1((/(i,i=I1,I10) /))
      CALL SUB2((/( (/ I1 /),i=1,i10) /))
      CALL SUB2((/( (/ I1 /),i=1, 10) /))
      CALL SUB2((/  A+I0        /))
      CALL SUB3((/( (/ C  /),i=1,i10) /))
      CALL SUB3((/( (/ C  /),i=1, 10) /))
      CALL SUB3((/( (/ C(i1:3)  /),i=1,i10) /))
      CALL SUB3((/( (/ C(i1:3)  /),i=1, 10) /))
      CALL SUB4((/  CA//CA   /) )
      CALL SUB4((/((/  CA//CA   /),i=1,i1) /))
      CALL SUB4((/((/  CA//CA   /),i=10,i10) /))
      PRINT *,'PASS'
      END
      SUBROUTINE SUB1(A)
      INTEGER A(10)
      DO 1 I=1,10
       IF(A(I).NE.I) PRINT *,'FAIL'
    1 CONTINUE
      RETURN
      ENTRY      SUB2(A)
      DO 2 I=1,10
       IF(A(I).NE.1) PRINT *,'FAIL'
    2 CONTINUE
      END
      SUBROUTINE SUB3(B)
      CHARACTER*(*) B(10)
      DO 1 I=1,10
       IF(B(I).NE.'123')PRINT *,'FAIL'
   1  CONTINUE
      RETURN
      ENTRY      SUB4(B)
      DO 2 I=1,10
       IF(B(I).NE.'123123') PRINT *,'FAIL'
    2 CONTINUE
      END
