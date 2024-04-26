      PROGRAM  MAIN
      INTEGER*4     ANS(50),CNST(50),A(10,10,10)
      DATA          ANS/50*0/,CNST/6,12,24,84,204,804,26,206,224,32,284,
     *    806,43,106,412,46,403,406,442,6,24,6,204,24,204,12,84,12,804,
     *    84,804,172,64,1612,424,1648,1768,46,43,406,406,442,412,7*0/
      CALL SUB45 (ANS,CNST,A)
      STOP
      END
      SUBROUTINE SUB45 (ANS,CNST,A)
      INTEGER*4     ANS(50),CNST(50),A(10,10,10)
      N        =    1
      DO  1 I  =    1,10
      DO  1 J  =    1,10
      DO  1 K  =    1,10
      A(I,J,K) =    N
    1 N        =    N+1
      DO  3  I =    1,2
      N        =    1
    2 ANS(1)   =    ANS(1)+A(1,1,N)
      ANS(2)   =    ANS(2)+A(1,1,2*N)
      ANS(3)   =    ANS(3)+A(1,N,1)
      ANS(4)   =    ANS(4)+A(1,2*N,1)
      ANS(5)   =    ANS(5)+A(N,1,1)
      ANS(6)   =    ANS(6)+A(2*N,1,1)
      N        =    N+1
      IF  (N.LE.2)  GO TO    2
    3 CONTINUE
      DO  5  I =    1,2
      N        =    1
    4 ANS(7)   =    ANS(7)+A(1,N,N)
      ANS(8)   =    ANS(8)+A(N,1,N)
      ANS(9)   =    ANS(9)+A(N,N,1)
      ANS(10)  =    ANS(10)+A(1,N,2*N)
      ANS(11)  =    ANS(11)+A(N,2*N,1)
      ANS(12)  =    ANS(12)+A(2*N,1,N)
      N        =    N+1
      IF (N.LE.2)   GO TO    4
    5 CONTINUE
      N        =    1
      DO  7  I =    1,2
      ANS(13)  =    ANS(13)+A(1,2*N,N)
      ANS(14)  =    ANS(14)+A(N,1,2*N)
      ANS(15)  =    ANS(15)+A(2*N,N,1)
      ANS(16)  =    ANS(16)+A(1,2*N,2*N)
      ANS(17)  =    ANS(17)+A(2*N,1,N)
      ANS(18)  =    ANS(18)+A(2*N,1,2*N)
      ANS(19)  =    ANS(19)+A(2*N,2*N,1)
    7 N        =    N+1
      N1       =    1
      DO  9  I =    1,2
      N2       =    1
    8 ANS(20)  =    ANS(20)+A(1,N1,N2)
      ANS(21)  =    ANS(21)+A(1,N2,N1)
      ANS(22)  =    ANS(22)+A(N1,1,N2)
      ANS(23)  =    ANS(23)+A(N2,1,N1)
      ANS(24)  =    ANS(24)+A(N1,N2,1)
      ANS(25)  =    ANS(25)+A(N2,N1,1)
      ANS(26)  =    ANS(26)+A(1,N1,2*N2)
      ANS(27)  =    ANS(27)+A(1,2*N2,N1)
      ANS(28)  =    ANS(28)+A(N1,1,2*N2)
      ANS(29)  =    ANS(29)+A(2*N2,1,N1)
      ANS(30)  =    ANS(30)+A(N1,2*N2,1)
      ANS(31)  =    ANS(31)+A(2*N2,N1,1)
      N2       =    N2+1
      IF  (N2.LE.2)      GO TO  8
    9 CONTINUE
      DO  12 I =    1,2
      N1       =    1
   10 N2       =    1
   11 ANS(32)  =    ANS(32)+A(1,2*N1,N2)
      ANS(33)  =    ANS(33)+A(1,N2,2*N1)
      ANS(34)  =    ANS(34)+A(2*N1,1,N2)
      ANS(35)  =    ANS(35)+A(N2,1,2*N1)
      ANS(36)  =    ANS(36)+A(2*N1,N2,1)
      ANS(37)  =    ANS(37)+A(2*N2,2*N1,1)
      N2       =    N2+1
      IF (N2.LE.2)  GO TO 11
      N1       =    N1+1
      IF (N1.LE.2)  GO TO 10
   12 CONTINUE
      N1       =    1
      N2       =    1
      DO  14 I =    1,2
      ANS(38)  =    ANS(38)+A(1,2*N1,2*N2)
      ANS(39)  =    ANS(39)+A(1,2*N2,N1)
      ANS(40)  =    ANS(40)+A(2*N1,1,2*N2)
      ANS(41)  =    ANS(41)+A(2*N2,1,2*N1)
      ANS(42)  =    ANS(42)+A(2*N1,2*N2,1)
      ANS(43)  =    ANS(43)+A(2*N2,N1,1)
      N1       =    N1+1
  14  N2       =    N2+1
      IPSW     =    0
      DO  99 I =    1,50
      IF (ANS(I).EQ.CNST(I))  GO TO     99
      IF (IPSW.NE.0)          GO TO     98
      WRITE(6,100)
      IPSW     =    1
   98 WRITE(6,101)  I,CNST(I),ANS(I)
   99 CONTINUE
      IF (IPSW.NE.0)          GO TO     97
      WRITE(6,102)
      RETURN
   97 WRITE(6,103)
      RETURN
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-45 ) ERROR LIST,
     *    2H *//1H0,21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0,5X,2HOK)
  103 FORMAT(1H0,5X,5HERROR)
      END
