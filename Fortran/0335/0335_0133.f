      PROGRAM  MAIN
      INTEGER*4     ANS(50),CNST(50),A(10,10)
      DATA          ANS/50*0/,CNST/4,8,4,44,6,12,24,84,6,12,24,84,
     *    26,32,86,92,26,32,86,92,4,8,44,48,6,12,46,52,24,28,84,88,
     *    6,12,24,28,84,88,12*0/
      CALL SUB41 (ANS,CNST,A)
      STOP
      END
      SUBROUTINE SUB41 (ANS,CNST,A)
      INTEGER*4     ANS(50),CNST(50),A(10,10)

      N        =    1
      DO  1  I =    1,10
      DO  1  J =    1,10
      A(I,J)   =    N
    1 N        =    N+1
      N        =    1
      DO  2  I =    1,2
      DO  2  J =    1,2
      ANS(1)   =    ANS(1)+A(1,N)
      ANS(2)   =    ANS(2)+A(1,2*N)
      ANS(3)   =    ANS(3)+A(N,1)
    2 ANS(4)   =    ANS(4)+A(2*N,1)
      DO  3  I =    1,2
      DO  3  J =    1,2
      ANS(5)   =    ANS(5)+A(1,J)
      ANS(6)   =    ANS(6)+A(1,2*J)
      ANS(7)   =    ANS(7)+A(J,1)
      ANS(8)   =    ANS(8)+A(2*J,1)
      ANS(9)   =    ANS(9)+A(1,I)
      ANS(10)  =    ANS(10)+A(1,2*I)
      ANS(11)  =    ANS(11)+A(I,1)
    3 ANS(12)  =    ANS(12)+A(2*I,1)
      DO  4  I =    1,2
      DO  4  J =    1,2
      ANS(13)  =    ANS(13)+A(I,J)
      ANS(14)  =    ANS(14)+A(I,2*J)
      ANS(15)  =    ANS(15)+A(2*I,J)
      ANS(16)  =    ANS(16)+A(2*I,2*J)
      ANS(17)  =    ANS(17)+A(J,I)
      ANS(18)  =    ANS(18)+A(J,2*I)
      ANS(19)  =    ANS(19)+A(2*J,I)
    4 ANS(20) =     ANS(20)+A(2*J,2*I)
      N1       =    1
      N2       =    1
      DO  5  I =    1,2
      DO  5  J =    1,2
      ANS(21)  =    ANS(21)+A(N1,N2)
      ANS(22)  =    ANS(22)+A(N1,2*N2)
      ANS(23)  =    ANS(23)+A(2*N1,N2)
      ANS(24)  =    ANS(24)+A(2*N1,2*N2)
      ANS(25)  =    ANS(25)+A(N1,J)
      ANS(26)  =    ANS(26)+A(N1,2*J)
      ANS(27)  =    ANS(27)+A(2*N1,J)
      ANS(28)  =    ANS(28)+A(2*N1,2*J)
      ANS(29)  =    ANS(29)+A(J ,N1)
      ANS(30)  =    ANS(30)+A(J ,2*N1)
      ANS(31)  =    ANS(31)+A(2*J ,N1)
      ANS(32)  =    ANS(32)+A(2*J ,2*N1)
      ANS(33)  =    ANS(33)+A(N1,I)
      ANS(34)  =    ANS(34)+A(N1,2*I)
      ANS(35)  =    ANS(35)+A(I,N1)
      ANS(36)  =    ANS(36)+A(I,2*N1)
      ANS(37)  =    ANS(37)+A(2*I,N1)
    5 ANS(38)  =    ANS(38)+A(2*I,2*N1)
      IPSW     =    0
      DO  7  I =    1,50
      IF (ANS(I).EQ.CNST(I))  GO TO    7
      IF (IPSW.NE.0)          GO TO    6
      WRITE(6,100)
      IPSW     =    1
    6 WRITE(6,101)  I,CNST(I),ANS(I)
    7 CONTINUE
      IF (IPSW.NE.0)          GO TO    8
      WRITE(6,102)
      RETURN
    8 WRITE(6,103)
      RETURN
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-41 ) ERROR LIST,
     *    2H *//1H0,21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0,5X,2HOK)
  103 FORMAT(1H0,5X,5HERROR)
      END
