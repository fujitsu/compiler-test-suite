      DIMENSION  IX(2,2) ,RX(2,2)
      IFUN3(I1,I2)            =I1*3-I2
      RFUN4(R1,R2)            =R1**2-ABS(R2)
      RFUN1(I1,I2,I3,I4,I5) =IABS(I1)+IFUN3(I2,I3)-ISUB(I4,I5)
      RFUN2(R1,R2,R3,R4,R5,R6,R7) =ABS(R1)-10.0*SIN(R2)+EXP(R3)-RFUN4(
     1    R4,R5)-RSUB(R6,R7)
      IA       = 2
      IB       =-3
      IC       = 4
      ID       =-5
      IE       = 2
      IX(1,1)  = 3
      IX(2,1)  =-5
      IX(1,2)  = 5
      IX(2,2)  =-7
      RA       = 1.1
      RB       =-2.2
      RC       = 3.3
      RD       =-4.4
      RE       = 2.0
      RX(1,1)  = 3.5
      RX(2,1)  =-1.5
      RX(1,2)  = 2.5
      RX(2,2)  =-4.5
      WRITE (6,110)
C
C
      N=1
      RVAL     =FLOAT(IA)+RFUN1(IA+IB,IC-IB,ID*3-2,IX(2,2)/7,IX(1,1))
      RANS     =IA+IABS(IA+IB)+(IC-IB)*3-ID*3+2-ISUB(IX(2,2)/7,IX(1,1))
      RANS     =0.4500000E 02
      CALL     SUB(N,RVAL,RANS)
C
C
      N=2
      RVAL     =RFUN1(IABS(IA),IABS(IB),IC,IX(2,2),IABS(IX(1,1)))
      RANS     =IABS(IABS(IA))+IABS(IB)*3-IC-ISUB(IX(2,2),IABS(IX(1,1)))
      RANS     =0.1700000E 02
      CALL     SUB(N,RVAL,RANS)
C
C
      N=3
      RVAL     =RFUN1(IFUN3(IA,IB),IFUN3(IX(1,1),IC),IC,IFUN3(IA,IB),
     1        IFUN3(IC,ID))
      RANS     =IABS(IFUN3(IA,IB))+IFUN3(IFUN3(IX(1,1),IC),IC)-
     1         ISUB(IFUN3(IA,IB),IFUN3(IC,ID))
      RANS     =0.2800000E 02
      CALL     SUB(N,RVAL,RANS)
C
C
      N=4
      RVAL     =RFUN1(ISUB(IA,IB),ISUB(IX(1,1),IE),IX(2,2),IA,ISUB(IC,
     1         IX(2,1)))
      RANS     =IABS(ISUB(IA,IB))+ISUB(IX(1,1),IE)*3-IX(2,2)-ISUB(IA,
     1         ISUB(IC,IX(2,1)))
      RANS     =0.2200000E 02
      CALL     SUB(N,RVAL,RANS)
C
C
      N=5
      RVAL     =RFUN2(RA+RB,RC-RB,RD*3.0-2.0,RX(2,2)/2.0,RX(1,1),RD,RE)
      RANS     =ABS(RA+RB)-10.0*SIN(RC-RB)+EXP(RD*3.0-2.0)-(RX(2,2)/2.0)
     1        **2+ABS(RX(1,1))-RSUB(RD,RE)
      RANS     =0.1299290E 02
      CALL     SUB(N,RVAL,RANS)
C
C
      N=6
      RVAL     =RFUN2(RA+SIN(RB),SQRT(RC),EXP(RX(2,1)),SIN(RB+SQRT(RC)),
     1          RE,SIN(1.50)*2.0,RA)
      RANS     =ABS(RA+SIN(RB))-10.0*SIN(SQRT(RC))+EXP(EXP(RX(2,1)))-
     1          SIN(RB+SQRT(RC))**2+ABS(RE)-RSUB(SIN(1.50)*2.0,RA)
      RANS     =-0.939288E 01
      CALL     SUB(N,RVAL,RANS)
C
C
      N=7
      RVAL     =RFUN2(ABS(RA),ABS(RB),RC,RX(2,2),ABS(RX(1,1)),RE,
     1         ABS(RX(1,2)))
      RANS     =ABS(ABS(RA))-10.0*SIN(ABS(RB))+EXP(RC)-(RX(2,2))**2
     1         +ABS(ABS(RX(1,1)))-RSUB(RE,ABS(RX(1,2)))
      RANS     =0.3877677E 01
      CALL     SUB(N,RVAL,RANS)
C
C
      N=8
      RVAL     =RFUN2(RFUN4(RA,RB),RFUN4(RX(1,1),RC),RC,   RX(2,2),
     1          RFUN4(RA,RB),RFUN4(RC,RD),RFUN4(4.0,2.2))
      RANS     =ABS(RA**2-ABS(RB))-10.0*SIN(RX(1,1)**2-ABS(RC))+EXP(RC)-
     1          RFUN4(RX(2,2),RA**2-ABS(RB))-RSUB(RC**2-ABS(RD),4.0**2
     2          -ABS(2.2))
      RANS     =0.1158123E 02
      CALL     SUB(N,RVAL,RANS)
C
C
      N=9
      RVAL     =RFUN2(RSUB(RA,RB),RSUB(RX(1,1),RE),RX(2,2),RA,RSUB(RC,
     1          RX(2,1)),RB/3.0,RB+RSUB(RC,RB))
      RANS     =ABS(RSUB(RA,RB))-10.0*SIN(RSUB(RX(1,1),RE))+EXP(RX(2,2))
     1         -RFUN4(RA,RSUB(RC,RX(2,1)))-RSUB(RB/3.0,RB+RSUB(RC,RB))
      RANS     =0.1058985E 02
      CALL     SUB(N,RVAL,RANS)
C
  110 FORMAT (///  10X,11H- JUSTICE -,5X,8H- ITEM -,6X,19H- COMPUTED RES
     1ULT -,10X,17H- COMPARE VALUE -,8X,14H- DIFFERENCE - / )
      STOP
      END
      FUNCTION      ISUB(I1,I2)
      IF(I1-I2)  1,1,2
    1 ISUB=I1-I2
      RETURN
    2 ISUB=I1+I2
      RETURN
      END
      FUNCTION      RSUB(R1,R2)
      IF(R1-R2)  1,1,2
    1 RSUB=R1-R2
      RETURN
    2 RSUB=R1+R2
      RETURN
      END
      SUBROUTINE    SUB(N,RVAL,RANS)
      DIF=RANS-RVAL
      IF(ABS(RVAL-RANS)-1.0E-5*ABS(RANS)) 1,1,2
    1 WRITE (6,130) N
  130 FORMAT (1H0,12X,7H*OK*   ,8X,1H(,I2,1H),9X,E15.7,14X,E15.7,
     1      8X,E15.7  )
      GO TO 3
    2 WRITE (6,140) N,RVAL,RANS,DIF
  140 FORMAT (1H0,12X,7H*ERR0R*,8X,1H(,I2,1H),9X,E15.7,14X,E15.7,
     1      8X,E15.7  )
    3 RETURN
      END
