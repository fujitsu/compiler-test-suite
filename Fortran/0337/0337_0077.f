      REAL          IFUN1,IFUN2,IFUN3,IFUN4,IFUN5
      LOGICAL       LA(4),LB
      DIMENSION     IA(2,2),IB(4),RA(2,2),RB(4)
      IA(1,1)  =1
      IA(2,1)  =-2
      IA(1,2)  =-3
      IA(2,2)  =4
      IB(1)    =10
      IB(2)    =-20
      IB(3)    =30
      IB(4)    =-40
      IC  =-5
      ID  =-6
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
C
      N=1
      RVAL     =IFUN1(2,N,IA,IA(1,1),IB(N)**2)-10.0
      RANS     =-112.0
      CALL     PRT2(N,RVAL,RANS)
C
C
      N=2
      RVAL     =IFUN2(2.0,RC,RA,RB(2),RA(N,N)-10.0)+10000.0
      RANS    =10013.26
      CALL     PRT2(N,RVAL,RANS)
C
C
      N=3
      RVAL    =IFUN3(.TRUE.,LB,LA,LA(2),.NOT.(LA(N)))+1.0
      RANS     =-49.0
      CALL     PRT2(N,RVAL,RANS)
C
C
      N=4
      RVAL     =IFUN4(N,IA(2,2)/100+IB(1),.TRUE..AND.(.NOT.LA(1).AND.
     1         .FALSE.),IA(2,1).LT.3,2.0,RA)+10.0
      RANS    =48.0
      CALL     PRT2(N,RVAL,RANS)
C
C
      N=5
      RVAL     =IFUN5(2,IA(1,1),LA(N-2),LB,RA,2.0)+1.0
      IF(LA(3).AND..TRUE.) GO TO 1
      RVAL     =FLOAT(IA(1,1))+RA(1,1)+RVAL
      RANS     =5.0
      GO TO 2
    1 RVAL     =FLOAT(IA(1,1))/3.0+RA(1,1)+RVAL
      RANS     =3.666666
    2 CALL     PRT2(N,RVAL,RANS)
C
      STOP
      END
      REAL FUNCTION      IFUN1(I1,I2,I3,I4,I5)
      DIMENSION     I3(2,2)
      JA  =I1+I2-I3(1,1)
      JB  =I2*I3(2,2)-I4
      JC  =I3(2,1)/I4-I5
      IF(I1-I4) 1,1,2
    1 IFUN1=JA+JB+JC
      RETURN
    2 IFUN1=JA/JB+JC
      RETURN
      END
      REAL FUNCTION      IFUN2(R1,R2,R3,R4,R5)
      DIMENSION     R3(2,2)
      PA  =R1+R2-R3(1,1)
      PB  =R2*R3(2,2)-R4
      PC  =R3(2,1)/R4-R5
      IF(R1+R4) 2,2,1
    1 IFUN2=PA+PB-PC
      RETURN
    2 IFUN2=PA/PB+PC
      RETURN
      END
      REAL FUNCTION      IFUN3(L1,L2,L3,L4,L5)
      LOGICAL  LLA,LLB,LLC,L3(4),L1,L2,L4,L5
      DIMENSION     JA(4,1)
      JA(1,1)  =5
      JA(2,1)  =-10
      JA(3,1)  =2
      JA(4,1)  =0
      LLA =L1.AND.L2.OR.L3(1)
      LLB =(L2.AND.L3(3)).OR.L4
      LLC =.NOT.(L4.AND.L5)
      IF(((LLA.AND.LLB).OR.(.NOT.(LLA.OR.LLB))).AND.LLC) GO TO 1
      IFUN3=JA(1,1)*JA(2,1)
      RETURN
    1 IFUN3=JA(3,1)*JA(4,1)
      RETURN
      END
      REAL FUNCTION      IFUN4(I1,I2,L1,L2,R1,R2)
      LOGICAL       L1,L2
      DIMENSION     R2(2,2)
      IF((L1.AND.L2).OR.(.NOT.(L1.OR.L2)))GO TO 1
      JA=I1**2+I1+1
      JB=I1*I2
      GO TO 2
    1 JA  =I1*I2
      JB  =I1**2+I1+1
    2 PA  =R1**R2(1,1)
      PB  =R1+R2(2,2)-1.1
      IF(.TRUE..AND.L2) GO TO 3
      IFUN4 =JA+IFIX(PA)
      RETURN
    3 IFUN4 =JB+IFIX(PB)
      RETURN
      END
      REAL FUNCTION      IFUN5(I1,I2,L1,L2,R1,R2)
      LOGICAL  L1,L2
      DIMENSION     R1(2,2)
      JA  =I1+I2
      PA  =R1(1,1)+R2
      IF((L1.AND.L2).OR.(.NOT.(L1.OR.L2)))GO TO 1
      IFUN5=FLOAT(JA)+PA
      GO TO 2
    1 IFUN5=FLOAT(JA)-PA
    2 I2  =2
      L1  =.TRUE.
      L2  =.TRUE.
      R1(1,1)  =1.0
      RETURN
      END
      SUBROUTINE    PRT2(N,RVAL,RANS)
      DIF =RANS-RVAL
      IF(ABS(DIF)-1.0E-6*ABS(RANS)) 1,1,2
    1 WRITE (6,130) N
      RETURN
    2 WRITE (6,140) N,RVAL,RANS,DIF
  130 FORMAT (1H0,12X,7H*OK*   ,8X,1H(,I2,1H),8X,E15.7,14X,E15.7,
     1    8X,E15.7  )
  140 FORMAT (1H0,12X,7H*ERROR*,8X,1H(,I2,1H),8X,E15.7,14X,E15.7,
     1    8X,E15.7  )
      RETURN
      END
