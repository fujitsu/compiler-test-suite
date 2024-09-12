C
      WRITE(6,100)
      WRITE(6,110)
      CALL FF1102
      WRITE(6,120)
      STOP
  100 FORMAT (1H1/6X,30H*FORTRAN*              ENTER /)
  110 FORMAT (1H0,5X, 45H  - ITEM -   -  JUSTICE -       - COMMENT -  /)
  120 FORMAT (1H0,5X, 24H*FORTRAN*          EXIT      )
      END
      SUBROUTINE FF1102
      integer NNN/0/
      COMMON   I,J,K,L,M,N,II,JJ,KK,LL,MM,NN
      DIMENSION  IV(6),IIV(6)
      EQUIVALENCE (I,IV(1)),(II,IIV(1))
C
      GO TO 4
    1 GO TO 10
    2 I1=10
    3 GO TO 13
C
    4 DO 5 IK=1,6
      IV(IK) = IK*10
    5 IIV(IK) = IV(IK)
C
C
      I1=0
      ITEM=1
      MCOUNT=1
C
      DO 19 I=10,JJ
          DO 18  J=20,KK
               DO 17  K=30,LL
                    DO 15  L=40,MM
                         DO 14  M=50,NN
    6                    GO TO 31
    7                    I1=(NN+M+L+K+J+I)/(I+J+K+L+M+60)+1+I1
    8                    GO TO (7,7,7,7,7,7,33,10),I1
    9                    GO TO 1
   10                    ASSIGN 34 TO I1
   11                    GO TO I1, (7,8,9,10,34,10)
   12                    IF (I+J+K+L+M-NNN) 35,2,36
   13                    IF (I1.EQ.10) GO TO 37
   14                    CONTINUE
   15               CONTINUE
   16          GO TO                              40
   17          CONTINUE
   18     CONTINUE
   19 CONTINUE
C
   31 MCOUNT=MCOUNT+1
      A=IV(1)*IV(2)*IV(3)+MCOUNT
      GO TO 7
   33 NNN = 0
      GO TO 9
   34 GO TO 12
   35 NNN=M+L+60
      GO TO 12
   36 NNN =200
      GO TO 12
   37 I1=0
      GO TO 14
C
   40 IF (MCOUNT.NE.(11*11+1)) GO TO 41
      WRITE (6,110) ITEM, MCOUNT
      GO TO 51
  100 FORMAT (1H0,5X, 3H  (,I2,1H),8X, 7H*ERROR*,10X, 7HMCOUNT=,I6,
     /         3X,8H ( 122)    )
  110 FORMAT (1H0,5X, 3H  (,I2,1H),8X, 7H*OK*   ,10X, 7HMCOUNT=,I6,
     /         3X,8H ( 122)   )
   41 WRITE(6,100) ITEM,MCOUNT
C
C
   51 DO 52 IK=1,6
      IV(IK)=IK
   52 IIV(IK)=IK*10
      ITEM =02
      M=50
      DO 53 I=II,JJ,ITEM
          DO 53  J=JJ,KK,2
               DO 53  K=KK,LL,2
               MCOUNT=I*J*K
                    DO 53  L=LL,MM,2
                    MCOUNT=MCOUNT+1
                    GO TO 55
   53               IV(100*N+205)=(I+J+K+L)/(I+J+K+L)*M+1+N
   54 GO TO 56
C
   55 CALL SUB ( I,J,K,L,M,N,II,JJ,KK,LL,MM,NN)
      GO TO 53
C
   56 IF (M.EQ.(-1246).AND.MCOUNT.EQ.24006) GO TO 57
      WRITE (6,200) ITEM,M,MCOUNT
  200 FORMAT (1H0,5X,3H  (,I2,1H),8X,7H*ERROR*,10X,2HM=,I6,8H MCOUNT=,
     /        I6,3X,15H(-1246),(24006)  )
      RETURN
   57 WRITE (6,210) ITEM,M,MCOUNT
  210 FORMAT (1H0,5X,3H  (,I2,1H),8X,7H*OK*   ,10X,2HM=,I6,8H MCOUNT=,
     /        I6,3X,15H(-1246),(24006)  )
      RETURN
      END
      SUBROUTINE SUB (I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12)
      COMMON  N(12)
      DOUBLE PRECISION A,B
      COMPLEX*16  CD(10) ,CDFUNC,X,Y
      DATA  CD /10*(1.0D0,1.0D0)/, A/1.0D0/,B/1.0D0/,X/(0.0D0,0.0D0)/,
     /      Y  /(0.0D0,0.0D0) /
      CDFUNC(X,Y)=A-X+B+Y+0.9D0
      X=I1+I2+I3+I4+I5+I6+I7+I8+I9+I10+I11+I12
      Y=I1+I2+I3+I4+I5+I6+I7+I8+I9+I10+I11+I12
      N(6)=-CDFUNC(X,Y)+(0.4,0.0)
      I6=N(6)
      RETURN
      END
