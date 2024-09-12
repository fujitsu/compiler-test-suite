      PROGRAM MAIN
      CHARACTER*20 C1,C2
      character*50 ch1
      C1='ABCDEFGHIJKLMNOPQRSTUVWXYZ'
      I1=1
      I10=10
      I20=20
      ch1='1234567ABABABABABCDEFGHIJKLMNOPQRSTUVWXYZ'
      C2=C1( 1:2 )//C1(I1:2)//C1(1:I1+1)//C1(I1:I20/I10)//C1(:)
      IF(C2.EQ.ch1(8:27)) THEN
      ELSE
        PRINT *,' *** ITEM1 NG ***'
      END IF
      C2=C1(I1+I10+I20-10-I1:I1+I10+I20-10-I1)//C1(I1:I1+5)
      IF(C2.EQ.'TABCDEF             ')                            THEN
      ELSE
        PRINT *,' *** ITEM2 NG ***'
      END IF
      WRITE(6,*) '*****PASS*****'
      STOP
      END
