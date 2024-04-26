      PROGRAM  MAIN
      REAL*4   ANS(50),CNST(50),A(10,10)
      DATA          ANS/50*0.0/,CNST/36.0,39.0,33.0,42.0,45.0,39.0,66.0,
     *    69.0,63.0,72.0,75.0,69.0,6.0,9.0,3.0,12.0,15.0,9.0,96.0,99.0,
     *    93.0,102.0,105.0,99.0,126.0,129.0,123.0,132.0,135.0,129.0,
     *    66.0,69.0,63.0,72.0,75.0,69.0,14*0.0/
      CALL     SUB10 (ANS,CNST,A)
      STOP
      END
      SUBROUTINE    SUB10 (ANS,CNST,A)
      DIMENSION     ANS(50),CNST(50),A(10,10)
      X        =    0.0
      DO  1  I =    1,10
      DO  1  J =    1,10
      X        =    X+1.
    1 A(I,J)   =    X

      N1       =    2
      I1 = 1
      I3 = 3
      DO  2  I =    I1,I3,I1

      ANS(1)   =    ANS(1)+A(N1,N1)
      ANS(2)   =    ANS(2)+A(N1,N1+1)
      ANS(3)   =    ANS(3)+A(N1,N1-1)
      ANS(4)   =    ANS(4)+A(N1,2*N1)
      ANS(5)   =    ANS(5)+A(N1,2*N1+1)
      ANS(6)   =    ANS(6)+A(N1,2*N1-1)

      ANS(7)   =    ANS(7)+A(N1+1,N1)
      ANS(8)   =    ANS(8)+A(N1+1,N1+1)
      ANS(9)   =    ANS(9)+A(N1+1,N1-1)
      ANS(10)  =    ANS(10)+A(N1+1,2*N1)
      ANS(11)  =    ANS(11)+A(N1+1,2*N1+1)
      ANS(12)  =    ANS(12)+A(N1+1,2*N1-1)

      ANS(13)  =    ANS(13)+A(N1-1,N1)
      ANS(14)  =    ANS(14)+A(N1-1,N1+1)
      ANS(15)  =    ANS(15)+A(N1-1,N1-1)
      ANS(16)  =    ANS(16)+A(N1-1,2*N1)
      ANS(17)  =    ANS(17)+A(N1-1,2*N1+1)
      ANS(18)  =    ANS(18)+A(N1-1,2*N1-1)

      ANS(19)  =    ANS(19)+A(2*N1,N1)
      ANS(20)  =    ANS(20)+A(2*N1,N1+1)
      ANS(21)  =    ANS(21)+A(2*N1,N1-1)
      ANS(22)  =    ANS(22)+A(2*N1,2*N1)
      ANS(23)  =    ANS(23)+A(2*N1,2*N1+1)
      ANS(24)  =    ANS(24)+A(2*N1,2*N1-1)

      ANS(25)  =    ANS(25)+A(2*N1+1,N1)
      ANS(26)  =    ANS(26)+A(2*N1+1,N1+1)
      ANS(27)  =    ANS(27)+A(2*N1+1,N1-1)
      ANS(28)  =    ANS(28)+A(2*N1+1,2*N1)
      ANS(29)  =    ANS(29)+A(2*N1+1,2*N1+1)
      ANS(30)  =    ANS(30)+A(2*N1+1,2*N1-1)

      ANS(31)  =    ANS(31)+A(2*N1-1,N1)
      ANS(32)  =    ANS(32)+A(2*N1-1,N1+1)
      ANS(33)  =    ANS(33)+A(2*N1-1,N1-1)
      ANS(34)  =    ANS(34)+A(2*N1-1,2*N1)
      ANS(35)  =    ANS(35)+A(2*N1-1,2*N1+1)
    2 ANS(36)  =    ANS(36)+A(2*N1-1,2*N1-1)

      IPSW     =    0
      DO  4  I =    1,50
      IF (ANS(I).EQ.CNST(I))  GO TO 4
      IF (IPSW.NE.0)          GO TO 3
      IPSW     =    1
      WRITE(6,100)
    3 WRITE(6,101)  I,CNST(I),ANS(I)
    4 CONTINUE
      IF (IPSW.NE.0)          GO TO 5
      WRITE(6,102)
      RETURN
    5 WRITE(6,103)
      STOP
  100 FORMAT(1H1/1H0,5X,41H* TEST OF OPTIMIZATION NO-10 ERROR LIST *//
     *           1H0,21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,F10.2,15X,F10.2)
  102 FORMAT(1H1/1H0/,5X,'OK' )
  103 FORMAT(1H0,5X,'ERROR')
      END
