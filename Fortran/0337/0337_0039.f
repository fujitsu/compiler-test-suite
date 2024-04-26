      COMMON        IA,RA,N,RC
      DIMENSION     IB(2),RB(2,1),IE(2,2),RE(4),IA(2,2),RA(4)
      IA(1,1)  =105
      IA(2,1)  =-9
      IA(1,2)  =2222
      IA(2,2)  =-500
      RA(1)    =0.25
      RA(2)    =1.2
      RA(3)    =-4.44
      RA(4)    =-11.0
      IB(1)    =50
      IB(2)    =2
      RB(1,1)  =-1.9
      RB(2,1)  =44.0
      RVAL     =0.0
      RC       =0.0
      RD       =0.0
      DO   50  J=1,2
      DO   50  I=1,2
      IE(I,J)=IA(I,J)
  50  CONTINUE
      DO   51   I=1,4
      RE(I)=RA(I)
   51 CONTINUE
      WRITE (6,110)
C
C
      N=1
      DO  10   I=1,4
      CALL     SUB1(IE(2,1),EXP(RE(1)),IX,RX,N)
      RVAL     =RVAL+FLOAT(IX)+RX
   10 CONTINUE
      RANS     =44.4
      CALL    PRT2(N,RVAL,RANS)
C
C
      N=2
      RVAL     =0.0
      DO  11   I=1,4
      CALL     SUB2
      RVAL     =RVAL+SIN(RC)
   11 CONTINUE
      RANS     =4.0*SIN(RC)
      RANS     =0.2398558E 00
      CALL    PRT2(N,RVAL,RANS)
    3 RVAL=0.0
      IX  =0.0
      RX  =0.0
      IF(N-3) 1,2,1
C
C
    1 N=3
      DO  12   I=1,4
      RVAL     =RVAL+FLOAT(IX)+RX
   12 CALL     SUB1(IE(2,1),EXP(RE(1)),IX,RX,N)
      RANS     =-13.2*EXP(RA(1))+30.0
      RANS     =0.1305086E 02
      CALL    PRT2(N,RVAL,RANS)
      GO TO 3
C
C
    2 N=4
      RC  =0.0
      DO  13   I=1,4
      RVAL     =RVAL+RC+RA(3)
   13 CALL     SUB2
      RANS     =-17.67606
      CALL     PRT2(N,RVAL,RANS)
C
  110 FORMAT (///  10X,11H- JUSTICE -,5X,8H- ITEM -,6X,19H- COMPUTED RES
     1ULT -,10X,17H- COMPARE VALUE -,8X,14H- DIFFERENCE - /)
      STOP
      END
      SUBROUTINE   SUB1(I1,R1,I2,R2,L)
      DIMENSION     JA(4),PA(4)
      JA(1)    =10
      JA(2)    =-20
      JA(3)    =-5
      JA(4)    =2
      PA(1)    =1.1
      PA(2)    =-2.2
      PA(3)    =3.3
      PA(4)    =-4.4
      M   =0
      JB  =0
      GO TO (1,1,2),L
    1 M   =M+1
      DO  10   I=1,M
      JB  =JB+JA(I)
   10 CONTINUE
      I2  =JB/M
      IF(L-3) 3,4,3
    3 R2 =(R1/EXP(0.25))*PA(1)
      RETURN
    2 GO TO 1
    4 R2  =R1*PA(4)
      RETURN
      END
      SUBROUTINE    SUB2
      COMMON   IA,RA,N,RC
      DIMENSION    IA(2,2),RA(4)
      RC  =0.0
      JA  =0
      GO TO (1,1,1,2),N
    1 DO  10   J=1,2
      DO  10   I=1,2
      JA  =JA+IA(I,J)
   10 CONTINUE
      RC  =JA/100
      RC  =RC*RA(1)+RA(3)
      RETURN
    2 DO  11   I=1,4
      RC  =RC+RA(I)
   11 CONTINUE
      RC  =RC/FLOAT(IA(2,2))
      RETURN
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
