      DIMENSION     RY(5) , RX(4,1)
      RFUN1(R1,R2)  =R1**2+R2/2.0-R1
      RA  =-10.0
      RB  =2.0
      RC  =2.9
      RD  =-21.1
      RY(1)    =-1.0E 01
      RY(2)    =2.5
      RY(3)    =15.5
      RY(4)    =-3.3
      RY(5)    =-40.0
      RX(1,1)  =-3.0
      RX(2,1)  =1.5E-01
      RX(3,1)  =7.7
      RX(4,1)  =2.0
      WRITE (6,110)
C
C
      N=1
      RVAL     =RSUB1(ABS(-1.25E+02),SIN(1.50),RFUN1(4.0,-3.3))
      RANS     =(ABS(-1.25E+02)*SIN(1.50))/RFUN1(4.0,-3.3)
      RANS    =0.1204704E 02
      CALL     SUB(N,RVAL,RANS)
C
C
      N=2
      RVAL     =RA/(1.0E-02*RSUB1(EXP(RX(1,1)),ABS(RB*2.0),RFUN1(2.0**2,
     1          4.4/2.0-1.0)))
      RANS     =RA/(1.0E-02*(0.25*EXP(RX(1,1))+0.2*ABS(RB*2.0)
     1        -0.5*RFUN1(2.0**2,4.4/2.0-1.0)))
      RANS    =0.1822306E 03
      CALL     SUB(N,RVAL,RANS)
C
C
      N=3
      RVAL     =RSUB2(RX,RY,RFUN1(RA,RB))
      RANS    =(ABS(RX(1,1))*3.0+10.0*EXP(RY(2)) )/RFUN1(RA,RB)
      RANS    =0.1178603E 01
      CALL     SUB(N,RVAL,RANS)
C
C
      N=4
      RVAL     =RSUB3(RD,EXP(RB),RFUN1(3.0,RX(1,1)))
      RANS     =(0.25*(RD-EXP(RB))+0.2*(EXP(RB)-RFUN1(3.0,RX(1,1)))
     1          -0.5*(RFUN1(3.0,RX(1,1))-RD))*12.0-40.0
      RANS    =-0.2721334E 03
      CALL     SUB(N,RVAL,RANS)
C
C
      N=5
      RVAL     =RSUB4(RX,RY,ABS(RB))
      RANS     =(ABS(RX(1,1))*3.0+10.0*EXP(RY(2)))/(RX(2,1)-RY(2)-ABS(RB
     1     )*5.0)+20.0
      RANS    =0.9406887E 01
      CALL     SUB(N,RVAL,RANS)
  110 FORMAT (///  10X,11H- JUSTICE -,5X,8H- ITEM -,6X,19H- COMPUTED RES
     1ULT -,10X,17H- COMPARE VALUE - ,8X,14H- DIFFERENCE - / )
      STOP
      END
      FUNCTION      RSUB1(R1,R2,R3)
      IF(R1-R2)  1,1,2
    1 RSUB1    =0.25*R1+0.2*R2-0.5*R3
      RETURN
    2 RSUB1    =(R1*R2)/R3
      RETURN
      END
      FUNCTION      RSUB2(R1,R2,R3)
      DIMENSION     R2(5) , R1(4,1)
      PA  =ABS(R1(1,1))*3.0
      PB  =10.0*EXP(R2(2))
      RSUB2    =(PA+PB)/R3
      RETURN
      END
      FUNCTION      RSUB3(R1,R2,R3)
      IF(R1+R2)  1,1,2
    1 PA  =R1-R2
      PB  =R2-R3
      PC  =R3-R1
      RVAL1    =RSUB1(PA,PB,PC)
      RSUB3    =RVAL1*12.0-40.0
      RETURN
    2 PA  =R1+R2-R3
      PB  =R2+R3-R1
      PC  =R3+R1-R2
      RVAL1    =RSUB1(PA,PB,PC)
      RSUB3    =RVAL1/10.0
      RETURN
      END
      FUNCTION      RSUB4(R1,R2,R3)
      DIMENSION     R2(5) , R1(4,1)
      PC  =R1(2,1)-R2(2)
      PD  =R3*5.0
      RVAL1    =RSUB2(R1,R2,PC-PD)
      RSUB4=RVAL1+20.0
      RETURN
      END
      SUBROUTINE    SUB(N,RVAL,RANS)
      DIF=RANS-RVAL
      IF(ABS(RVAL-RANS)-1.0E-5*ABS(RANS))  1,1,2
    1 WRITE (6,130) N
      RETURN
    2 WRITE (6,140) N,RVAL,RANS,DIF
  130 FORMAT (1H0,12X,7H*OK*   ,8X,1H(,I2,1H),9X,E15.7,14X,E15.7,
     1      8X,E15.7  )
  140 FORMAT (1H0,12X,7H*ERR0R*,8X,1H(,I2,1H),9X,E15.7,14X,E15.7,
     1      8X,E15.7  )
      RETURN
      END
