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
      SSS1   = 1000.0
      SSS2   = 1000.0
       XXX  = 0.0
       YYY  = 0.0
       ZZZ  = 0.0
         DO 120 JJ =  1  , M2
         DO 120 II =  1  , M1
         XWW1 = XT(II,JJ,1)
         YWW1 = YT(II,JJ,1)
         ZWW1 = ZT(II,JJ,1)
         SNOR1= (XXX-XWW1)**2+(YYY-YWW1)**2+(ZZZ-ZWW1)**2
         XWW2 = XT(II,JJ,2)
         YWW2 = YT(II,JJ,2)
         ZWW2 = ZT(II,JJ,2)
         SNOR2= (XXX-XWW2)**2+(YYY-YWW2)**2+(ZZZ-ZWW2)**2

         IF( SNOR1.LT.SSS1 ) SSS1 = SNOR1
         IF( SNOR2.LT.SSS2 ) SSS2 = SNOR2

  120  CONTINUE
      WRITE(6,600) SSS1,SSS2
 600  FORMAT(1H , F12.3)
      STOP
      END
