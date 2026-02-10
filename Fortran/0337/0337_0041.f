      DIMENSION     IA(2,2),ID(4)
      IA(1,1)  =1
      IA(2,1)  =2
      IA(1,2)  =3
      IA(2,2)  =4
      IB  =10
      IC  =-100
      ID(1)    =-5
      ID(2)    =-6
      ID(3)    =-7
      ID(4)    =-8
      WRITE (6,110)
C
C
      N=1
      CALL     SUB1(IA,IB,ID,N,IX,IY)
      IVAL     =IX+IY
      IANS     =677
      CALL     PRT1(N,IVAL,IANS)
C
C
      N=2
      CALL     SUB1(IA,IB,ID,N,IX,IY)
      IVAL     =IC*IY-IX
      IANS     =-27018
      CALL     PRT1(N,IVAL,IANS)
C
C
      N=3
      CALL     SUB1(IA,IB,ID,N,IX,IY)
      IVAL     =IX/IY
      IANS     =0
C
C
      N=4
      CALL     SUB1(IA,IB,ID,N,IX,IY)
  110 FORMAT (/// 10X,11H- JUSTICE -,5X,8H- ITEM -,6X,19H- COMPUTED RESU
     1LT -,10X,17H- COMPARE VALUE -,8X,14H- DIFFERENCE - / )
      STOP
      END
      SUBROUTINE    SUB1(I1,I2,I3,I4,I5,I6)
      DIMENSION     I1(2,2),I3(4)
      GO TO (1,2,3,4),I4
    1 JA  =0
      DO  10   J=1,2
      DO  10   I=1,2
      JA  =JA+I1(I,J)
   10 CONTINUE
      JB  =0
      DO  11   I=1,4
      JB  =JB+I3(I)
   11 CONTINUE
      I5  =JA/10
      I6  =JB**2
      RETURN
    2 JA  =I1(1,1)-I3(4)
      JB  =I2*I1(1,2)
      I5  =JA*IABS(-2)
      I6  =JB*JA
      RETURN
    3 IF(I1(1,1)+I2)  5,6,6
    5 I5  =I1(1,1)
      I6  =I2
    6 PA  =FLOAT(I1(1,1))
      PB  =EXP(PA)-5.0
      JA  =I2*I3(3)
      I5  =IFIX(PB)
      I6  =JA/10
      RETURN
    4 WRITE (6,100)  I4
  100 FORMAT (1H0,27X,1H(,I2,1H),9X,77HTHIS PROGRAM WAS STOPED BY STOP S
     1TATEMENT (STOP 55) IN SUBROUTINE SUBPROGRAM  )
      STOP  55,quiet=.true.
      END
      SUBROUTINE    PRT1(N,IVAL,IANS)
      IF(IANS-IVAL)   2,1,2
    1 WRITE (6,130) N,IVAL,IANS
      RETURN
    2 WRITE (6,140) N,IVAL,IANS
      RETURN
  130 FORMAT (1H0,12X,7H*OK*   ,8X,1H(,I2,1H),9X,I15,14X,I15  )
  140 FORMAT (1H0,12X,7H*ERROR*,8X,1H(,I2,1H),9X,I15,14X,I15  )
      END
