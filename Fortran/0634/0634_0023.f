      WRITE (6,10)
   10 FORMAT(1H1,'====== FORTRAN ====== ... = TEST =')
      IP = 0
      CALL F35101(IP)
      CALL F35102(IP)
      IF (IP.NE.0 ) GO TO 30
      WRITE ( 6,20 )
   20 FORMAT(1H0,20X,'= TEST =',5X,'OK')
30    WRITE (6 ,40 )
   40 FORMAT(5X,'END RUNUNIT')
      STOP
      END
      SUBROUTINE F35101(IP)
      REAL*8  A
      REAL*8  D0100(6),D0200(3),D0300(3)
     0DATA D0100 / 2*5.82D0,8.9355D4,5.55D0,3.01952D2,3.8744D3/,D0300/3*
     E 0.0D0 /
      D0200(1)=DMOD(D0100(1),D0100(2))
    5 IF(DABS(D0200(1)-D0300(1)).LE.1.0D-14) GO TO 20
      WRITE(6,100)
100   FORMAT(1H ,20X,'==TEST==',3X,'NG ',3X,' =====================
     E =====')
      IP=IP+1
20    D0200(2) = DMOD(D0100(3),D0100(4))
      IF(DABS(D0200(2)- 0.0    ).LT.1.0D-11) GO TO 11
      WRITE(6,300)
300   FORMAT(1H ,20X,'==TEST==',3X,'NG ',3X,' =====================
     E =====')
      IP=IP+1
11    A = DMOD(10.0D0,5.0D0)
      IF(A.EQ.D0300(2)) GO TO 40
      WRITE(6,22)
22    FORMAT(10X,'===================================')
      IP = IP+1
40    D0200(3)=DMOD(D0100(5),D0100(6))
50    IF(DABS(D0200(3) - D0100(5)).LE.1.0D-11 ) GO TO 70
      WRITE(6,600)
600   FORMAT(1H0,20X,'==TEST== NG',5X,' ==========================
     E ' )
      IP=IP+1
70    RETURN
      END
      SUBROUTINE F35102(IP)
      REAL*8  D0100(8),D0200(4),D0300
     0DATA D0100 / 3.530954D2,5.04422D2,1188.0D1,-10.8D1, 0.740
     E 7412585931550D16,6.0D0,0.0D0,1.9784953219D10 /
      D0300=D0100(7)
10    D0200(1)=DMOD(D0100(1),D0100(2))
20    IF(DABS(D0200(1) - 3.530954D2 ).LE.1.0D-14 ) GO TO 70
      WRITE(6,300)
300   FORMAT(1H ,20X,'==TEST==',3X,'NG ',3X,' =====================
     E ============')
      IP=IP+1
70    D0200(3)=DMOD(D0100(5),D0100(6))
80    IF(DABS(D0300-D0200(3)).LE.1.0D0 ) GO TO 50
      IP = IP + 1
      WRITE(6,900)
900   FORMAT(1H ,20X,'==TEST==',3X,'NG ',3X,' ==================
     E ================================')
50    D0200(2) = DMOD(D0100(3),D0100(4))
      IF(DABS(D0300 - D0200(2)).LE.1.0D-13 ) GO TO 100
      IP=IP+1
      WRITE(6,600)
600   FORMAT(1H ,20X,'==TEST==',3X,'NG ',3X,' =================
     E ============')
100   D0200(4)=DMOD(D0100(7),D0100(8))
110   IF(DABS(D0300 - D0200(4)) .LE.1.0D-14) GO TO 130
      WRITE(6,1200)
1200  FORMAT(1H ,20X,'==TEST==',3X,'NG ',3X,' ====================
     E =======')
      IP=IP+1
130   RETURN
      END
