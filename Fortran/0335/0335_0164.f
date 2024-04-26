      PROGRAM  MAIN
      REAL*4        ANS(50)
      INTEGER*4     A(10,10,10),CNST(50)
      DATA ANS/50*0.0/,CNST/424,426,422,428,430,426,444,446,
     *    442,448,450,446,404,406,402,408,410,406,464,466,462,468,470,
     *    466,484,486,482,488,490,486,444,446,442,448,450,446,14*0/
      CALL     SUB20 (ANS,CNST,A)
      STOP
      END
      SUBROUTINE    SUB20 (ANS,CNST,A)
      REAL*4        ANS(50)
      INTEGER*4     A(10,10,10),CNST(50)

      N        =    1
      DO  1  I =    1,10
      DO  1  J =    1,10
      DO  1  K =    1,10
      A(I,J,K) =    N
    1 N        =    N+1
      N        =    2
      I1  = 1
      I2  = 2
      DO  2  I =    I1,2
      ANS(1)   =    ANS(1)+A(N+1,N,N)
      ANS(2)   =    ANS(2)+A(N+1,N,N+1)
      ANS(3)   =    ANS(3)+A(N+1,N,N-1)
      ANS(4)   =    ANS(4)+A(N+1,N,2*N)
      ANS(5)   =    ANS(5)+A(N+1,N,2*N+1)
    2 ANS(6)   =    ANS(6)+A(N+1,N,2*N-1)
      N        =    2
      DO  3  I =    1,I2
      ANS(7)   =    ANS(7)+A(N+1,N+1,N)
      ANS(8)   =    ANS(8)+A(N+1,N+1,N+1)
      ANS(9)   =    ANS(9)+A(N+1,N+1,N-1)
      ANS(10)  =    ANS(10)+A(N+1,N+1,2*N)
      ANS(11)  =    ANS(11)+A(N+1,N+1,2*N+1)
    3 ANS(12)  =    ANS(12)+A(N+1,N+1,2*N-1)
      N        =    2
      DO  4  I =    1,2,I1
      ANS(13)  =    ANS(13)+A(N+1,N-1,N)
      ANS(14)  =    ANS(14)+A(N+1,N-1,N+1)
      ANS(15)  =    ANS(15)+A(N+1,N-1,N-1)
      ANS(16)  =    ANS(16)+A(N+1,N-1,2*N)
      ANS(17)  =    ANS(17)+A(N+1,N-1,2*N+1)
    4 ANS(18)  =    ANS(18)+A(N+1,N-1,2*N-1)
      N        =    2
      DO  5  I =    I1,I2
      ANS(19)  =    ANS(19)+A(N+1,2*N,N)
      ANS(20)  =    ANS(20)+A(N+1,2*N,N+1)
      ANS(21)  =    ANS(21)+A(N+1,2*N,N-1)
      ANS(22)  =    ANS(22)+A(N+1,2*N,2*N)
      ANS(23)  =    ANS(23)+A(N+1,2*N,2*N+1)
    5 ANS(24)  =    ANS(24)+A(N+1,2*N,2*N-1)
      N        =    2
      DO  6  I =    I1,2,I1
      ANS(25)  =    ANS(25)+A(N+1,2*N+1,N)
      ANS(26)  =    ANS(26)+A(N+1,2*N+1,N+1)
      ANS(27)  =    ANS(27)+A(N+1,2*N+1,N-1)
      ANS(28)  =    ANS(28)+A(N+1,2*N+1,2*N)
      ANS(29)  =    ANS(29)+A(N+1,2*N+1,2*N+1)
    6 ANS(30)  =    ANS(30)+A(N+1,2*N+1,2*N-1)
      N        =    2
      DO  7  I =    1,I2,I1
      ANS(31)  =    ANS(31)+A(N+1,2*N-1,N)
      ANS(32)  =    ANS(32)+A(N+1,2*N-1,N+1)
      ANS(33)  =    ANS(33)+A(N+1,2*N-1,N-1)
      ANS(34)  =    ANS(34)+A(N+1,2*N-1,2*N)
      ANS(35)  =    ANS(35)+A(N+1,2*N-1,2*N+1)
    7 ANS(36)  =    ANS(36)+A(N+1,2*N-1,2*N-1)
      IPSW     =    0
      DO  9  I =    1,50
      IF (ANS(I).EQ.CNST(I))       GO TO    9
      IF (IPSW.NE.0)               GO TO    8
      WRITE(6,100)
      IPSW     =    1
    8 WRITE(6,101)  I,CNST(I),ANS(I)
    9 CONTINUE
      IF (IPSW.NE.0)               GO TO   10
      WRITE(6,102)
      STOP
   10 WRITE(6,103)
      STOP
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-20 ) ERROR LIST,
     *                   2H *//1H0,21X,15HCONSTANT VALUE.,
     *                             12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,F10.2)
  102 FORMAT(1H1/1H0/,5X,'OK' )
  103 FORMAT(1H0,5X,'ERROR')
      END
