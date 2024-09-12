      WRITE (6,10)
   10 FORMAT ('1',5X,'====== FORTRAN ======')
      IP=0
      CALL F02106 (IP)
      IF (IP.NE. 0 ) GO TO 30
      WRITE (6,20)
   20 FORMAT (' ',20X,'= TEST =',5X,'OK')
   30 WRITE (6,40)
   40 FORMAT (1H ,20X,'END RUN UNIT')
      STOP
      END
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
      LCONT=LCONT-1
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
      LCONT=LCONT-1
 20   CONTINUE
      LCONT=LCONT+1
     0GO
     1 TO
     E 03 0
      LCONT=LCONT-1
 03 0 CONTINUE
      LCONT=LCONT+1
      F02107 =1.0
   99 IF(LCONT.EQ.3) RETURN
      IP=IP+1
      WRITE(6,100) LCONT
  100 FORMAT(1H0,20X,'=TEST= ',3X,'NG',5X,4H3 ' ,I1 )
      F02107= 10.0
      RETURN
      E N D
