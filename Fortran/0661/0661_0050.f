      CALL S1
      CALL S2
      PRINT *,'PASS'
      END
      SUBROUTINE S1
      INTEGER IA(10,10)/100*1/
      CHARACTER*10 C,X(10)
      CHARACTER     D*4/'1234'/,CFUN*100,E(4)*4/4*'1234'/
      I4FUN0(I)=IA(I,I)
      I4FUN1(I)=I4FUN0(I)+I+IA(I,I)+IA(I+1,I+1)+IA(J-1,J-1)
      I4FUN2(I)=IA(I,I)+I+IA(I+1,I+1)+IA(J-1,J-1)+I4FUN1(I)
      CFUN(I)=D(:I)//D(I:4)//E(I)//E(I)(I:)//E(I)( :I)//
     1  D(:I+1)//D(I+1:4)//E(I+1)//E(I+1)(I+1:)//E(I+1)(:I+1)//
     1  D(:I-1)//D(I-1:4)//E(I-1)//E(I-1)(I-1:)//E(I-1)(:I-1)
      ILEN(I)=LEN(D(:I)//D(I:4)//E(I)//E(I)(I:)//E(I)( :I)//
     1  D(:I+1)//D(I+1:4)//E(I+1)//E(I+1)(I+1:)//E(I+1)(:I+1)//
     1  D(:I-1)//D(I-1:4)//E(I-1)//E(I-1)(I-1:)//E(I-1)(:I-1))
      JLEN(I)=I4FUN2(-40+J+
     1        LEN(D(:I)//D(I:4)//E(I)//E(I)(I:)//E(I)( :I)//
     1  D(:I+1)//D(I+1:4)//E(I+1)//E(I+1)(I+1:)//E(I+1)(:I+1)//
     1  D(:I-1)//D(I-1:4)//E(I-1)//E(I-1)(I-1:)//E(I-1)(:I-1)))
      DO 101 J=2,3
         IF (J.EQ.2) THEN
           IF (CFUN(J).NE.'122341234234121233412343412311234123412341')
     1   PRINT *,'FAIL'
       ELSE
           IF (CFUN(J).NE.'123341234341231234412344123412234123423412')
     1   PRINT *,'FAIL'
       ENDIF
101   CONTINUE
      DO 102 J=2,3
       IF(ILEN(J).NE.LEN('122341234234121233412343412311234123412341')
     1  )PRINT *,'FAIL'
102   CONTINUE
      DO 103 J=2,3
       IF ( JLEN(J).NE.11+J*2 )PRINT *,'FAIL'
103   CONTINUE
      DO 1 J=2,9
 1      IF (I4FUN2(J).NE.9+(J-1)*2)PRINT *,'FAIL'
      DO 2 J=2,9
 2      IF (I4FUN2(IA(J,J+1)).NE.9 )PRINT *,'FAIL'
      DO 3 J=2,9
 3      IF (I4FUN2(LEN(C(:J))).NE.9+(J-1)*2)PRINT *,'FAIL'
      DO 4 J=2,9
 4      IF (I4FUN2(LEN(X(J)(:J))).NE.9+(J-1)*2)PRINT *,'FAIL'
      DO 5 J=2,9
 5      IF (I4FUN2(LEN(X(J+1)(:J))).NE.9+(J-1)*2)PRINT *,'FAIL'
      DO 6 J=2,9
 6      IF (I4FUN2(LEN(X(J-1)(:J))).NE.9+(J-1)*2)PRINT *,'FAIL'
      DO 7 J=2,9
 7      IF (I4FUN2(LEN(C(J:10))).NE.27-(J-1)*2)PRINT *,'FAIL'
      DO 8 J=2,9
 8      IF (I4FUN2(LEN(X(J)(J:10))).NE.27-(J-1)*2)PRINT *,'FAIL'
      DO 9 J=2,9
 9      IF (I4FUN2(LEN(X(J+1)(J:10))).NE.27-(J-1)*2)PRINT *,'FAIL'
      DO 10J=2,9
 10     IF (I4FUN2(LEN(X(J-1)(J:10))).NE.27-(J-1)*2)PRINT *,'FAIL'
      END
      SUBROUTINE S2
      INTEGER*4  J
      INTEGER IA(10,10)/100*1/
      CHARACTER*10 C,X(10)
      CHARACTER     D*4/'1234'/,CFUN*100,E(4)*4/4*'1234'/
      I4FUN0(I)=IA(I,I)
      I4FUN1(I)=I4FUN0(I)+I+IA(I,I)+IA(I+1,I+1)+IA(J-1,J-1)
      I4FUN2(I)=IA(I,I)+I+IA(I+1,I+1)+IA(J-1,J-1)+I4FUN1(I)
      CFUN(I)=D(:I)//D(I:4)//E(I)//E(I)(I:)//E(I)( :I)//
     1  D(:I+1)//D(I+1:4)//E(I+1)//E(I+1)(I+1:)//E(I+1)(:I+1)//
     1  D(:I-1)//D(I-1:4)//E(I-1)//E(I-1)(I-1:)//E(I-1)(:I-1)
      ILEN(I)=LEN(D(:I)//D(I:4)//E(I)//E(I)(I:)//E(I)( :I)//
     1  D(:I+1)//D(I+1:4)//E(I+1)//E(I+1)(I+1:)//E(I+1)(:I+1)//
     1  D(:I-1)//D(I-1:4)//E(I-1)//E(I-1)(I-1:)//E(I-1)(:I-1))
      JLEN(I)=I4FUN2(-40+J+
     1        LEN(D(:I)//D(I:4)//E(I)//E(I)(I:)//E(I)( :I)//
     1  D(:I+1)//D(I+1:4)//E(I+1)//E(I+1)(I+1:)//E(I+1)(:I+1)//
     1  D(:I-1)//D(I-1:4)//E(I-1)//E(I-1)(I-1:)//E(I-1)(:I-1)))
      DO 101 J=2,3
         IF (J.EQ.2) THEN
           IF (CFUN(J).NE.'122341234234121233412343412311234123412341')
     1   PRINT *,'FAIL'
       ELSE
           IF (CFUN(J).NE.'123341234341231234412344123412234123423412')
     1   PRINT *,'FAIL'
       ENDIF
101   CONTINUE
      DO 102 J=2,3
       IF(ILEN(J).NE.LEN('122341234234121233412343412311234123412341')
     1  )PRINT *,'FAIL'
102   CONTINUE
      DO 103 J=2,3
       IF ( JLEN(J).NE.11+J*2 )PRINT *,'FAIL'
103   CONTINUE
      DO 1 J=2,9
 1      IF (I4FUN2(J).NE.9+(J-1)*2)PRINT *,'FAIL'
      DO 2 J=2,9
 2      IF (I4FUN2(IA(J,J+1)).NE.9 )PRINT *,'FAIL'
      DO 3 J=2,9
 3      IF (I4FUN2(LEN(C(:J))).NE.9+(J-1)*2)PRINT *,'FAIL'
      DO 4 J=2,9
 4      IF (I4FUN2(LEN(X(J)(:J))).NE.9+(J-1)*2)PRINT *,'FAIL'
      DO 5 J=2,9
 5      IF (I4FUN2(LEN(X(J+1)(:J))).NE.9+(J-1)*2)PRINT *,'FAIL'
      DO 6 J=2,9
 6      IF (I4FUN2(LEN(X(J-1)(:J))).NE.9+(J-1)*2)PRINT *,'FAIL'
      DO 7 J=2,9
 7      IF (I4FUN2(LEN(C(J:10))).NE.27-(J-1)*2)PRINT *,'FAIL'
      DO 8 J=2,9
 8      IF (I4FUN2(LEN(X(J)(J:10))).NE.27-(J-1)*2)PRINT *,'FAIL'
      DO 9 J=2,9
 9      IF (I4FUN2(LEN(X(J+1)(J:10))).NE.27-(J-1)*2)PRINT *,'FAIL'
      DO 10J=2,9
 10     IF (I4FUN2(LEN(X(J-1)(J:10))).NE.27-(J-1)*2)PRINT *,'FAIL'
      END
