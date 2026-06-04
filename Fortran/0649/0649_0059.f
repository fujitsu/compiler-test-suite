      PROGRAM MAIN
      CALL SUB1
      CALL SUB2
      CALL SUB3
      CALL SUB4
      CALL SUB5
      CALL SUB6
      PRINT *,'*** PASS ***'
      STOP
      END
      SUBROUTINE SUB1
      IMPLICIT   INTEGER*2(I)
      DIMENSION  INT2(5),INT3(3,3),INT4(-2:2)
      DATA       (INT2(I),I=1,5)/5*1/
      EQUIVALENCE (INT1,INT2(1),INT3(1,1),INT4(-1))
      IF (INT1.EQ.1 .AND. INT2(2).EQ.1 .AND.
     -    INT3(2,2).EQ.1 .AND. INT4(2).EQ.1) THEN
        WRITE(6,*) '*** TEST ITEM  1 : OK ***'
       ELSE
        WRITE(6,*) '+++ TEST ITEM  1 : NG +++'
      ENDIF
      END
      SUBROUTINE SUB2
      IMPLICIT   REAL(R)
      DIMENSION  RNT2(5),RNT3(3,3),RNT4(-2:2)
      DATA       (RNT2(I),I=1,5)/5*1/
      EQUIVALENCE (RNT1,RNT2(1),RNT3(1,1),RNT4(-1))
      IF (RNT1.EQ.1 .AND. RNT2(2).EQ.1 .AND.
     -    RNT3(2,2).EQ.1 .AND. RNT4(2).EQ.1) THEN
        WRITE(6,*) '*** TEST ITEM  2 : OK ***'
       ELSE
        WRITE(6,*) '+++ TEST ITEM  2 : NG +++'
      ENDIF
      END
      SUBROUTINE SUB3
      IMPLICIT   REAL*4(X),REAL*8(Y)
      DIMENSION  YNT2(5),YNT3(3,3),YNT4(-2:2)
      DOUBLE PRECISION X(2)
      DATA       (YNT2(I),I=1,5)/5*1/
      EQUIVALENCE (YNT1,YNT2(1),YNT3(1,1),YNT4(-1),X(1))
      IF (YNT1.EQ.1 .AND. YNT2(2).EQ.1 .AND.
     -    YNT3(2,2).EQ.1 .AND. YNT4(2).EQ.1 .AND.
     -    X(2).EQ.1) THEN
        WRITE(6,*) '*** TEST ITEM  3 : OK ***'
       ELSE
        WRITE(6,*) '+++ TEST ITEM  3 : NG +++'
      ENDIF
      END
      SUBROUTINE SUB4
      IMPLICIT   LOGICAL(L)
      DIMENSION  LNT2(5),LNT3(3,3),LNT4(-2:2)
      DATA       (LNT2(I),I=1,5)/5*.TRUE./
      PARAMETER  (LL=.TRUE.)
      EQUIVALENCE (LNT1,LNT2(1),LNT3(1,1),LNT4(-1))
      IF (LNT1.EQV.LL .AND. LNT2(2).EQV.LL .AND.
     -    LNT3(2,2).EQV.LL .AND. LNT4(2).EQV.LL) THEN
        WRITE(6,*) '*** TEST ITEM  4 : OK ***'
       ELSE
        WRITE(6,*) '+++ TEST ITEM  4 : NG +++'
      ENDIF
      END
      SUBROUTINE SUB5
      IMPLICIT   CHARACTER(C)
      DIMENSION  CNT2(5),CNT3(3,3),CNT4(-2:2)
      DATA       (CNT2(I),I=1,5)/5*'C'/
      EQUIVALENCE (CNT1,CNT2(1),CNT3(1,1),CNT4(-1))
      IF (CNT1.EQ.'C' .AND. CNT2(2).EQ.'C' .AND.
     -    CNT3(2,2).EQ.'C' .AND. CNT4(2).EQ.'C') THEN
        WRITE(6,*) '*** TEST ITEM  5 : OK ***'
       ELSE
        WRITE(6,*) '+++ TEST ITEM  5 : NG +++'
      ENDIF
      END
      SUBROUTINE SUB6
      CHARACTER CNT1,CNT2(5)*5,CNT3(3,3),CNT4(-2:2),CNT5*8
      DATA       (CNT2(I),I=1,5)/5*'CCCCC'/
      EQUIVALENCE (CNT1,CNT2(2)(2:2))
      EQUIVALENCE (CNT1,CNT3(1,1))
      EQUIVALENCE (CNT1,CNT4(-1))
      EQUIVALENCE (CNT1,CNT5(5:5))
      IF (CNT1.EQ.'C' .AND. CNT2(2)(3:3).EQ.'C' .AND.
     -    CNT3(2,2).EQ.'C' .AND. CNT4(2).EQ.'C' .AND.
     -    CNT5(4:4).EQ.'C') THEN
        WRITE(6,*) '*** TEST ITEM  6 : OK ***'
       ELSE
        WRITE(6,*) '+++ TEST ITEM  6 : NG +++'
      ENDIF
      END
