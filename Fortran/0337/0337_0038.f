      DIMENSION     IA(2,2), RA(4)
      IFUN(I1,I2)   =I1**2-I2
      RFUN(R1,R2)   =R1*3.0+10.0-R2
      IA(1,1)  =2
      IA(2,1)  =-3
      IA(1,2)  =10
      IA(2,2)  =-50
      IB  =-2
      IC  =1000
      ID  =100
      RA(1)    =2.0
      RA(2)    =-3.0
      RA(3)    =1.0E1
      RA(4)    =-5.0E1
      RB  =-2.222
      RC  =1.0E3
      RD  =1.0E2
C
      N=1
      CALL      SUB(2*IB/2,IA(1,1)+IFUN(IA(1,2),ID),1.0,1.0,IX,IY,RX,RY,
     1         N )
      IVAL     =IC+IA(1,1)*IY-IX
      IANS     =1022
      CALL     PRT1(N,IVAL,IANS)
C
C
      N=2
      CALL     SUB(2*IABS(IA(2,1)),ISUB(IB,10),1.0,1.0,IX,IY,RX,RY,N)
      IVAL     =IY+IX+2940
      IANS     =196
      CALL     PRT1(N,IVAL,IANS)
C
C
      N=3
      CALL     SUB(1,1,2.0*RB/2.0,RA(3)+RFUN(RB,2.221),IX,IY,RX,RY,N)
      RVAL     =RD+(1.0+RY)/RX
      RANS     =99.880807
      CALL     PRT2(N,RVAL,RANS)
C
C
      N=4
      CALL     SUB(1,1,10.0*SIN(RB),RFUN(RA(1),2.5),IX,IY,RX,RY,N)
      RVAL     =RX+RY
      RANS     =10.0*SIN(RB)*2.0+18.643519
      RANS     =0.2736424E 01
      CALL     PRT2(N,RVAL,RANS)
C
C
      N=5
      CALL     SUB(IA(1,1)*2,IFUN(IB,ID),EXP(2.0),RSUB(RA(1),RD),IX,IY,
     1    RX,RY,N)
      RVAL     =FLOAT(IY*IX)+RX/RY
      RANS     =93.889**2
      RANS     =0.8815144E 04
      CALL     PRT2(N,RVAL,RANS)
C
      STOP
      END
      SUBROUTINE     SUB(I1,I2,R1,R2,IX,IY,RX,RY,N)
      DIMENSION  IE(2,2),RE(6)
      IE(1,1)  =2
      IE(2,1)  =-10
      IE(1,1)  =-100
      IE(2,1)  =7
      RE(1)    =2.0
      RE(2)    =-11.5
      RE(3)    =11.0
      RE(4)    =-5.555
      RE(5)    =10.0
      RE(6) = 0.0
      GO TO (1,1,2,2,3),N
    1 IF(I1-I2)  10,10,11
   10 JA  =(I1-I2)/2
      JB  =I1*I2
      GO TO 20
   11 JA  =(I1+I2)/2
      JB  =I1/I2
   20 IX  =JA+JB
      IY  =JA*JB
      RETURN
    2 IF(R1+R2)  12,12,13
   12 DO  18   J=1,5,2
      RE(6)=RE(6)+RE(J)
   18 CONTINUE
      GO TO 21
   13 RE(6)=RE(6)+RE(4)
   21 RX  =R1+R2-RE(6)
      RY  =RE(6)/R2+R1
      RETURN
    3 IX  =I1*I2-1000
      IY  =I1/I2
      RX  =R1*R2
      RY  =R1/R2
      RETURN
      END
      FUNCTION      ISUB(I1,I2)
      DIMENSION     IH(5)
      IH(1)    =5
      IH(2)    =-10
      IH(3)    =20
      IH(4)    =225
      IH(5)    =-30
      IJ  =0
      IF(I1-I2) 1,1,2
    1 DO  10   J=1,3
      IJ  =IJ+IH(J)
   10 CONTINUE
      GO TO 3
    2 DO  11   J=3,5
      IJ  =IJ+IH(J)
   11 CONTINUE
    3 ISUB =IJ-I1*I2
      RETURN
      END
      FUNCTION      RSUB(R1,R2)
      DIMENSION     RG(4,1)
      RG(1,1)  =-2.345
      RG(2,1)  =-4.0
      RG(3,1)  =13.456
      RG(4,1)  =1.0
      RH  =0.0
      DO  1    J=1,4
      RH  =RH+RG(J,1)
    1 CONTINUE
      RSUB=RH-R1-R2
      RETURN
      END
      SUBROUTINE    PRT1(N,IVAL,IANS)
      IF(IANS-IVAL)   2,1,2
    1 WRITE (6,130) N
      RETURN
    2 WRITE (6,140) N,IVAL,IANS
      RETURN
  130 FORMAT (1H0,12X,7H*OK*   ,8X,1H(,I2,1H),9X,I15,14X,I15  )
  140 FORMAT (1H0,12X,7H*ERROR*,8X,1H(,I2,1H),9X,I15,14X,I15  )
      END
      SUBROUTINE    PRT2(N,RVAL,RANS)
      DIF =RANS-RVAL
      IF(ABS(DIF)-1.0E-5*ABS(RANS)) 1,1,2
    1 WRITE (6,130) N
      RETURN
    2 WRITE (6,140) N,RVAL,RANS,DIF
  130 FORMAT (1H0,12X,7H*OK*   ,8X,1H(,I2,1H),9X,E15.7,14X,E15.7,
     1    8X,E15.7  )
  140 FORMAT (1H0,12X,7H*ERROR*,8X,1H(,I2,1H),9X,E15.7,14X,E15.7,
     1    8X,E15.7  )
      RETURN
      END
