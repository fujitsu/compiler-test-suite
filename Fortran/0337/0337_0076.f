      INTEGER       FUN1,FUN2,FUN3,FUN4,FUN5
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
      WRITE (6,110)
C
C
      N=1
      IVAL     =FUN1( 2 ,N,IA,IA(1,1),IB(N)**2)-10
      IANS     =-112
      CALL     PRT1(N,IVAL,IANS)
C
C
      N=2
      IVAL     =FUN2(2.0,RC,RA,RB(2),RA(N,N)-10.0)+10000
      IANS     =10004
      CALL     PRT1(N,IVAL,IANS)
C
C
      N=3
      IVAL     =FUN3(.TRUE.,LB,LA,LA(2),.NOT.(LA(N)))+1
      IANS     =-49
      CALL     PRT1(N,IVAL,IANS)
C
C
      N=4
      IVAL     =FUN4(N,IA(2,2)/100+IB(1),.TRUE..AND.(.NOT.LA(1).AND..FAL
     1          SE.),IA(2,1).LT.3,2.0,RA)-100
      IANS    =-62
      CALL     PRT1(N,IVAL,IANS)
C
  110 FORMAT (/// 10X,11H- JUSTICE -,5X,8H- ITEM -,6X,19H- COMPUTED RESU
     1LT -,10X,17H- COMPARE VALUE - /  )
      STOP
      END
      INTEGER FUNCTION   FUN1(I1,I2,I3,I4,I5)
      DIMENSION     I3(2,2)
      JA  =I1+I2-I3(1,1)
      JB  =I2*I3(2,2)-I4
      JC  =I3(2,1)/I4-I5
      IF(I1-I4) 1,1,2
    1 FUN1=JA+JB-JC
      RETURN
    2 FUN1=JA/JB+JC
      RETURN
      END
      INTEGER FUNCTION   FUN2(R1,R2,R3,R4,R5)
      DIMENSION     R3(2,2)
      PA  =R1+R2-R3(1,1)
      PB  =R2*R3(2,2)-R4
      PC  =R3(2,1)/R4-R5
      IF(R1+R4) 1,1,2
    1 FUN2=PA+PB-PC
      RETURN
    2 FUN2=PA/PB+PC
      RETURN
      END
      INTEGER  FUNCTION  FUN3(L1,L2,L3,L4,L5)
      LOGICAL  LLA,LLB,LLC,L3(4),L1,L2,L4,L5
      DIMENSION   JA(4,1)
      JA(1,1)  =5
      JA(2,1)  =-10
      JA(3,1)  =2
      JA(4,1)  =0
      LLA =L1.AND.L2.OR.L3(1)
      LLB =(L2.AND.L3(3)).OR.L4
      LLC =.NOT.(L4.AND.L5)
      IF(((LLA.AND.LLB).OR.(.NOT.(LLA.OR.LLB))).AND.LLC) GO TO 1
      FUN3=JA(1,1)*JA(2,1)
      RETURN
    1 FUN3=JA(3,1)*JA(4,1)
      RETURN
      END
      INTEGER  FUNCTION  FUN4(I1,I2,L1,L2,R1,R2)
      LOGICAL       L1,L2
      DIMENSION     R2(2,2)
      IF((L1.AND.L2).OR.(.NOT.(L1.OR.L2)))GO TO 1
      JA  =I1**2+I1+1
      JB  =I1*I2
      GO TO 2
    1 JA  =I1*I2
      JB  =I1**2+I1+1
    2 PA  =R1**R2(1,1)
      PB  =R1+R2(2,2)-1.1
      IF(.TRUE..AND.L2) GO TO 3
      FUN4=JA+IFIX(PA)
      RETURN
    3 FUN4=JB+IFIX(PB)
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
