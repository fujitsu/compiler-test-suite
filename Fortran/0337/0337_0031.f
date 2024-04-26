      DIMENSION  IX(2,2),RX(2,2)
       IFUN3(I1,I2)           =I1*3-I2
       RFUN4(R1,R2)           =R1**2-ABS(R2)
       IFUN1(I1,I2,I3,I4,I5) =IABS(I1)+ IFUN3(I2,I3)-ISUB(I4,I5)
       IFUN2(R1,R2,R3,R4,R5,R6,R7) =ABS(R1)-10.0*SIN(R2)+EXP(R3)- RFUN4(
     1         R4,R5)-RSUB(R6,R7)
      IA       =2
      IB       =-3
      IC       =4
      ID       =-5
      IE       =2
      RE       =2.0
      IX(1,1)  =3
      IX(2,1)  =-5
      IX(1,2)  =5
      IX(2,2)  =-7
      RA       =1.1
      RB       =-2.2
      RC       =3.3
      RD       =-4.4
      RX(1,1)  =3.5
      RX(2,1)  =-1.5
      RX(1,2)  =2.5
      RX(2,2)  =-4.5
      WRITE (6,110)
C
C
      N=1
      IVAL     =IA+ IFUN1(IA+IB,IC-IB,ID*3-2,IX(2,2)/7,IX(1,1))
      IANS     =IA+IABS(IA+IB)+(IC-IB)*3-ID*3+2-ISUB(IX(2,2)/7,IX(1,1))
      IANS     =45
      CALL     SUB(N,IVAL,  IANS)
C
C
      N=2
      IVAL     = IFUN1(IABS(IA),IABS(IB),IC,IX(2,2),IABS(IX(1,1)))
      IANS     =IABS(IABS(IA))+IABS(IB)*3-IC-ISUB(IX(2,2),IABS(IX(1,1)))
      IANS     =17
      CALL     SUB(N,IVAL,  IANS)
C
C
      N=3
      IVAL     = IFUN1( IFUN3(IA,IB), IFUN3(IX(1,1),IC),IC,
     1          IFUN3(IA,IB), IFUN3(IC,ID))
      IANS     =IABS(IFUN3(IA,IB))+ IFUN3( IFUN3(IX(1,1),IC),IC)-
     1         ISUB( IFUN3(IA,IB), IFUN3(IC,ID))
      IANS     =28
      CALL     SUB(N,IVAL,  IANS)
C
C
      N=4
      IVAL     = IFUN1(ISUB(IA,IB),ISUB(IX(1,1),IE),IX(2,2),IA,ISUB(IC,
     1         IX(2,1)))
      IANS     =IABS(ISUB(IA,IB))+ISUB(IX(1,1),IE)*3-IX(2,2)-ISUB(IA,
     1         ISUB(IC,IX(2,1)))
      IANS     =22
      CALL     SUB(N,IVAL,  IANS)
C
C
      N=5
      IVAL     = IFUN2(RA+RB,RC-RB,RD*3.0-2.0,RX(2,2)/2.0,RX(1,1),RD,RE)
      IANS     =ABS(RA+RB)-10.0*SIN(RC-RB)+EXP(RD*3.0-2.0)-(RX(2,2)/2.0)
     1         **2+ABS(RX(1,1))-RSUB(RD,RE)
      IANS     =12
      CALL     SUB(N,IVAL,  IANS)
C
C
      N=6
      IVAL     = IFUN2(RA+SIN(RB),SQRT(RC),EXP(RX(2,1)),SIN(RB+SQRT(RC))
     1        ,RE,SIN(1.50)*2.0,RA)
      IANS     =ABS(RA+SIN(RB))-10.0*SIN(SQRT(RC))+EXP(EXP(RX(2,1)))-
     1          SIN(RB+SQRT(RC))**2+ABS(RE)-RSUB(SIN(1.50)*2.0,RA)
      IANS     =-9
      CALL     SUB(N,IVAL,  IANS)
C
C
      N=7
      IVAL     = IFUN2(ABS(RA),ABS(RB),RC,RX(2,2),ABS(RX(1,1)),RE,
     1         ABS(RX(1,2)))
      IANS     =ABS(ABS(RA))-10.0*SIN(ABS(RB))+EXP(RC)-(RX(2,2 )**2-
     1         ABS(RX(1,1)))-RSUB(RE,ABS(RX(1,2)))
      IANS     =3
      CALL     SUB(N,IVAL,  IANS)
C
C
      N=8
      IVAL     = IFUN2( RFUN4(RA,RB), RFUN4(RX(1,1),RC),RC,RX(2,2),
     1          RFUN4(RA,RB), RFUN4(RC,RD),RFUN4(4.0,2.2))
      IANS    =ABS(RA**2-ABS(RB))-10.0*SIN(RX(1,1)**2-ABS(RC))+EXP(RC)-
     1          RFUN4(RX(2,2),RA**2-ABS(RB))-RSUB(RC**2-ABS(RD),
     2         4.0**2-ABS(2.2))
      IANS     =11
      CALL     SUB(N,IVAL,  IANS)
C
C
      N=9
      IVAL     =IFUN2(RSUB(RA,RB),RSUB(RX(1,1),RE),RX(2,2),RA,RSUB(RC,
     1         RX(2,1)),RB/3.0,RD+RSUB(RC,RB))
      IANS    =ABS(RSUB(RA,RB))-10.0*SIN(RSUB(RX(1,1),RE))+EXP(RX(2,2))-
     1          RFUN4(RA,RSUB(RC,RX(2,1)))-RSUB(RB/3.0,RD+RSUB(RC,RB))
      IANS     =12
      CALL     SUB(N,IVAL,  IANS)
C
  110 FORMAT (///  10X,11H- JUSTICE -,5X,8H- ITEM -,6X,19H- COMPUTED RES
     1ULT -,10X,17H- COMPARE VALUE - / )
      STOP
      END
      FUNCTION     ISUB(I1,I2)
      IF(I1-I2)  1,1,2
    1 ISUB=I1-I2
      RETURN
    2 ISUB=I1+I2
      RETURN
      END
      FUNCTION     RSUB(R1,R2)
      IF(R1-R2)  1,1,2
    1 RSUB=R1-R2
      RETURN
    2 RSUB=R1+R2
      RETURN
      END
      SUBROUTINE    SUB(N,IVAL,  IANS)
      IF(IVAL-IANS)   2,1,2
    1 WRITE(6,130)  N,IVAL,  IANS
  130 FORMAT (1H0,12X,7H*OK*   ,8X,1H(,I2,1H),9X,I15,14X,I15  )
      GO TO 3
    2 WRITE (6,140) N,IVAL , IANS
  140 FORMAT (1H0,12X,7H*ERROR*,8X,1H(,I2,1H),9X,I15,14X,I15  )
    3 RETURN
      END
