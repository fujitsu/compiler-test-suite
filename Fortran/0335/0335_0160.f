      PROGRAM  MAIN
      REAL*8   ANS(50),CNST(50)
      INTEGER*4     A(10,10)
      DATA          ANS/50*0.0/,CNST/36.0,39.0,33.0,42.0,45.0,39.0,
     *    36.0,39.0,33.0,42.0,45.0,39.0,96.0,99.0,93.0,102.0,105.0,99.0,
     *    36.0,39.0,33.0,42.0,45.0,39.0,126.0,129.0,123.0,132.0,135.0,
     *    129.0,66.0,69.0,63.0,72.0,75.0,69.0,14*0.0/
      CALL     SUB16 (ANS,CNST,A)
      STOP
      END
      SUBROUTINE    SUB16 (ANS,CNST,A)
      REAL*8        ANS(50),CNST(50)
      INTEGER*4     A(10,10)

      K        =    1
      DO  1  I =    1,10
      DO  1  J =    1,10
      A(I,J)   =    K
    1 K        =    K+1

      N1       =    1
      N2       =    2
      I1  = 1
      I3  = 3
      DO  2  I =    I1,3
      ANS(1)   =    ANS(1)+A(N1,N2)
      ANS(2)   =    ANS(2)+A(N1,N2+1)
      ANS(3)   =    ANS(3)+A(N1,N2-1)
      ANS(4)   =    ANS(4)+A(N1,2*N2)
      ANS(5)   =    ANS(5)+A(N1,2*N2+1)
      ANS(6)   =    ANS(6)+A(N1,2*N2-1)
      N1       =    N1+1
    2 CONTINUE
      N1       =    0
      N2       =    2
      DO  3  I =    1,I3
      ANS(7)   =    ANS(7)+A(N1+1,N2)
      ANS(8)   =    ANS(8)+A(N1+1,N2+1)
      ANS(9)   =    ANS(9)+A(N1+1,N2-1)
      ANS(10)  =    ANS(10)+A(N1+1,2*N2)
      ANS(11)  =    ANS(11)+A(N1+1,2*N2+1)
      ANS(12)  =    ANS(12)+A(N1+1,2*N2-1)
      N1       =    N1+1
    3 CONTINUE
      N1       =    1
      N2       =    2
      DO  4  I =    1,3,I1
      ANS(13)  =    ANS(13)+A(2*N1,N2)
      ANS(14)  =    ANS(14)+A(2*N1,N2+1)
      ANS(15)  =    ANS(15)+A(2*N1,N2-1)
      ANS(16)  =    ANS(16)+A(2*N1,2*N2)
      ANS(17)  =    ANS(17)+A(2*N1,2*N2+1)
      ANS(18)  =    ANS(18)+A(2*N1,2*N2-1)
      N1       =    N1+1
    4 CONTINUE
      N1       =    2
      N2       =    2
      DO  5  I =    I1,I3
      ANS(19)  =    ANS(19)+A(N1-1,N2)
      ANS(20)  =    ANS(20)+A(N1-1,N2+1)
      ANS(21)  =    ANS(21)+A(N1-1,N2-1)
      ANS(22)  =    ANS(22)+A(N1-1,2*N2)
      ANS(23)  =    ANS(23)+A(N1-1,2*N2+1)
      ANS(24)  =    ANS(24)+A(N1-1,2*N2-1)
      N1       =    N1+1
    5 CONTINUE
      N1       =    1
      N2       =    2
      DO  6  I =    I1,3,I1
      ANS(25)  =    ANS(25)+A(2*N1+1,N2)
      ANS(26)  =    ANS(26)+A(2*N1+1,N2+1)
      ANS(27)  =    ANS(27)+A(2*N1+1,N2-1)
      ANS(28)  =    ANS(28)+A(2*N1+1,2*N2)
      ANS(29)  =    ANS(29)+A(2*N1+1,2*N2+1)
      ANS(30)  =    ANS(30)+A(2*N1+1,2*N2-1)
      N1       =    N1+1
    6 CONTINUE
      N1       =    1
      N2       =    2
      DO  7  I =    1,I3,I1
      ANS(31)  =    ANS(31)+A(2*N1-1,N2)
      ANS(32)  =    ANS(32)+A(2*N1-1,N2+1)
      ANS(33)  =    ANS(33)+A(2*N1-1,N2-1)
      ANS(34)  =    ANS(34)+A(2*N1-1,2*N2)
      ANS(35)  =    ANS(35)+A(2*N1-1,2*N2+1)
      ANS(36)  =    ANS(36)+A(2*N1-1,2*N2-1)
      N1       =    N1+1
    7 CONTINUE
      IPSW     =    0
      DO  9  I =    1,50
      IF (ANS(I).EQ.CNST(I))  GO TO 9
      IF (IPSW.NE.0)          GO TO 8
      WRITE(6,100)
      IPSW     =    1
    8 WRITE(6,101)  I,CNST(I),ANS(I)
    9 CONTINUE
      IF (IPSW.NE.0)          GO TO 10
      WRITE(6,102)
      RETURN
   10 WRITE(6,103)
      STOP
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-16 ) ERROR LIST,
     *                   2H *//1H0,21X,15HCONSTANT VALUE.,
     *                   12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,2X,E16.8,9X,E16.8)
  102 FORMAT(1H1/1H0/,5X,'OK' )
  103 FORMAT(1H0,5X,'ERROR')
      END
