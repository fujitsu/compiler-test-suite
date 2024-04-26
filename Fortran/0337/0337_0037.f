      COMMON      RA,RB,IA,IB,RC,N
      DIMENSION     RD(10),IC(5),RA(10),RB(4,4),IA(5)
      DO  1    I=1,10
    1 RA(I)   =      -1.5
      DO  2    J=1,4
      DO  2    I=1,4
    2 RB(I,J)  =       +12.5
      DO  3    I=1,5
    3 IA(I)    =5
      DO  4    I=1,10
    4 RD(I)    =4.4
      DO  5    I=1,5
    5 IC(I)    =-2
C
      N=1
      CALL     SUB1
      IVAL     =IB+IC(2)-110
      IANS     =-107
      CALL     PRT1(N,IVAL,IANS)
C
C
      N=2
      RF  =RD(1)**2+RD(3)
      CALL     SUB1
      RVAL     =RF+RC-FLOAT(IB)
      RANS     =413.76
      CALL     PRT2(N,RVAL,RANS)
C
C
      N=3
      CALL     SUB1
      RVAL     =RC**2-1.23456E2
      RANS     =-1.23456E2
C
      CALL     PRT2(N,RVAL,RANS)
      STOP
      END
      SUBROUTINE    SUB1
      COMMON   RA,RB,IA,IB,RC,N
      DIMENSION   RA(10),RB(4,4),IA(5)
      GO TO (1,2,3),N
    1 ID  =0
      DO  10   J=1,5
      ID  =ID+IA(J)
   10 CONTINUE
      IB  =ID/5
      RETURN
    2 RE  =0.0
      ID  =0.0
      DO  20   J=1,4
      DO  20   I=1,4
      RE  =RE+RB(I,J)
   20 CONTINUE
      IE  =IA(1)+IA(2)
      RC  =RE*2.0
      IB  =100/IE
      RETURN
    3 K   =0
      DO  30   J=1,4
      DO  30   I=1,4
      K   =K+1
      RA(K)=RB(I,J)
   30 CONTINUE
      RC  =RA(1)-RB(1,1)
      RETURN
      END
      SUBROUTINE    PRT1(N,IVAL,IANS)
      IF(IANS-IVAL)  2,1,2
    1 WRITE (6,130)  N
      RETURN
    2 WRITE (6,140)  N,IVAL,IANS
  130 FORMAT (1H0,12X,7H*OK*   ,8X,1H(,I2,1H),8X,I15,14X,I15    )
  140 FORMAT (1H0,12X,7H*ERROR*,8X,1H(,I2,1H),8X,I15,14X,I15    )
      RETURN
      END
      SUBROUTINE    PRT2(N,RVAL,RANS)
      DIF =RANS-RVAL
      IF(ABS(DIF)-1.0E-5*ABS(RANS))   1,1,2
    1 WRITE (6,130) N
      RETURN
    2 WRITE (6,140) N,RVAL,RANS,DIF
  130 FORMAT(1H0,12X,7H*OK*   ,8X,1H(,I2,1H),8X,E15.7,14X,E15.7,
     1    8X,E15.5  )
  140 FORMAT (1H0,12X,7H*ERROR*,8X,1H(,I2,1H),8X,E15.7,14X,E15.7,
     1    8X,E15.5  )
      RETURN
      END
