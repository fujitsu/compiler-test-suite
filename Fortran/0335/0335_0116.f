      PROGRAM  MAIN
      INTEGER*4     ANS(50),CNST(50),A(10,10,10)
      DATA          ANS/50*0/,CNST/424,426,422,428,430,426,444,446,442,
     *    448,450,446,404,406,402,408,410,406,464,466,462,468,470,466,
     *    484,486,482,488,490,486,444,446,442,448,450,446,14*0/
      CALL     SUB24 (ANS,CNST,A)
      STOP
      END
      SUBROUTINE    SUB24 (ANS,CNST,A)
      INTEGER*4     ANS(50),CNST(50),A(10,10,10)

      N        =    1
      DO  1  I =    1,10
      DO  1  J =    1,10
      DO  1  K =    1,10
      A(I,J,K) =    N
    1 N        =    N+1

      N        =    2
      DO  2  I =    1,2
      ANS(1)   =    ANS(1)+A(2*N-1,N,N)
      ANS(2)   =    ANS(2)+A(2*N-1,N,N+1)
      ANS(3)   =    ANS(3)+A(2*N-1,N,N-1)
      ANS(4)   =    ANS(4)+A(2*N-1,N,2*N)
      ANS(5)   =    ANS(5)+A(2*N-1,N,2*N+1)
    2 ANS(6)   =    ANS(6)+A(2*N-1,N,2*N-1)

      DO  3  I =    1,2
      ANS(7)   =    ANS(7)+A(2*N-1,N+1,N)
      ANS(8)   =    ANS(8)+A(2*N-1,N+1,N+1)
      ANS(9)   =    ANS(9)+A(2*N-1,N+1,N-1)
      ANS(10)  =    ANS(10)+A(2*N-1,N+1,2*N)
      ANS(11)  =    ANS(11)+A(2*N-1,N+1,2*N+1)
    3 ANS(12)  =    ANS(12)+A(2*N-1,N+1,2*N-1)

      DO  4  I =    1,2
      ANS(13)  =    ANS(13)+A(2*N-1,N-1,N)
      ANS(14)  =    ANS(14)+A(2*N-1,N-1,N+1)
      ANS(15)  =    ANS(15)+A(2*N-1,N-1,N-1)
      ANS(16)  =    ANS(16)+A(2*N-1,N-1,2*N)
      ANS(17)  =    ANS(17)+A(2*N-1,N-1,2*N+1)
    4 ANS(18)  =    ANS(18)+A(2*N-1,N-1,2*N-1)

      DO 5   I =    1,2
      ANS(19)  =    ANS(19)+A(2*N-1,2*N,N)
      ANS(20)  =    ANS(20)+A(2*N-1,2*N,N+1)
      ANS(21)  =    ANS(21)+A(2*N-1,2*N,N-1)
      ANS(22)  =    ANS(22)+A(2*N-1,2*N,2*N)
      ANS(23)  =    ANS(23)+A(2*N-1,2*N,2*N+1)
    5 ANS(24)  =    ANS(24)+A(2*N-1,2*N,2*N-1)

      DO  6  I =    1,2
      ANS(25)  =    ANS(25)+A(2*N-1,2*N+1,N)
      ANS(26)  =    ANS(26)+A(2*N-1,2*N+1,N+1)
      ANS(27)  =    ANS(27)+A(2*N-1,2*N+1,N-1)
      ANS(28)  =    ANS(28)+A(2*N-1,2*N+1,2*N)
      ANS(29)  =    ANS(29)+A(2*N-1,2*N+1,2*N+1)
    6 ANS(30)  =    ANS(30)+A(2*N-1,2*N+1,2*N-1)

      DO  7  I =    1,2
      ANS(31)  =    ANS(31)+A(2*N-1,2*N-1,N)
      ANS(32)  =    ANS(32)+A(2*N-1,2*N-1,N+1)
      ANS(33)  =    ANS(33)+A(2*N-1,2*N-1,N-1)
      ANS(34)  =    ANS(34)+A(2*N-1,2*N-1,2*N)
      ANS(35)  =    ANS(35)+A(2*N-1,2*N-1,2*N+1)
    7 ANS(36)  =    ANS(36)+A(2*N-1,2*N-1,2*N-1)

      IPSW     =    0
      DO  9  I =    1,50
      IF (CNST(I).EQ.ANS(I))       GO TO    9
      IF (IPSW.NE.0)               GO TO    8
      WRITE(6,100)
      IPSW    =    1
    8 WRITE(6,101) I,CNST(I),ANS(I)
    9 CONTINUE
      IF (IPSW.NE.0)               GO TO   10
      WRITE(6,102)
      STOP
   10 WRITE(6,103)
      STOP
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-24 ) ERROR LIST,
     *    2H *//1H0,21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = , 8X,I10,15X,I10)
  102 FORMAT(1H1/1H0,5X,2HOK)
  103 FORMAT(1H0,5X,5HERROR)
      END