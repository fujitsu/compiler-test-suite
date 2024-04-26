      LOGICAL       LVAL,LANS,LA(4),LB,LANS1,LANS2
     *         ,LFUN1,LFUN2,LFUN3,LFUN4,LFUN5
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
      LVAL     =LFUN1(2,N,IA,IA(1,1),IB(N)**2).AND..TRUE.
      LANS     =.TRUE.
      CALL     PRT3(N,LVAL,LANS)
C
C
      N=2
      LVAL=.NOT.LFUN2(2.0,RC,RA,RB(2),RA(N,N)-10.0)
      LANS     =.FALSE.
      CALL     PRT3(N,LVAL,LANS)
C
C
      N=3
      LVAL     =LFUN3(.TRUE.,LB,LA,LA(2),.NOT.(LA(N))).AND..TRUE.
      LANS     =.FALSE.
      CALL     PRT3(N,LVAL,LANS)
C
C
      N=4
      LVAL=.NOT.LFUN4(N,IA(2,2)/100+IB(1),.TRUE..AND.(.NOT.LA(1).AND.
     1         .FALSE.),IA(2,1).LT.3,2.0,RA)
      LANS     =.FALSE.
      CALL    PRT3(N,LVAL,LANS)
C
C
      N=5
      LVAL     =LFUN5(2,IA(1,1),LA(N-2),LB,RA,2.0).AND..TRUE.
      LANS     =.TRUE.
      LANS1    =IA(1,1).EQ.2.AND.RA(1,1).EQ.1.0
      LVAL     =LANS1.AND.LB.OR.LVAL
      CALL    PRT3(N,LVAL,LANS)
C
      STOP
      END
      LOGICAL FUNCTION   LFUN1(I1,I2,I3,I4,I5)
      DIMENSION     I3(2,2)
      LOGICAL      LLA,LLB
      JA  =I1+I2-I3(1,1)
      JB  =I2*I3(2,2)-I4
      JC  =I3(2,1)/I4-I5
      LLA =.TRUE.
      LLB =.FALSE.
      IF(JA.LT.JB)  GO TO 1
      IF(JA.LT.JC)  GO TO 2
      LFUN1=LLA.AND.LLB
      RETURN
    1 LFUN1=LLA.OR.LLB
      RETURN
    2 LFUN1=.NOT.LLA
      RETURN
      END
      LOGICAL FUNCTION   LFUN2(R1,R2,R3,R4,R5)
      LOGICAL       LLA,LLB
      DIMENSION     R3(2,2)
      PA  =R1+R2-R3(1,1)
      PB  =R2*R3(2,2)-R4
      PC  =R3(2,1)/R4-R5
      LLA =.TRUE.
      LLB =.FALSE.
      IF(PA.LT.PB) GO TO 1
      IF(PA.LT.PC) GO TO 2
      LFUN2=LLA.AND.LLB
      RETURN
    1 LFUN2=LLA.OR.LLB
      RETURN
    2 LFUN2=.NOT.LLA
      RETURN
      END
      LOGICAL FUNCTION   LFUN3(L1,L2,L3,L4,L5)
      LOGICAL  L1,L2,L3(4),L4,L5,LLA,LLB,LLC,LLD(4)
      LLA =L1.AND.L2.OR.L3(3)
      LLB =.NOT.(.NOT.L4)
      LLC =L5
      DO  10   I=1,4
      LLD(I)=L3(I).AND.LLA
   10 CONTINUE
      IF((LLA.AND.LLB).OR.(.NOT.(LLA.OR.LLB))) GO TO 1
      IF((LLA.AND.LLC).OR.(.NOT.(LLA.OR.LLC))) GO TO 2
      LFUN3=LLA.AND.LLD(1)
      RETURN
    1 LFUN3=LLB.OR.LLD(2)
      RETURN
    2 LFUN3=LLC.AND.LLD(3)
      RETURN
      END
      LOGICAL FUNCTION   LFUN4(I1,I2,L1,L2,R1,R2)
      LOGICAL       L1,L2
      DIMENSION     R2(2,2)
      IF((L1.AND.L2).OR.(.NOT.(L1.OR.L2)))GO TO 1
      JA=I1**2+I1+1
      JB=I1*I2
      GO TO 2
    1 JA =I1*I2
      JB =I1**2+I1+1
    2 PA =R1**R2(1,1)
      PB =R1+R2(2,2)-1.1
      IF(JA.EQ.JB)  GO TO 3
      IF(PA.GT.PB)  GO TO 4
      LFUN4 =.TRUE.
      RETURN
    3 LFUN4 =.FALSE.
      RETURN
    4 LFUN4 =.TRUE.
      RETURN
      END
      LOGICAL FUNCTION   LFUN5(I1,I2,L1,L2,R1,R2)
      LOGICAL       L1,L2
      DIMENSION     R1(2,2)
      JA  =I1+I2
      PA  =R1(1,1)+R2
      IF(JA.EQ.IFIX(PA)) GO TO 1
      LFUN5 =L1.AND.L2
      GO TO 2
    1 LFUN5 =.NOT.L2
    2 I2  =2
      L1  =.TRUE.
      L2  =.TRUE.
      R1(1,1)  =1.0
      RETURN
      END
      SUBROUTINE    PRT3(N,LVAL,LANS)
      LOGICAL    LVAL,LANS
      IF((LVAL.AND.LANS).OR.(.NOT.(LVAL.OR.LANS)))GO TO 1
      WRITE (6,140)  N,LVAL,LANS
      RETURN
    1 WRITE (6,130)  N
      RETURN
  130 FORMAT (1H0,12X,7H*OK*   ,8X,1H(,I2,1H),15X,L1,27X,L1     )
  140 FORMAT (1H0,12X,7H*ERROR*,8X,1H(,I2,1H),15X,L1,27X,L1     )
      END
