      PROGRAM  MAIN
      INTEGER*4     ANS(50),CNST(50),A(10,10),B(10,10),C(10,10)
      DATA          ANS/50*0/,CNST/52,118,144,204,3,26,32,86,92,26,32,
     *    86,92,26,32,86,92,26,32,86,92,6,12,28,88,6,3,23*0/
      M1 = 10
      M2 = 10
      M3 = 10
      M4 = 50
      CALL     SUB38 (ANS,CNST,A,B,C,M1,M2,M3,M4)
      STOP
      END
      SUBROUTINE  SUB38 (ANS,CNST,A,B,C,M1,M2,M3,M4)
      INTEGER*4  ANS(M4),CNST(50),A(M2,M1),B(M2,M3),C(M1,M2)
      N        =    1
      DO  1  I =    1,10
      DO  1  J =    1,10
      A(I,J)   =    N
    1 N        =    N+1
      DO  2  I =    1,10
      DO  2  J =    1,10
      B(I,J)   =    A(I,J)
    2 C(I,J)   =    A(J,I)
      DO  4  I =    1,2
      DO  3  J =    1,2
      ANS(1)   =    ANS(1)+A(I,J)+B(I,J)
      ANS(2)   =    ANS(2)+A(I,2*J)+B(2*I,J)
      ANS(3)   =    ANS(3)+A(2*I,J)+B(I,2*J)+C(I,J)
    3 ANS(4)   =    ANS(4)+A(2*I,J)+B(J,I)+C(2*J,2*I)
      ANS(5)   =    ANS(5)+I
    4 CONTINUE
      N1       =    1
      DO  7  I =    1,2
      N2       =    1
      DO  5  J =    1,2
      ANS(6)   =    ANS(6)+A(N1,N2)
      ANS(7)   =    ANS(7)+A(N1,2*N2)
      ANS(8)   =    ANS(8)+A(2*N1,N2)
      ANS(9)   =    ANS(9)+A(2*N1,2*N2)
      ANS(10)  =    ANS(10)+A(N2,N1)
      ANS(11)  =    ANS(11)+A(N2,2*N1)
      ANS(12)  =    ANS(12)+A(2*N2,N1)
      ANS(13)  =    ANS(13)+A(2*N2,2*N1)
    5 N2       =    N2+1
      N2       =    1
    6 ANS(14)  =    ANS(14)+A(N1,N2)
      ANS(15)  =    ANS(15)+A(N1,2*N2)
      ANS(16)  =    ANS(16)+A(2*N1,N2)
      ANS(17)  =    ANS(17)+A(2*N1,2*N2)
      ANS(18)  =    ANS(18)+A(N2,N1)
      ANS(19)  =    ANS(19)+A(N2,2*N1)
      ANS(20)  =    ANS(20)+A(2*N2,N1)
      ANS(21)  =    ANS(21)+A(2*N2,2*N1)
      N2       =    N2+1
      IF (N2.LE.2)  GO TO     6
      N1       =    N1+1
    7 CONTINUE
      DO  9  I =    1,2
      N        =    1
      DO  8  J =    1,2
      ANS(22)  =    ANS(22)+A(1,N)
      ANS(23)  =    ANS(23)+A(1,2*N)
      ANS(24)  =    ANS(24)+A(N,2)
      ANS(25)  =    ANS(25)+A(2*N,2)
      ANS(26)  =    ANS(26)+2*I-J
    8 N        =    N+1
    9 ANS(27)  =    ANS(27)+I
      IPSW     =    0
      DO  1000 I =  1,50
      IF (ANS(I).EQ.CNST(I))  GO TO 1000
      IF (IPSW.NE.0)          GO TO  999
      WRITE(6,100)
      IPSW     =    1
  999 WRITE(6,101)  I,CNST(I),ANS(I)
 1000 CONTINUE
      IF (IPSW.NE.0)     GO TO     1001
      WRITE(6,102)
      RETURN
 1001 WRITE(6,103)
      RETURN
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-38 ) ERROR LIST,
     *    2H *//1H0,15X,6X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0,5X,2HOK)
  103 FORMAT(1H0,5X,5HERROR)
      END
