      DIMENSION     IA(3),RA(2,2),IE(3),RE(2,2),IANS1(3),RANS1(2,2)
      RFUNS(R1,R2)=R1**2+R2
      IFUNS(I1,I2)=I1/I2-I1*I2
      IA(1)=5
      IA(2)=-1
      IA(3)=4
      RA(1,1)=1.0
      RA(2,1)=-2.0
      RA(1,2)=11.1
      RA(2,2)=22.2
      RE(1,1) = 0.0
      IB=100
      IC=-15
      ID=123
      RB=.1E1
      RC=1.234E1
      RD=-2.2
C
      N=1
      IVAL    =IFUN1(RA,RB,RFUNS(1.0,-2.0),RFUN1(IA,2,IFUNS(IA(1),IC),
     *         IFIX(15.55)))
      IANS    =23
      CALL    PRT1(N,IVAL,IANS)
C
C
      N=2
      RVAL    =RFUN1(IA,ID,IFUNS(-2,10),IFUN1(RA,10.0,RFUNS(RB,RD/2.0),
     *          SIN(RA(1,1))))
      RANS    =-468.0
      CALL    PRT2(N,RVAL,RANS)
C
C
      N=3
      IVAL    =RFUN2(IA(1),IB,RA(1,1),RC)/10.0
      IANS    =-4765
      CALL    PRT1(N,IVAL,IANS)
C
C
      N=4
C
      IZZ=IA(2)
      FZZ=RA(2,2)
      CALL     SUB1(IA,IZZ,  IE,RA,FZZ    ,RE     ,IFUNS(1,-5),IX)
      IA(2)=IZZ
      RA(2,2)=FZZ
      IVAL    =IX
      IANS    =25
      CALL    PRT1(N,IVAL,IANS)
      M=0
      IANS1(1)=10
      IANS1(2)=-2
      IANS1(3)=8
      RANS1(1,1)=22.2
      RANS1(2,1)=-44.4
      RANS1(1,2)=246.42
      RANS1(2,2)=492.84
      DO  1    I=1,3
      M=M+1
      IVAL=IE(I)
      CALL    PRT3(N,M,IVAL,IANS1(I))
    1 CONTINUE
      DO  2    J=1,2
      DO  2    I=1,2
      M=M+1
      RVAL=RE(I,J)
      CALL    PRT4(N,M,RVAL,RANS1(I,J))
    2 CONTINUE
      IVAL=IA(2)
      RVAL=RA(2,2)
      IANS    =16
      RANS    =246.42
      M=M+1
      CALL    PRT3(N,M,IVAL,IANS)
      M=M+1
      CALL    PRT4(N,M,RVAL,RANS)
      STOP
      END
      FUNCTION      IFUN1(R1,R2,R3,R4)
      DIMENSION          R1(4)
      RFUNS(RR1,RR2,RR3)=RR1**2-SIN(RR2/RR3)
      IFUN1   =R1(4)+RFUNS(R2,R3,R4)
      RETURN
      END
      FUNCTION      RFUN1(I1,I2,I3,I4)
      DIMENSION     I1(2)
      IFUNS(II1,II2,II3)=II1*II2-IABS(II3)
      RFUN1=IFUNS(I1(1),I3/I4,IFIX(EXP(FLOAT(I4-I1(2))/20.0)))
      RETURN
      END
      FUNCTION      RFUN2(I1,I2,R1,R2)
      RFUNS(RR1,RR2)=RR1/RR2
      IFUNS(II1,II2)=II1*II2
      RFUN2=FLOAT(IFUNS(I1*I2,I1-I2))-RFUNS(R1*R2,R1/R2)
      RETURN
      END
      SUBROUTINE         SUB1(I1,I2,I3,R1,R2,R3,I4,I5)
      DIMENSION          I1(3),I3(3),R1(2,2),R3(4)
      RFUNS(RR1,RR2)=RR1**2-RR2
      I5=RFUNS(FLOAT(I4),R3(1))
      DO  1    I=1,3
      I3(I)=I1(I)*2
    1 CONTINUE
      I2 =I1(3)**2
      K=0
      DO  2    J=1,2
      DO  2    I=1,2
      K=K+1
      R3(K)=R1(I,J)*R2
    2 CONTINUE
      R2 =R1(1,2)*R1(2,2)
      RETURN
      END
      SUBROUTINE    PRT1(N,IVAL,IANS)
      IF(IVAL-IANS) 2,1,2
    1 WRITE (6,100)   N
      RETURN
    2 WRITE (6,110)   N,IVAL,IANS
      RETURN
  100 FORMAT (1H0,12X,7H*OK*   ,10X,1H(,I2,1H),21X,I6,24X,I6 )
  110 FORMAT (1H0,12X,7H*ERROR*,10X,1H(,I2,1H),21X,I6,24X,I6 )
      END
      SUBROUTINE    PRT2(N,RVAL,RANS)
      DIF =RVAL-RANS
      IF(ABS(DIF)-1.0E-5*ABS(RANS)) 1,2,2
    1 WRITE (6,100) N
      RETURN
    2 WRITE (6,110) N,RVAL,RANS,DIF
      RETURN
  100 FORMAT (1H0,12X,7H*OK*   ,10X,1H(,I2,1H),3(16X,E14.7) )
  110 FORMAT (1H0,12X,7H*ERROR*,10X,1H(,I2,1H),3(16X,E14.7) )
      END
      SUBROUTINE    PRT3(N,M,IVAL,IANS)
      IF(IVAL-IANS) 2,1,2
    1 WRITE (6,100) N,M
      RETURN
    2 WRITE (6,110) N,M,IVAL,IANS
      RETURN
  100 FORMAT (1H0,12X,7H*OK*   ,10X,1H(,I2,1H-,I2,1H),2(18X,I6,6X) )
  110 FORMAT (1H0,12X,7H*ERROR*,10X,1H(,I2,1H-,I2,1H),2(18X,I6,6X) )
      END
      SUBROUTINE   PRT4(N,M,RVAL,RANS)
      DIF =RVAL-RANS
      IF(ABS(DIF)-1.0E-5*ABS(RANS)) 1,2,2
    1 WRITE (6,100) N,M
      RETURN
    2 WRITE (6,110) N,M,RVAL,RANS,DIF
      RETURN
  100 FORMAT (1H0,12X,7H*OK*   ,10X,1H(,I2,1H-,I2,1H),3(13X,E14.7,3X) )
  110 FORMAT (1H0,12X,7H*ERROR*,10X,1H(,I2,1H-,I2,1H),3(13X,E14.7,3X) )
      END
