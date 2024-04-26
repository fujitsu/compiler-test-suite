      COMMON   IA,RA,N
      DIMENSION     IA(2,2),RA(2,2),IB(3),RB(3)
      IA(1,1)  =2
      IA(2,1)  =100
      IA(1,2)  =-10
      IA(2,2)  =-5
      IB(1)    =1
      IB(2)    =-2
      IB(3)    =3
      RA(1,1)  =2.0
      RA(2,1)  =3.0
      RA(1,2)  =-2.2
      RA(2,2)  =-4.0
      RB(1)    =1.0
      RB(2)    =-2.0
      RB(3)    =3.0
C
      N=1
      CALL     SUB1(IB(1),RB(1),RB(3),IX,RX)
      RVAL     =RX**2+FLOAT(IX)*100.0
      RANS     =712.36
      CALL     PRT2(N,RVAL,RANS)
C
C
      N=2
      CALL     SUB2(IB(2),2.0,RB(1),IX,RX,N)
      RVAL     =FLOAT(IX)**2-RX
      RANS     =77.1
      CALL     PRT2(N,RVAL,RANS)
C
C
      N=3
      RVAL     =FUN(RB(2),3.3,N)
      RANS     =-40.9
      CALL     PRT2(N,RVAL,RANS)
C
      STOP
      END
      SUBROUTINE    SUB1(I1,R1,R2,I2,R3)
      COMMON   IA,RA,N
      DIMENSION     IA(2,2),RA(2,2),IB(2),RB(2)
      IB(1)    =4
      IB(2)    =-3
      RB(1)    =2.0
      RB(2)    =-4.0
      JD  =I1**IB(1)/2
      PD  =R1+R2-RB(2)-1.0
      CALL     SUB2(JD,RB(1),PD,IX,RX,N)
      I2  =IX+JD
      R3  =RX+PD
      RETURN
      END
      SUBROUTINE    SUB2(I1,R1,R2,I2,R3,L)
      COMMON        IA,RA,N,JA,PA
      DIMENSION     IA(2,2),RA(2,2),IB(2),RB(2)
      IB(1)    =4
      IB(2)    =5
      RB(1)    =-4.4
      RB(2)    =3.0
      IF(L-2)  1,2,1
    1 JC  =0
      PC  =0.0
      DO  10   I=1,2
   10 JC  =JC+IB(I)
      DO  11   I=1,2
   11 PC  =PC+RB(I)
      CALL     SUB3
      I2  =I1+JA+JC
      R3  =R1*R2+PA+PC
      RETURN
    2 JE  =I1+IB(1)
      PE  =R1*RB(2)-R2
      R3  =FUN(FLOAT(JE),PE,L)
      I2  =IFIX(R3)**2
      RETURN
      END
      SUBROUTINE    SUB3
      COMMON   IA,RA,N,JA,PA
      DIMENSION     IA(2,2),RA(2,2),IB(2),RB(2)
      IB(1)    =2
      IB(2)    =-3
      RB(1)    =2.0
      RB(2)    =-4.0
      CALL     SUB4(IB(1),2.0,RB(2),IX,RX)
      JA  =IX/IA(1,1)+IB(1)
      PA  =RX**2/RB(2)
      RETURN
      END
      SUBROUTINE    SUB4(I1,R1,R2,I2,R3)
      COMMON   IA,RA,N,JA,PA,JB,PB
      DIMENSION     IA(2,2),RA(2,2),IB(2),RB(2)
      IB(1)    =2
      IB(2)    =-3
      RB(1)    =2.0
      RB(2)    =-4.0
      CALL     SUB5
      I2  =I1*JB
      R3  =R1+R2-PB
      RETURN
      END
      SUBROUTINE    SUB5
      COMMON   IA,RA,N,JA,PA,JB,PB
      DIMENSION     IA(2,2),RA(2,2),IB(2),RB(2)
      IB(1)    =2
      IB(2)    =-3
      RB(1)    =2.0
      RB(2)    =-4.0
      JB  =IA(2,2)+IB(1)-2
      PB  =RA(1,1)*RB(2)
      RETURN
      END
      FUNCTION      FUN(R1,R2,L)
      DIMENSION     RB(4)
      RB(1)    =-1.1
      RB(2)    =-2.2
      RB(3)    =3.3
      RB(4)    =4.4
      IF(L-2) 2,1,2
    1 FUN =R1**2+R1*3.0-R2+RB(1)
      RETURN
    2 IB  =10
      CALL     SUB4(IB,RB(1),-RB(2),IX,RX)
      FUN =FLOAT(IX)+RX
      RETURN
      END
      SUBROUTINE    PRT2(N,RVAL,RANS)
      DIF =RANS-RVAL
      IF(ABS(DIF)-1.0E-5*ABS(RANS)) 1,1,2
    1 WRITE (6,130)
      RETURN
    2 WRITE (6,140) N,RVAL,RANS,DIF
  130 FORMAT (1H0,12X,4H*OK*)
  140 FORMAT (1H0,12X,7H*ERROR*,8X,1H(,I2,1H),9X,E15.7,14X,E15.7,
     1    8X,E15.7  )
      RETURN
      END
