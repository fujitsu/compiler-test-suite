      CHARACTER C,CA(5)
      INTEGER IA(5)
      C='1'
      CA='?'
      I5=5
      I0=0
      IA=0
      CALL SUB1(C,CHAR( ICHAR ( (/((/C/),i=1,I5)              /)) )         )
      CALL SUB1(C,CHAR( ICHAR ( (/(/((/C/),i=1,I5)/)//C(5:1)  /)) )         )
      CALL SUB1(C,CHAR( ICHAR ( (/((/C/),i=1,I5)              /)) )//C(5:1))
      CALL SUB1(C,CHAR( ICHAR ( (/((/C/),i=1,I5)              /))+I0 ) )
      CALL SUB1(C,CHAR( ICHAR ( (/(/((/C/),i=1,I5)/)//CA(1:I5)(5:1)/) ) ) )
      CALL SUB1(C,CHAR( ICHAR ( (/((/C/),i=1,I5)/) ))//CA(1:I5)(5:1) )
      CALL SUB1(C,CHAR( ICHAR ( (/((/C/),i=1,I5)/))+IA(1:I5) ) )
      PRINT *,'PASS'
      END
      SUBROUTINE SUB1(C,CA)
      CHARACTER*(*) C,CA(5)
      IF (LEN(C).NE.1) PRINT *,'FAIL'
      IF (LEN(CA).NE.1) PRINT *,'FAIL'
      DO 1 I=1,LEN( (/ ((/ C /) ,k=1,100)/))+4
          IF (C.NE.CA(I))PRINT *,'FAIL'
          IF (I.LT.1 .OR. I.GT.5) PRINT *,'FAIL'
   1  CONTINUE
      END
