      WRITE(6,10)
10    FORMAT('1',5X,'====== FORTRAN ====== ... = TEST =')
      CALL F64201
      WRITE(6,20)
20    FORMAT(5X,'END RUNUNIT')
      STOP
      END
      SUBROUTINE F64201
      DIMENSION I0120(20),R0220(20),R0320(20) ,R0406(6)
      DATA I0120/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,999/
     0DATA R0220/10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0,
     E110.0,120.0,130.0,140.0,150.0,160.0,170.0,180.0,190.0,999.0/
     0DATA R0320/ 2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,
     E2.0,2.0,2.0,2.0,2.0,2.0,999.0/
      I1=20
      DO 30 ID1=1,20
      WRITE(I1, 4) I0120(ID1),R0220(ID1),R0320(ID1)
30    CONTINUE
      REWIND I1
10    WRITE(6,1)
11    SUM=0.0
12    READ (I1,4) ITEM,PRICE,SALES
13    IF(ITEM-999) 14,18,14
14    AMOUNT=PRICE*SALES
15    SUM=SUM+AMOUNT
16    WRITE(6, 3) ITEM,PRICE,SALES,AMOUNT
17    GO TO 12
18    REWIND I1
      WRITE (I1,2) SUM
      WRITE (6, 40)
40    FORMAT(1H0 ,20X,'F64201',3X,31H=============================== )
    1 FORMAT('0 SALES RECODE',///,' ITEM PRICE SALES AMOUNT ',/// )
2     FORMAT('***',14H TOTAL AMOUNT   ,'***',F10.1 )
    3 FORMAT(1H0,I4,3X,F7.1,3X,F6.0,3X,F9.1)
    4 FORMAT(I3,F6.1,F6.0)
      REWIND I1
      READ(I1,5) R0406
    5 FORMAT(5A4,F10.1)
      WRITE(6,50) R0406
50    FORMAT(1H0,20X,'F64201',3X,11H=========== / 10X,5A4 ,F10.1 )
      WRITE(6,60)
60    FORMAT(1H0,29X,11H===========,20H=================== )
      RETURN
      END