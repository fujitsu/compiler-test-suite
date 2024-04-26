      LOGICAL       A(2,2),B(4),C,D,E,LFUN1,LFUN2,LFUN3,LFUN4,LFUN5,
     *         LFUN6,LFUN7,LVAL,LANS,L1,L2,L3,L4,L5,L6,LFSUB
      REAL          RA(4,1)
      LFUN1(I1,I2)       =I1.GT.I2+10
      LFUN2(R1,R2,R3,R4) =R1+R2.EQ.R3/R4+10.0
      LFUN3(L1,L2,L3)   =.NOT.(L1.AND.L2.OR.L3)
      LFUN4(I1,I2,R3,R4,L5)   =I1.GT.I2.AND.R3.LE.R4.OR.L5
      LFUN5(L1,L2,L3,L4,L5,L6)=(((L1.AND.L2).OR.L3).OR.L4.AND.(.NOT.L5))
     1        .AND.L6.OR..FALSE.
      A(1,1)   =.TRUE.
      A(2,1)   =.TRUE.
      A(1,2)   =.FALSE.
      A(2,2)   =.FALSE.
      B(1)     =.TRUE.
      B(2)     =.FALSE.
      B(3)     =.TRUE.
      B(4)     =.TRUE.
      C   =.FALSE.
      D   =.TRUE.
      E   =.FALSE.
      IA  =5
      RA(1,1)  =-5.0
      RA(2,1)  =10.0
      RA(3,1)  =12.35
      RA(4,1)  =-4.0
      RB  =110.0
      RC  =2.0
C
C
      N=1
      LVAL     =LFUN1(IA,IA-5)
      LANS     =.FALSE.
      CALL     PRT(N,LVAL,LANS)
C
C
      N=2
      LVAL     =A(1,1).AND.LFUN2(RA(1,1),2.0,RB*1.0,RC-1.0)
      LANS     =.FALSE.
      CALL     PRT(N,LVAL,LANS)
C
C
      N=3
      LVAL    =LFUN3(.TRUE.,A(2,1),.TRUE..AND.B(1))
      LANS     =.FALSE.
      CALL     PRT(N,LVAL,LANS)
C
C
      N=4
      LVAL     =.NOT.LFUN4(IA,5*(-2),RA(N,1),2.0*RB,.NOT.A(1,2))
      LVAL     =.FALSE.
      CALL     PRT(N,LVAL,LANS)
C
C
      N=5
      LVAL     =LFUN5(.FALSE.,A(1,2),B(N-2),.TRUE..OR..FALSE.,D.AND.B(1)
     1         .OR.E,.NOT.(.NOT.B(N-1)))
      LANS    =.TRUE.
      CALL     PRT(N,LVAL,LANS)
C
C
      N=6
      LVAL     =.FALSE..OR.LFUN5(LFUN1(IA,IA-5),A(1,2),B(N-3),.TRUE..OR.
     1        .FALSE.,D.AND.B(1).OR.LFUN3(.TRUE.,A(2,1),.TRUE..AND.B(1))
     2        ,.NOT.(.NOT.B(N-2)))
      LANS    =.TRUE.
      CALL     PRT(N,LVAL,LANS)
C
C
      N=7
      LVAL     =LFUN3(.TRUE.,LFSUB(.FALSE.,A,.TRUE..AND.B(1)),.NOT.C)
      LANS     =.FALSE.
      CALL     PRT(N,LVAL,LANS)
C
      STOP
      END
      LOGICAL  FUNCTION       LFSUB(L1,L2,L3)
      LOGICAL      L1,L2(2,2),L3
      IF((L1.AND.L2(1,1)).OR.(.NOT.(L1.OR.L2(1,1)))) GO TO 1
      LFSUB    =L1.AND.L2(2,1).OR.L3
      RETURN
    1 LFSUB    =L1.OR.L2(2,1).AND.L3
      RETURN
      END
      SUBROUTINE    PRT(N,LVAL,LANS)
      LOGICAL      LVAL,LANS
      IF((LVAL.AND.LANS).OR.(.NOT.(LVAL.OR.LANS)))GO TO 1
      WRITE (6,110) N,LVAL,LANS
      RETURN
    1 WRITE (6,100) N
      RETURN
  100 FORMAT (1H0,12X,7H*OK*   ,8X,1H(,I2,1H),16X,L1,28X,L1)
  110 FORMAT (1H0,12X,7H*ERROR*,8X,1H(,I2,1H),16X,L1,28X,L1)
      END
