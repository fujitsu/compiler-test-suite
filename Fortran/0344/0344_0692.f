      PARAMETER (M1=71)
      PARAMETER (M2=36)
      PARAMETER (M3=20)
      REAL*4 XT(0:M1,M2,M3)
      REAL*4 YT(0:M1,M2,M3)
      REAL*4 ZT(0:M1,M2,M3)
        DO 10 K1=1,M3
        DO 10 J1=1,M2
        DO 10 I1=0,M1
          XT(I1,J1,K1)=REAL(MOD((M1-I1),20))
          YT(I1,J1,K1)=REAL(MOD((M1-I1),20))
          ZT(I1,J1,K1)=REAL(MOD((M1-I1),20))
   10   CONTINUE
      XXX    = 0.0
      YYY    = 0.0
      ZZZ    = 0.0
      SSS    = 1000.0
      IDX2W1 = 100
      IDX2W2 = 100
      IDX2W3 = 100
       DO 220 KK = 1,M3-1
       DO 220 JJ = 1,M2
       DO 220 II = 1,M1
       XWW  = XT(II,JJ,KK)
       YWW  = YT(II,JJ,KK)
       ZWW  = ZT(II,JJ,KK)
       SNOR = (XXX-XWW)**2+(YYY-YWW)**2+(ZZZ-ZWW)**2
       IF( SNOR.LT.SSS ) THEN
        SSS    = SNOR
        IDX2W1 = II
        IDX2W2 = JJ
        IDX2W3 = KK
       END IF
  220 CONTINUE
      WRITE(6,600) SSS
 600  FORMAT(1H , F12.3)
      WRITE(6,700) IDX2W1,IDX2W2,IDX2W3
 700  FORMAT(1H , I5)
      STOP
      END
