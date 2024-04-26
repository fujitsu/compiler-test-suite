      PROGRAM  MAIN
      INTEGER*2     ANS(50)
      INTEGER*4     CNST(50),A(10,10,10)
      DATA          ANS/50*0/,CNST/202,204,206,202,208,210,206,402,
     *    2,602,802,402,224,226,222,228,230,226,244,246,242,248,250,
     *    246,204,206,202,208,210,206,264,266,262,262,268,270,266,
     *    284,286,282,288,290,286,244,246,242,248,250,246,0/
      CALL     SUB19 (ANS,CNST,A)
      STOP
      END
      SUBROUTINE    SUB19 (ANS,CNST,A)
      INTEGER*2     ANS(50)
      INTEGER*4     CNST(50),A(10,10,10)
      N        =    1
      DO  1  I =    1,10
      DO  1  J =    1,10
      DO  1  K =    1,10
      A(I,J,K) =    N
    1 N        =    N+1

      N        =    2
      DO  2  I =    1,2
      ANS(1)   =    ANS(1)+A(N,1,1)
      ANS(2)   =    ANS(2)+A(N,1,N)
      ANS(3)   =    ANS(3)+A(N,1,N+1)
      ANS(4)   =    ANS(4)+A(N,1,N-1)
      ANS(5)   =    ANS(5)+A(N,1,2*N)
      ANS(6)   =    ANS(6)+A(N,1,2*N+1)
    2 ANS(7)   =    ANS(7)+A(N,1,2*N-1)
      N        =    2
      DO  3  I =    1,2
      ANS(8)   =    ANS(8)+A(N+1,1,1)
      ANS(9)   =    ANS(9)+A(N-1,1,1)
      ANS(10)  =    ANS(10)+A(2*N,1,1)
      ANS(11)  =    ANS(11)+A(2*N+1,1,1)
    3 ANS(12)  =    ANS(12)+A(2*N-1,1,1)
      N        =    2
      DO  4  I =    1,2
      ANS(13)  =    ANS(13)+A(N,N,N)
      ANS(14)  =    ANS(14)+A(N,N,N+1)
      ANS(15)  =    ANS(15)+A(N,N,N-1)
      ANS(16)  =    ANS(16)+A(N,N,2*N)
      ANS(17)  =    ANS(17)+A(N,N,2*N+1)
    4 ANS(18)  =    ANS(18)+A(N,N,2*N-1)
      N        =    2
      DO  5  I =    1,2
      ANS(19)  =    ANS(19)+A(N,N+1,N)
      ANS(20)  =    ANS(20)+A(N,N+1,N+1)
      ANS(21)  =    ANS(21)+A(N,N+1,N-1)
      ANS(22)  =    ANS(22)+A(N,N+1,2*N)
      ANS(23)  =    ANS(23)+A(N,N+1,2*N+1)
    5 ANS(24)  =    ANS(24)+A(N,N+1,2*N-1)
      N        =    2
      DO  6  I =    1,2
      ANS(25)  =    ANS(25)+A(N,N-1,N)
      ANS(26)  =    ANS(26)+A(N,N-1,N+1)
      ANS(27)  =    ANS(27)+A(N,N-1,N-1)
      ANS(28)  =    ANS(28)+A(N,N-1,2*N)
      ANS(29)  =    ANS(29)+A(N,N-1,2*N+1)
    6 ANS(30)  =    ANS(30)+A(N,N-1,2*N-1)
      N        =    2
      DO  7  I =    1,2
      ANS(31)  =    ANS(31)+A(N,2*N,N)
      ANS(32)  =    ANS(32)+A(N,2*N,N+1)
      ANS(33)  =    ANS(33)+A(N,2*N,N-1)
      ANS(34)  =    ANS(34)+A(N,2*N,N-1)
      ANS(35)  =    ANS(35)+A(N,2*N,2*N)
      ANS(36)  =    ANS(36)+A(N,2*N,2*N+1)
    7 ANS(37)  =    ANS(37)+A(N,2*N,2*N-1)
      N        =    2
      DO  8  I =    1,2
      ANS(38)  =    ANS(38)+A(N,2*N+1,N)
      ANS(39)  =    ANS(39)+A(N,2*N+1,N+1)
      ANS(40)  =    ANS(40)+A(N,2*N+1,N-1)
      ANS(41)  =    ANS(41)+A(N,2*N+1,2*N)
      ANS(42)  =    ANS(42)+A(N,2*N+1,2*N+1)
    8 ANS(43)  =    ANS(43)+A(N,2*N+1,2*N-1)
      N        =    2
      DO  9  I =    1,2
      ANS(44)  =    ANS(44)+A(N,2*N-1,N)
      ANS(45)  =    ANS(45)+A(N,2*N-1,N+1)
      ANS(46)  =    ANS(46)+A(N,2*N-1,N-1)
      ANS(47)  =    ANS(47)+A(N,2*N-1,2*N)
      ANS(48)  =    ANS(48)+A(N,2*N-1,2*N+1)
    9 ANS(49)  =    ANS(49)+A(N,2*N-1,2*N-1)
      IPSW     =    0
      DO  11 I =    1,50
      IF  (CNST(I).EQ.ANS(I))      GO TO   11
      IF  (IPSW.NE.0)              GO TO   10
      WRITE(6,100)
      IPSW     =    1
   10 WRITE(6,101)  I,CNST(I),ANS(I)
   11 CONTINUE
      IF (IPSW.NE.0)               GO TO   12
      WRITE(6,102)
      RETURN
   12 WRITE(6,103)
      RETURN
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-19 ) ERROR LIST,
     *                   2H *//1H0,21X,15HCONSTANT VALUE.,
     *                             12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = , 8X,I10,15X,I10)
  102 FORMAT(1H1/1H0,5X,2HOK)
  103 FORMAT(1H0,5X,5HERROR)
      END
