      SUBROUTINE SUB(C,CA)
      CHARACTER*(*) C,CA(10)
      I1=1
      I10=10
      CALL SUB3((/((/ C(I1:3)/),i=1,i10 ) /), 
     1          (/((/ C(I1:3)//C(I1:3)/),i=1,i10) /) )
      CALL SUB3((/((/ C(I1:3)/),i=1,i10)  /) ,
     1          (/  CA     //CA        /) )
      CALL SUB4((/((/ C(I1:3)//C(I1:3) /),i=1,i10) /), 
     1          (/((/C(I1:3)    /),i=1,10) /) )
      CALL SUB4((/ CA     //CA         /)    , 
     1   (/((/C(I1:3)    /),i=1,i10) /) )
      PRINT *,'PASS'
      END
      CHARACTER*(3) C1,C2(10)
      C1='123'
      C2=C1
      CALL SUB(C1,C2)
      END
      SUBROUTINE SUB3(B,c)
      entry      SUB4(c,b)
      CHARACTER*(*) B(10),c(10)
      IF (LEN(B(1)).NE.3)PRINT *,'FAIL'
      IF (LEN(c   ).NE.6)PRINT *,'FAIL'
      DO 1 I=1,10
       IF(B(I).NE.'123')PRINT *,'FAIL'
       IF(C(I).NE.'123123')PRINT *,'FAIL'
   1  CONTINUE
      RETURN
      END
