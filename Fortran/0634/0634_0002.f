      WRITE (6,10)
   10 FORMAT('1',5X,'====== FORTRAN ====== ... = TEST =' /)
      IP=0
      CALL F02101 (IP)
      CALL F02103 (IP)
      CALL F02105 (IP)
      CALL F02106 (IP)
      CALL F02108 (IP)
      IF (IP.NE. 0 ) GO TO 30
      WRITE (6,20)
   20 FORMAT(' ',20X, '= TEST =     OK' )
   30 WRITE (6,40)
   40 FORMAT (1H ,20X,'END RUN UNIT')
      STOP
      END
      SUBROUTINE F02101 (IP)
      COMMON /LABEL1/ IB1
      CALL F02102 (IP)
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
      SUBROUTINE F02103 (IP)
      COMMON /LABEL2/ IB5,IB6
      R00 = F02104(IP)
      RETURN
      E N D
      FUNCTION F02104 (IP)
      COMMON /LABEL/ IB5,IB6
      EQUIVALENCE (IB7,IB8)
      JCONT=0
      ASSIGN 0010 TO IB5
      GO TO IB5,(10,9,19,29)
   50 JCONT=JCONT-1
   10 CONTINUE
      JCONT=JCONT+1
      ASSIGN 1 1 TO IB7
      GO TO IB7,(11,9,19,29)
   60 JCONT=JCONT-1
  1 1 CONTINUE
      JCONT=JCONT+1
      ASSIGN 2 2 TO IB6
      GO TO IB6,(22,9,19,29)
   70 JCONT=JCONT-1
 2 2  CONTINUE
      JCONT=JCONT+1
      F02104 =1.0
   99 IF(JCONT.EQ.3) RETURN
    9 CONTINUE
   19 CONTINUE
   29 CONTINUE
      IP=IP+1
      WRITE(6,100) JCONT
  100 FORMAT(1H0,20X,'==TEST==',3X,'NG',5X, 5H3 ' ,I1)
      RETURN
      E N D
      SUBROUTINE F02105 (IP)
      KCONT=0
      GO TO 1
   20 KCONT=KCONT-1
11111 CONTINUE
      KCONT=KCONT+1
      GO TO 1 1
   30 KCONT=KCONT-1
    1 CONTINUE
      KCONT=KCONT+1
      GO TO 11111
   40 KCONT=KCONT-1
1 1   CONTINUE
      KCONT =KCONT+1
   99 IF(KCONT.EQ.3) RETURN
      WRITE(6,100) KCONT
      IP=IP+1
  100 FORMAT(1H0,20X,'==TEST==',3X,'NG',5X,4H3 ' ,I1)
      RETURN
      E N D
      SUBROUTINE F02106 (IP)
      R02 = F02107 (IP)
      RETURN
      E N D
      FUNCTION F02107 (IP)
      LCONT=0
     0G
     1 O
     2 T
     3 O
     4 0
     5 0
     6 0
     7 1
     E 0
   50 LCONT=LCONT-1
00010 CONTINUE
      LCONT=LCONT+1
     0G
     1 O
     2 T
     3 O
     4
     5 2
     6 0
     7
     E
   60 LCONT=LCONT-1
 20   CONTINUE
      LCONT=LCONT+1
     0GO
     1 TO
     E 03
   70 LCONT=LCONT-1
   03 CONTINUE
      LCONT=LCONT+1
      F02107 =1.0
   99 IF(LCONT.EQ.3) RETURN
      IP=IP+1
      WRITE(6,100) LCONT
  100 FORMAT(1H0,20X,'=TEST= ',3X,'NG',5X,4H3 ' ,I1 )
      F02107= 10.0
      RETURN
      E N D
      SUBROUTINE F02108 (IP)
      R03 = F02109(IP)
      RETURN
      E N D
      FUNCTION F02109 (IP)
      DO 100 I=1,6
      IS=0
      GO TO ( 1,11111,0010,2 0,30 ,0 4 0 ) , I
      GO TO 61
    1 CONTINUE
      IS=10
      GO TO 61
11111 CONTINUE
      IS=20
      GO TO 61
 0010 CONTINUE
      IS=30
      GO TO 61
 2 0  CONTINUE
      IS=40
      GO TO 61
30    CONTINUE
      IS=50
      GO TO 61
0 4 0 CONTINUE
      IS=60
   61 IF(I*10.EQ.IS) GO TO 100
      WRITE(6,90) I,IS
      IP=IP+1
   90 FORMAT(1H0,20X,'==TEST==',3X,'NG',5X,I1,3H ' ,I3 )
  100 CONTINUE
      F02109 =1.0
      RETURN
      E N D