      IA  =2
      IB  =15
      IC  =-20
      ID  =-7
      RA  =1.1E2
      RB  =-7.7
      RC  =-2.0
      RD  =12.345
C
      N=1
      CALL     SUB1
      RANS    =-30.875
      WRITE(6,130)  N
  130 FORMAT(1H+,27X,1H(,I2,1H),38X,E15.7  )
C
C
      N=2
      CALL     SUB2(2,-5,-10,50,IW,IX,IY,IZ)
      IVAL     =IW+IX-IY-IZ
      IANS     =-5393
      CALL      PRT1(N,IVAL,IANS)
C
C
      N=3
      CALL     SUB2(2,-5,IA,IB,IW,IX,IY,IZ)
      IVAL     =IW-IX+IY*2-IZ**2
      IANS     =325
      CALL      PRT1(N,IVAL,IANS)
C
C
      N=4
      CALL     SUB2(IA,IB,IC,ID,IW,IX,IY,IZ)
      IVAL     =IW/IX+IY-IZ
      IANS     =201
      CALL      PRT1(N,IVAL,IANS)
C
C
      N=5
      CALL     SUB3(2,-5,2.0,-5.0E1,IW,IX,RY,RZ)
      RVAL     =FLOAT(IW+IX)-RY-RZ
      RANS    =-5366.0
      CALL     PRT2(N,RVAL,RANS)
C
C
      N=6
      CALL     SUB3(IA,IB,2.0,-5.0E1,IW,IX,RY,RZ)
      IVAL     =IW+IX-IFIX(RY*2.0-RZ)
      IANS    =-2530
      CALL     PRT1(N,IVAL,IANS)
C
C
      N=7
      CALL     SUB3(IA,ID,RC,RD,IW,IX,RY,RZ)
      RVAL     =FLOAT(IW/IX)-RY+RZ
      RANS     =-41.03500
      CALL     PRT2(N,RVAL,RANS)
C
C
      N=8
      CALL     SUB4(1.0,-5.0,-1.2E1,10.5,RW,RX,RY,RZ)
      RVAL     =RW+RX-RY-RZ
      RANS     =2.125
      CALL     PRT2(N,RVAL,RANS)
C
C
      N=9
      CALL     SUB4(1.0,-5.0,RA,RB,RW,RX,RY,RZ)
      RVAL     =RW+RX-RY*2.0-RZ**2
      RANS     =-15575.895
      CALL     PRT2(N,RVAL,RANS)
C
C
      N=10
      CALL     SUB4(RA,RB,RC,RD,RW,RX,RY,RZ)
      RVAL     =RW/RX+RY-RZ
      RANS     =-365.3096
      CALL     PRT2(N,RVAL,RANS)
C
      STOP
      END
      SUBROUTINE    SUB1
      XA  =25.5
      XB  =-1.25E1
      XC  =-1.0
      XE   =XA*XB-XC*10.0
      XANS =XE/10.0
      IF (ABS(XANS+0.3087500E+02)>1.0E-6) WRITE (6,140) XANS
  140 FORMAT (1H0,42X,E15.7 )
      RETURN
      END
      SUBROUTINE    SUB2(I,J,K,L,II,JJ,KK,LL)
      JA  =I+J+5
      JB  =(J+K)*2
      JC  =(K-L)**2
      JD  =IABS(K+I)
      IF(JA+JB)  1,1,2
    1 II  =JA-JB
      JJ  =(JB-JC)/2
      KK  =JC-JD
      LL  =JA+JD*2
      RETURN
    2 II  =JA+JB
      JJ  =(JB+JC)/2
      KK  =JC+JD
      LL  =JA-JD*2
      RETURN
      END
      SUBROUTINE    SUB3(I,J,A,B,II,JJ,AA,BB)
      JA  =I+J+5
      JB  =(J+IFIX(A))*2
      PC  =(A-B)**2
      PD  =ABS(B+FLOAT(I))
      IF(JA-JB)  1,1,2
    1 II  =JA-JB
      JJ  =(JA-JB)/2
      AA  =PC-PD
      BB  =PC+PD*2.0
      RETURN
    2 II  =JA+JB
      JJ  =(JA+JB)/2
      AA  =PC+PD
      BB  =PC-PD*2.0
      RETURN
      END
      SUBROUTINE    SUB4(A,B,C,D,AA,BB,CC,DD)
      PA  =A+B+5.0
      PB  =(B+C)*2.0
      PC  =(C+D)**2
      PD  =ABS(D+A)
      IF(PA+PB)  1,1,2
    1 AA  =PA-PB
      BB  =(PB-PC)/2.0
      CC  =PC-PD
      DD  =PA+PD*2.0
      RETURN
    2 AA  =PA+PB
      BB  =(PB+PC)/2.0
      CC  =PC-PD
      DD  =PA+PD*2.0
      RETURN
      END
      SUBROUTINE    PRT1(N,IVAL,IANS)
      IF(IVAL-IANS)   2,1,2
    1 WRITE (6,140) N
      RETURN
    2 WRITE (6,150) N,IVAL,IANS
  140 FORMAT (1H0,12X,7H*OK*   ,8X,1H(,I2,1H),9X,I15,14X,I15 )
  150 FORMAT (1H0,12X,7H*ERROR*,8X,1H(,I2,1H),9X,I15,14X,I15 )
      RETURN
      END
      SUBROUTINE    PRT2(N,RVAL,RANS)
      DIF=RANS-RVAL
      IF(ABS(RVAL-RANS)-1.0E-5*ABS(RANS))  1,1,2
    1 WRITE (6,160) N
      RETURN
    2 WRITE (6,170) N,RVAL,RANS,DIF
  160 FORMAT (1H0,12X,7H*OK*   ,8X,1H(,I2,1H),9X,E15.7,14X,E15.7 ,
     1       8X,E15.7  )
  170 FORMAT (1H0,12X,7H*ERROR*,8X,1H(,I2,1H),9X,E15.7,14X,E15.7 ,
     1       8X,E15.7  )
      RETURN
      END
