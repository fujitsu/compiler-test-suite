      WRITE (6,10)
   10 FORMAT ('1',5X,'====== FORTRAN ======')
      IP=0
      CALL F02108 (IP)
      IF (IP.NE. 0 ) GO TO 30
      WRITE (6,20)
   20 FORMAT (' ',20X,'= TEST =',5X,'OK')
   30 WRITE (6,40)
   40 FORMAT (1H ,20X,'END RUN UNIT')
      STOP
      END
      SUBROUTINE F02108 (IP)
      R03 = F02109(IP)
      RETURN
      E N D
      FUNCTION F02109 (IP)
      DO 100 I=1,6
      IS=0
      GO TO ( 1,11111,0010,2 0,30 ,0 4 0 ) , I
    1 CONTINUE
      IS=10
      GO TO 61
11111 CONTINUE
      IS=20
      GO TO 61
 0010 CONTINUE
      IS=30
      GO TO 61
  2 0 CONTINUE
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
