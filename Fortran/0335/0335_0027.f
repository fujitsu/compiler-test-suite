      PROGRAM  MAIN
      INTEGER*2     ANS(50),CNST(50),A(10,10,10)
      DATA          ANS/50*0/,CNST/112,114,142,144,412,414,442,444,
     *    103,106,123,126,403,406,423,426,13,16,43,46,213,216,243,
     *    246,26*0/
      M1 = 10
      CALL    SUB29 (ANS,CNST,A,M1)
      STOP
      END
      SUBROUTINE SUB29 (ANS,CNST,A,M1)
      INTEGER*2     ANS(50),CNST(50),A(M1,M1,M1)

      M        =    1
      DO  1  I =    1,10
      DO  1  J =    1,10
      DO  1  K =    1,10
      A(I,J,K) =    M
    1 M        =    M+1

      N        =    1
      DO  2  I =    1,2
      ANS(1)   =    ANS(1)+A(I,I,N)
      ANS(2)   =    ANS(2)+A(I,I,2*N)
      ANS(3)   =    ANS(3)+A(I,2*I,N)
      ANS(4)   =    ANS(4)+A(I,2*I,2*N)
      ANS(5)   =    ANS(5)+A(2*I,I,N)
      ANS(6)   =    ANS(6)+A(2*I,I,2*N)
      ANS(7)   =    ANS(7)+A(2*I,2*I,N)
    2 ANS(8)   =    ANS(8)+A(2*I,2*I,2*N)
      DO  3  I =    1,2
      ANS(9)   =    A(I,N,I)+ANS(9)
      ANS(10)  =    A(I,N,2*I)+ANS(10)
      ANS(11)  =    A(I,2*N,I)+ANS(11)
      ANS(12)  =    A(I,2*N,2*I)+ANS(12)
      ANS(13)  =    A(2*I,N,I)+ANS(13)
      ANS(14)  =    A(2*I,N,2*I)+ANS(14)
      ANS(15)  =    A(2*I,2*N,I)+ANS(15)
    3 ANS(16)  =    A(2*I,2*N,2*I)+ANS(16)
      DO  4  I =    1,2
      ANS(17)  =    ANS(17)+A(N,I,I)
      ANS(18)  =    ANS(18)+A(N,I,2*I)
      ANS(19)  =    ANS(19)+A(N,2*I,I)
      ANS(20)  =    ANS(20)+A(N,2*I,2*I)
      ANS(21)  =    ANS(21)+A(2*N,I,I)
      ANS(22)  =    ANS(22)+A(2*N,I,2*I)
      ANS(23)  =    ANS(23)+A(2*N,2*I,I)
    4 ANS(24)  =    ANS(24)+A(2*N,2*I,2*I)
      IPSW     =    0
      DO  6 I  =    1,50
      IF (CNST(I).EQ.ANS(I))  GO TO     6
      IF (IPSW.NE.0)          GO TO     5
      WRITE(6,100)
      IPSW     =    1
    5 WRITE(6,101)  I,CNST(I),ANS(I)
    6 CONTINUE
      IF (IPSW.NE.0)          GO TO     7
      WRITE(6,102)
      RETURN
    7 WRITE(6,103)
      RETURN
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-29 ) ERROR LIST,
     *    2H *//1H0,21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0,5X,2HOK)
  103 FORMAT(1H0,5X,5HERROR)
      END
