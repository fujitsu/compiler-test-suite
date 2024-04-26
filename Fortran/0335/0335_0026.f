      PROGRAM  MAIN
      INTEGER*4     ANS(31),CNST(31),A(10,10,10)
      DATA          ANS/31*0/,CNST/3,6,23,26,203,0,
     *    206,223,226,12,14,42,
     *    44,212,214,242,244,102,104,122,124,402,404,422,424,3,26,212,
     *    244,122,404/
      M1 = 10
      M2 = 10
      M3 = 10
      M4 = 31
      CALL SUB28 (ANS,CNST,A,M1,M2,M3,M4)
      STOP
      END
      SUBROUTINE SUB28 (ANS,CNST,A,M1,M2,M3,M4)
      INTEGER*4     ANS(31),CNST(M4),A(M1,M2,M3)
      N        =    1
      DO  1  I =    1,10
      DO  1  J =    1,10
      DO  1  K =    1,10
      A(I,J,K) =    N
    1 N        =    N+1
      N        =    1
      DO  2  I =    1,2
      ANS(1)   =    ANS(1)+A(N,N,I)
      ANS(2)   =    ANS(2)+A(N,N,2*I)
      ANS(3)   =    ANS(3)+A(N,2*N,I)
      ANS(4)   =    ANS(4)+A(N,2*N,2*I)
      ANS(5)   =    ANS(5)+A(2*N,N,I)
      ANS(7)   =    ANS(7)+A(2*N,N,2*I)
      ANS(8)   =    ANS(8)+A(2*N,2*N,I)
    2 ANS(9)   =    ANS(9)+A(2*N,2*N,2*I)
      DO  3  I =    1,2
    3 ANS(10)  =    ANS(10)+A(N,I,N)
      DO  4  I =    1,2
    4 ANS(11)  =    ANS(11)+A(N,I,2*N)
      DO  5  I =    1,2
    5 ANS(12)  =    ANS(12)+A(N,2*I,N)
      DO  6  I =    1,2
    6 ANS(13)  =    ANS(13)+A(N,2*I,2*N)
      DO  7  I =    1,2
    7 ANS(14)  =    ANS(14)+A(2*N,I,N)
      DO  8  I =    1,2
    8 ANS(15)  =    ANS(15)+A(2*N,I,2*N)
      DO  9  I =    1,2
    9 ANS(16)  =    ANS(16)+A(2*N,2*I,N)
      DO  10 I =    1,2
   10 ANS(17)  =    ANS(17)+A(2*N,2*I,2*N)
      DO  11 I =    1,2
      ANS(18)  =    ANS(18)+A(I,N,N)
      ANS(19)  =    ANS(19)+A(I,N,2*N)
      ANS(20)  =    ANS(20)+A(I,2*N,N)
      ANS(21)  =    ANS(21)+A(I,2*N,2*N)
      ANS(22)  =    ANS(22)+A(2*I,N,N)
      ANS(23)  =    ANS(23)+A(2*I,N,2*N)
      ANS(24)  =    ANS(24)+A(2*I,2*N,N)
   11 ANS(25)  =    ANS(25)+A(2*I,2*N,2*N)
      DO  12 I =    1,2
      ANS(26)  =    ANS(26)+A(N,N,I)
      ANS(27)  =    ANS(27)+A(N,2*N,2*I)
      ANS(28)  =    ANS(28)+A(2*N,I,N)
      ANS(29)  =    ANS(29)+A(2*N,2*I,2*N)
      ANS(30)  =    ANS(30)+A(I,2*N,N)
   12 ANS(31)  =    ANS(31)+A(2*I,N,2*N)
      IPSW     =    0
      DO  14 I =    1,31
      IF (CNST(I).EQ.ANS(I))  GO TO     14
      IF (IPSW.NE.0)          GO TO     13
      WRITE(6,100)
      IPSW     =    1
   13 WRITE(6,101)  I,CNST(I),ANS(I)
   14 CONTINUE
      IF (IPSW.NE.0)          GO TO     15
      WRITE(6,102)
      STOP
   15 WRITE(6,103)
      STOP
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-28 ) ERROR LIST,
     *    2H *//1H0,21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  102 FORMAT(1H1/1H0,5X,2HOK)
  103 FORMAT(1H0,5X,5HERROR)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
      END
