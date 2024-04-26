      INTRINSIC     SIN,COS,EXP
      EXTERNAL      IFUN1,SUB1
      INTEGER       RFUN,RFUNX
      REAL          IFUN,IFUNX,IFUN1
      LOGICAL       LFUNS,LA(4)  ,LB,LX,L1,L2,LVAL,LANS,LFUN,LFUNX,LC
      DIMENSION     IA(2,2),IB(4),RA(2,2),RB(4)
      LFUNS(L1,L2)  =L1.AND.L2.OR..TRUE.
      IA(1,1)  =1
      IA(2,1)  =-2
      IA(1,2)  =-3
      IA(2,2)  =4
      IB(1)    =10
      IB(2)    =-20
      IB(3)    =30
      IB(4)    =-40
      IC  =-5
      ID  =1
      RA(1,1)  =0.0
      RA(2,1)  =1.0
      RA(1,2)  =-2.0
      RA(2,2)  =-3.0
      RB(1)    =10.0
      RB(2)    =-20.0
      RB(3)    =30.0
      RB(4)    =40.0
      RC  =2.2
      RD  =3.3
      LA(1)    =.TRUE.
      LA(2)    =.FALSE.
      LA(3)    =.FALSE.
      LA(4)    =.TRUE.
      LB  =.FALSE.
      LC  =.TRUE.
      WRITE (6,110)
C
C
      N=1
      CALL     SUB1(IA,IB(N),4,IX,LX)
      IVAL      =RFUN(.FALSE..AND.LFUNS(LA(N),.TRUE.),10.0*SIN(RB(2)),
     1         IFUN1(N,RA(1,2),RB)   ,IX,LX                 )+10
      IANS     =153
      CALL     PRT1(N,IVAL,IANS)
C
C
      N=2
      CALL     SUB1(IA,IB(N-1),4,IX,LX)
      RVAL     =IFUN(.TRUE..AND.LFUNS(LA(N),.FALSE.),10.0*EXP(FLOAT(IB(2
     1     ))),IFUN1(N-1,RA(1,2),RB),IX,LX                   )+0.9999
      RANS     =1000.9999
      CALL     PRT2(N,RVAL,RANS)
C
C
      N=3
      CALL     SUB1(IA,IB(N-2),4,IX,LX)
      LVAL     =LFUN(LC.AND.LFUNS(LA(N+1).AND.LB,.NOT.LA(N)),COS(RA(N-1
     1      ,1)),IFUN1(N,RA(1,N-1),RB),IX,LX                   ).AND.LB
      LANS     =.FALSE.
      CALL     PRT3(N,LVAL,LANS)
C
C
      N=4
      IVAL     =RFUNX(.FALSE..AND.LFUNS(LA(N-3),.TRUE.),SIN,RB(2),IFUN1,
     1       N-3,RA(1,2),RB,SUB1,IA,IB(N-3),4,IX,LX)-111
      IANS     =32
      CALL     PRT1(N,IVAL,IANS)
C
C
      N=5
      RVAL     =IFUNX(.TRUE..AND.LFUNS(LA(N-3),.FALSE.),EXP,RB(2),IFUN1,
     1         N-4,RA(1,2),RB,SUB1,IA,IB(N-4),4,IX,LX)-0.9999
      RANS     =999.00010
      CALL     PRT2(N,RVAL,RANS)
C
C
      N=6
      LVAL     =LFUNX(LB.OR.LFUNS(LA(N-2).AND.LB,.NOT.LA(N-3)),COS,RA(N-
     1         4,1),IFUN1,N-3,RA(1,N-4),RB,SUB1,IA,IB(N-5),4,IX,LX).AND.
     2         LB
      LANS     =.FALSE.
      CALL     PRT3(N,LVAL,LANS)
C
  110 FORMAT (1H0 10X,11H- JUSTICE -,5X,8H- ITEM -,6X,19H- COMPUTED RESU
     1LT -,10X,17H- COMPARE VALUE -,9X,14H- DIFFERENCE - / )
      STOP
      END
      INTEGER FUNCTION    RFUN(L1,R1,R2,I1,L2)
      LOGICAL  L1,L2
      IF((L1.AND.L2).OR.(.NOT.(L1.OR.L2)))GO TO 1
      JA  =I1**2+I1+1
      PA  =R1+R2
      GO TO 2
    1 JA  =I1*10
      PA  =R1*R2
      RFUN  =JA+IFIX(PA)
      RETURN
    2 RFUN  =JA-IFIX(PA)
      RETURN
      END
      REAL FUNCTION      IFUN(L1,R1,R2,I1,L2)
      LOGICAL       L1,L2
      IF((L1.AND.L2).OR.(.NOT.(L1.OR.L2)))GO TO 1
      JA  =I1**3-I1**2
      PA  =R1-R2
      GO TO 2
    1 JA  =I1*100
      PA  =R1*R2
      IFUN =FLOAT(JA)+PA
      RETURN
    2 IFUN =FLOAT(JA)-PA
      RETURN
      END
      LOGICAL FUNCTION   LFUN(L1,R1,R2,I1,L2)
      LOGICAL       L1,L2
      IF((L1.AND.L2).OR.(.NOT.(L1.OR.L2)))GO TO 1
      JA  =I1**2+I1+1
      PA  =R1-R2
      GO TO 2
    1 JA  =I1*100
      PA  =R1*R2
      LFUN=JA.LT.IFIX(PA).AND.L1
      RETURN
    2 LFUN=JA.GT.IFIX(PA).OR.L2
      RETURN
      END
      INTEGER FUNCTION   RFUNX(L1,AA,R1,BB,I1,R2,R3,CC,I2,I3,I4,I5,L2)
      LOGICAL       L1,L2
      DIMENSION     R3(4),I2(2,2)
      CALL     CC(I2,I3,I4,I5,L2)
      IF((L1.AND.L2).OR.(.NOT.(L1.OR.L2)))GO TO 1
      JA  =I5**2+I5+1
      PA  =BB(I1,R2,R3)+10.0*AA(R1)
      GO TO 2
    1 JA  =I5*10
      PA  =BB(I1,R2,R3)*(10.0*AA(R1))
      RFUNX =JA+IFIX(PA)
      RETURN
    2 RFUNX =JA-IFIX(PA)
      RETURN
      END
      REAL FUNCTION      IFUNX(L1,AA,P1,BB,I2,R1,R2,CC,I3,I4,I5,I6,L2)
      LOGICAL       L1,L2
      DIMENSION     R2(4),I3(2,2)
      CALL     CC(I3,I4,I5,I6,L2)
      IF((L1.AND.L2).OR.(.NOT.(L1.OR.L2)))GO TO 1
      JA  =I6**3-I6**2
      PA  =10.0*AA(P1)-BB(I2,R1,R2)
      GO TO 2
    1 JA  =I6*100
      PA  =(10.0*AA(P1))*BB(I2,R1,R2)
      IFUNX =FLOAT(JA)+PA
      RETURN
    2 IFUNX =FLOAT(JA)-PA
      RETURN
      END
      LOGICAL FUNCTION   LFUNX(L1,AA,R1,BB,I1,R2,R3,CC,I2,I3,I4,I5,L2)
      LOGICAL  L1,L2
      DIMENSION     R3(4),I2(2,2)
      CALL     CC(I2,I3,I4,I5,L2)
      IF((L1.AND.L2).OR.(.NOT.(L1.OR.L2)))GO TO 1
      JA  =I5**2+I5+1
      PA  =AA(R1)-BB(I1,R2,R3)
      GO TO 2
    1 JA  =I5*100
      PA  =AA(R1)*BB(I1,R2,R3)
      LFUNX =JA.LT.IFIX(PA).AND.L1
      RETURN
    2 LFUNX =JA.GT.IFIX(PA).OR.L2
      RETURN
      END
      REAL FUNCTION     IFUN1(I1,R1,R2)
      DIMENSION     R2(4),RE(4)
      RE(1)    =-3.0
      RE(2)    =-5.0
      RE(3)    =4.0
      RE(4)    =4.0
      RF  =0.0
      DO  10   I=1,4
      RF  =RF+RE(I)
   10 CONTINUE
      RG  =R1+R2(2)+RF
      RH  =SIN(FLOAT(I1))
      IFUN1 =RG-RH/SIN(FLOAT(I1))
      RETURN
      END
      SUBROUTINE    SUB1(I1,I2,I3,I4,L1)
      DIMENSION     I1(2,2)
      LOGICAL       L1
      JA  =I1(2,2)+I2-I3
      JB  =MAX0(I1(1,1),I1(2,1),I1(1,2),I1(2,2))
      JC  =I1(1,1)/I2+I3
      IF(JA-JB) 1,1,2
    1 I4  =JA-JB+JC
      L1  =.NOT.JA.EQ.2
      RETURN
    2 I4  =JA+JB-JC
      L1  =JA.LE.10
      RETURN
      END
      SUBROUTINE    PRT1(N,IVAL,IANS)
      IF(IANS-IVAL)   2,1,2
    1 WRITE (6,130) N,IVAL,IANS
      RETURN
    2 WRITE (6,140) N,IVAL,IANS
      RETURN
  130 FORMAT (1H0,12X,7H*OK*   ,8X,1H(,I2,1H),8X,I15,14X,I15  )
  140 FORMAT (1H0,12X,7H*ERROR*,8X,1H(,I2,1H),8X,I15,14X,I15  )
      END
      SUBROUTINE    PRT2(N,RVAL,RANS)
      DIF =RANS-RVAL
      IF(ABS(DIF)-1.0E-6*ABS(RANS)) 1,1,2
    1 WRITE (6,130) N,RVAL,RANS,DIF
      RETURN
    2 WRITE (6,140) N,RVAL,RANS,DIF
  130 FORMAT (1H0,12X,7H*OK*   ,8X,1H(,I2,1H),8X,E15.7,14X,E15.7,
     1    8X,E15.7  )
  140 FORMAT (1H0,12X,7H*ERROR*,8X,1H(,I2,1H),8X,E15.7,14X,E15.7,
     1    8X,E15.7  )
      RETURN
      END
      SUBROUTINE    PRT3(N,LVAL,LANS)
      LOGICAL       LVAL,LANS
      IF((LVAL.AND.LANS).OR.(.NOT.(LVAL.OR.LANS)))GO TO 1
      WRITE (6,140) N,LVAL,LANS
      RETURN
    1 WRITE (6,130) N,LVAL,LANS
      RETURN
  130 FORMAT (1H0,12X,7H*OK*   ,8X,1H(,I2,1H),15X,L1,27X,L1 )
  140 FORMAT (1H0,12X,7H*ERROR*,8X,1H(,I2,1H),15X,L1,27X,L1  )
      END
