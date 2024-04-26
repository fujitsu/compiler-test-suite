      DIMENSION     RX(2,2),RY(3)
      RA  =10.0
      RB  =-4.0E1
      RC  =1.1E1
      RD  =-3.0
      RE  =-7.0
      RX(1,1)  =-5.5E1
      RX(2,1)  =1.1E1
      RX(1,2)  =2.2E1
      RX(2,2)  =-3.5E1
      RY(1)    =-5.0
      RY(2)    =-2.8
      RY(3)    =5.0
      WRITE (6,110)
C
C
      N=1
      RVAL     =RSUB1(4.0)
      RANS     =4.0*50.0-111.0
      RANS    =0.8900000E 02
      CALL     SUB(N,RVAL,RANS)
C
C
      N=2
      RVAL     =RSUB1(RA)
      RANS     =RA*50.0-111.0
      RANS    =0.3890000E 03
      CALL     SUB(N,RVAL,RANS)
C
C
      J=2
      K=2
      N=3
      RVAL     =RSUB1(RX(J,K))
      RANS     =(RX(2,2))**2-5.0
      RANS    =0.1220000E 04
      CALL     SUB(N,RVAL,RANS)
C
C
      N=4
      RVAL     =RSUB3(RX)
      RANS     =ABS(RX(1,1))+RX(2,2)
      RANS    =0.2000000E 02
      CALL     SUB(N,RVAL,RANS)
C
C
      N=5
      RVAL     =RSUB1(RA*RB/5.0-10.0)
      RANS    =(RA*RB/5.0-10.0)**2-5.0
      RANS    =0.8095000E 04
      CALL     SUB(N,RVAL,RANS)
C
C
      N=6
      RVAL     =RSUB2(3.0,-1.0E1,-2.2E1)
      RANS     =3.0-1.0E1-ABS(2.2E1)
      RANS    =-0.2900000E 02
      CALL     SUB(N,RVAL,RANS)
C
C
      N=7
      RVAL     =RSUB2(RY(2),RX(J-1,K),RY(N-6))
      RANS     =RY(2)+RX(1,2)-ABS(RY(1))
      RANS    =0.1420000E 02
      CALL     SUB(N,RVAL,RANS)
C
C
      N=8
      RVAL     =RSUB2(4.0/2.0+3.0,RD+2.0*RE,RD**2)
      RANS     =(-4.0/2.0-3.0+RD+2.0*RE-RD**2)/3.0
      RANS    =-0.1033333E 02
      CALL     SUB(N,RVAL,RANS)
C
C
      N=9
      RVAL     =RSUB4(RA,RX,RY)
      RANS     =10.0/12.8-9.0
      RANS    =-0.8218750E 01
      CALL     SUB(N,RVAL,RANS)
C
  110 FORMAT (///  10X,11H- JUSTICE -,5X,8H- ITEM -,6X,19H -COMPUTED RES
     1ULT -,10X,17H- COMPARE VALUE - ,8X,14H- DIFFERENCE - / )
      STOP
      END
      FUNCTION      RSUB1(R1)
      IF(R1-2.0) 1,1,2
    1 RSUB1    =R1**2-5.0
      RETURN
    2 RSUB1    =R1*50.0-111.0
      RETURN
      END
      FUNCTION      RSUB2(R1,R2,R3)
      PA  =R1+R2-R3*3.0
      IF(PA)   1,1,2
    1 RSUB2    =(-R1+R2-R3)/3.0
      RETURN
    2 RSUB2    =R1+R2-ABS(R3)
      RETURN
      END
      FUNCTION      RSUB3(R1)
      DIMENSION     R1(2,2)
      IF(R1(1,1)-R1(2,1))  1,1,2
    1 RSUB3    =ABS(R1(1,1))+R1(2,2)
      RETURN
    2 ISUB3    =R1(2,1)+R1(1,2)
      RETURN
      END
      FUNCTION     RSUB4(R1,R2,R3)
      DIMENSION     R2(2,2), R3(3)
      PA  =R1
      PB  =R2(1,1)-R2(2,1)+R2(1,2)-R2(2,2)
      PC  =ABS(R3(1))*3.0-R3(2)-R3(3)
      IF(PC-PA)  1,2,2
    1 RSUB4    =PA*PC-PB
      RETURN
    2 RSUB4    =PA/PC+PB
      RETURN
      END
      SUBROUTINE    SUB(N,RVAL,RANS)
      DIF=RANS-RVAL
      IF(ABS(RVAL-RANS)-1.0E-05*ABS(RANS))  1,1,2
    1 WRITE (6,130) N
      RETURN
    2 WRITE (6,140) N,RVAL,RANS,DIF
  130 FORMAT (1H0,12X,7H*OK*   ,8X,1H(,I2,1H),9X,E15.7,14X,E15.7,
     1      8X,E15.7  )
  140 FORMAT (1H0,12X,7H*ERR0R*,8X,1H(,I2,1H),9X,E15.7,14X,E15.7,
     1      8X,E15.7  )
      RETURN
      END
