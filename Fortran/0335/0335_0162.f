      PROGRAM  MAIN
      INTEGER*2     ANS(50),CNST(50),A(10,10,10)
      DATA          ANS/50*0/,CNST/3,6,9,3,12,15,9,33,63,3,93,123,63,
     *    36,39,33,42,45,39,66,69,63,72,75,69,96,99,93,102,105,99,126,
     *    129,123,132,135,129,66,69,63,72,75,69,7*0/
      CALL     SUB18 (ANS,CNST,A)
      STOP
      END
      SUBROUTINE    SUB18 (ANS,CNST,A)
      INTEGER*2     ANS(50),CNST(50),A(10,10,10)

      N        =    1
      DO  1  I =    1,10
      DO  1  J =    1,10
      DO  1  K =    1,10
      A(I,J,K) =    N
    1 N        =    N+1

      N        =    2
      I1  = 1
      I3  = 3
      DO  2  I =    I1,3
      ANS(1)   =    ANS(1)+A(1,1,1)
      ANS(2)   =    ANS(2)+A(1,1,N)
      ANS(3)   =    ANS(3)+A(1,1,N+1)
      ANS(4)   =    ANS(4)+A(1,1,N-1)
      ANS(5)   =    ANS(5)+A(1,1,2*N)
      ANS(6)   =    ANS(6)+A(1,1,2*N+1)
    2 ANS(7)   =    ANS(7)+A(1,1,2*N-1)
      N        =    2
      DO  3  I =    1,I3
      ANS(8)   =    ANS(8)+A(1,N,1)
      ANS(9)   =    ANS(9)+A(1,N+1,1)
      ANS(10)  =    ANS(10)+A(1,N-1,1)
      ANS(11)  =    ANS(11)+A(1,2*N,1)
      ANS(12)  =    ANS(12)+A(1,2*N+1,1)
    3 ANS(13)  =    ANS(13)+A(1,2*N-1,1)
      N        =    2
      DO  4  I =    1,3,I1
      ANS(14)  =    ANS(14)+A(1,N,N)
      ANS(15)  =    ANS(15)+A(1,N,N+1)
      ANS(16)  =    ANS(16)+A(1,N,N-1)
      ANS(17)  =    ANS(17)+A(1,N,2*N)
      ANS(18)  =    ANS(18)+A(1,N,2*N+1)
    4 ANS(19)  =    ANS(19)+A(1,N,2*N-1)

      N        =    2
      DO  5  I =    I1,I3
      ANS(20)  =    ANS(20)+A(1,N+1,N)
      ANS(21)  =    ANS(21)+A(1,N+1,N+1)
      ANS(22)  =    ANS(22)+A(1,N+1,N-1)
      ANS(23)  =    ANS(23)+A(1,N+1,2*N)
      ANS(24)  =    ANS(24)+A(1,N+1,2*N+1)
    5 ANS(25)  =    ANS(25)+A(1,N+1,2*N-1)
      N        =    2
      DO  6  I =    I1,3,I1
      ANS(26)  =    ANS(26)+A(1,2*N,N)
      ANS(27)  =    ANS(27)+A(1,2*N,N+1)
      ANS(28)  =    ANS(28)+A(1,2*N,N-1)
      ANS(29)  =    ANS(29)+A(1,2*N,2*N )
      ANS(30)  =    ANS(30)+A(1,2*N,2*N+1)
    6 ANS(31)  =    ANS(31)+A(1,2*N,2*N-1)
      N        =    2
      DO  7  I =    1,I3,I1
      ANS(32)  =    ANS(32)+A(1,2*N+1,N)
      ANS(33)  =    ANS(33)+A(1,2*N+1,N+1)
      ANS(34)  =    ANS(34)+A(1,2*N+1,N-1)
      ANS(35)  =    ANS(35)+A(1,2*N+1,2*N)
      ANS(36)  =    ANS(36)+A(1,2*N+1,2*N+1)
    7 ANS(37)  =    ANS(37)+A(1,2*N+1,2*N-1)
      N        =    2
      DO  8  I =    I1,I3,I1
      ANS(38)  =    ANS(38)+A(1,2*N-1,N)
      ANS(39)  =    ANS(39)+A(1,2*N-1,N+1)
      ANS(40)  =    ANS(40)+A(1,2*N-1,N-1)
      ANS(41)  =    ANS(41)+A(1,2*N-1,2*N)
      ANS(42)  =    ANS(42)+A(1,2*N-1,2*N+1)
    8 ANS(43)  =    ANS(43)+A(1,2*N-1,2*N-1)
      IPSW     =    0
      DO  11 I =    1,50
      IF (CNST(I).EQ.ANS(I))  GO TO   11
      IF (IPSW.NE.0)          GO TO   10
      WRITE(6,100)
      IPSW     =    1
   10 WRITE(6,101)  I,CNST(I),ANS(I)
   11 CONTINUE
      IF (IPSW.NE.0)     GO TO 12
      WRITE(6,102)
      RETURN
   12 WRITE(6,103)
      RETURN
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-18 ) ERROR LIST,
     *                   2H *//1H0,21X,15HCONSTANT VALUE.,
     *                             12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0/,5X,'OK' )
  103 FORMAT(1H0,5X,'ERROR')
      END
