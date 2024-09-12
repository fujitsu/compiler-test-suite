      WRITE (6,10)
   10 FORMAT('1',5X,'====== FORTRAN ====== ... = TEST ='/)
      IP=0
      CALL F02101 (IP)
      IF (IP.NE. 0 ) GO TO 30
      WRITE (6,20)
   20 FORMAT(' ',20X,'= TEST =     OK'/)
   30 WRITE (6,40)
   40 FORMAT (1H ,20X,'END RUN UNIT')
      STOP
      END
      SUBROUTINE F02101 (IP)
      COMMON /LABEL1/ IB1
      CALL F02102(IP)
      RETURN
      E N D
      SUBROUTINE F02102 (IP)
      COMMON /LABEL1/ IB1
      EQUIVALENCE (IB2,IB3)
      ICONT=0
      ASSIGN 1 TO IB1
      GO TO IB1,(1,2,3,4)
   20 ICONT=ICONT-1
 1111 CONTINUE
      ICONT=ICONT+1
      ASSIGN 10 TO IB4
      GO TO IB4,(2,10,3,4)
      IP=IP+1
      WRITE(6,50)
   50 FORMAT('0','FAIL =========================================='/)
    1 CONTINUE
      ASSIGN 1111 TO IB2
      ICONT=ICONT+1
      GO TO IB2,(2,3,4,1111)
   30 ICONT=ICONT-1
   10 CONTINUE
      ICONT=ICONT+1
   99 IF(ICONT.EQ.3) RETURN
    2 CONTINUE
    3 CONTINUE
    4 CONTINUE
      WRITE(6,100) ICONT
      IP=IP+1
  1000FORMAT(1H0,20X,'==TEST==',3X,'NG',5X, 4H3 ' ,I1,'FAIL ========'
     *  ,
     E '========' )
      RETURN
      END
