      PROGRAM MAIN
      INTEGER*4 A(50),B(50),C(50),BIT(50),XX(50),YY(50)
      REAL*8    RA(100),RB(110),AVD(50),BVD(50),CVD(50),TTT(50)
      COMPLEX*8 SSS,S,ZZ(50)
      COMMON /VSU3/A,B,AVD,BVD,CVD,TTT
      COMMON /VSU4/XX,YY,RA,RB,ZZ
      DATA SSS/(2.,1.)/,S/(2.,1.)/,N/20/,BIT/50*1/,C/50*2/
C
      DO 10 I=1,50,2
         IF(BIT(I).EQ.1) THEN
            ZZ(I)=A(I)*S-C(I)
            YY(I)=A(I)*S-C(I)
            XX(I)=A(I)
            TTT(I)=I+2
            RA(I)=I
            RB(I)=I
         ENDIF
         AVD(I)=(ZZ(I)+YY(I))*S
         DO 20 K=I, N,2
            BVD(K)=XX(K)*YY(K)*S
            IF((AVD(I)-1).NE.0) THEN
               CVD(K)=ISHFT(2,C(K))
               CVD(K)=MOD(CVD(K)*256,B(K))
               TTT(K)=TTT(K)+BVD(K)+CVD(K)
            ENDIF
   20    CONTINUE
         SSS=SSS+TTT(I)
   10 CONTINUE
C
      WRITE(6,*) 'AVD => '
      WRITE(6,100) AVD
      WRITE(6,*) 'BVD => '
      WRITE(6,100) BVD
      WRITE(6,*) 'CVD => '
      WRITE(6,100) BVD
      WRITE(6,*) 'SSS => '
      WRITE(6,100) SSS
  100 FORMAT(1H ,5E15.5)
C
      STOP
      END
C
      BLOCK DATA
      INTEGER*4 A(50),B(50),XX(50),YY(50)
      REAL*8    RA(100),RB(110),AVD(50),BVD(50),CVD(50),TTT(50)
      COMPLEX*8 ZZ(50)
      COMMON /VSU3/A,B,AVD,BVD,CVD,TTT
      COMMON /VSU4/XX,YY,RA,RB,ZZ
      DATA A,B/100*1/,AVD,BVD,CVD,TTT/200*1./
      DATA XX,YY/100*1/,RA,RB/210*1/,ZZ/50*(1.,1.)/
      END
