      PROGRAM  MAIN
      INTEGER*4     ANS(50),CNST(50),A(10,10,10)
      DATA          ANS/50*0/,CNST/22,24,62,64,222,224,262,264,202,204,
     *    222,224,602,604,622,202,204,222,224,602,604,622,624,22,24,62,
     *    64,222,224,262,264,4,8,24,28,204,208,224,228,11*0/
      CALL SUB36 (ANS,CNST,A)
      STOP
      END
      SUBROUTINE SUB36 (ANS,CNST,A)
      INTEGER*4    ANS(50),CNST(50),A(10,10,10)
      M        =    1
      DO  1  I =    1,10
      DO  1  J =    1,10
      DO  1  K =    1,10
      A(I,J,K) =    M
    1 M        =    M+1
      N1       =    1
      N2       =    2
      N3       =    1
      DO  2  I =    N1,N2,N3
      ANS(1)   =    ANS(1)+A(N1,N2,N3)
      ANS(2)   =    ANS(2)+A(N1,N2,2*N3)
      ANS(3)   =    ANS(3)+A(N1,2*N2,N3)
      ANS(4)   =    ANS(4)+A(N1,2*N2,2*N3)
      ANS(5)   =    ANS(5)+A(2*N1,N2,N3)
      ANS(6)   =    ANS(6)+A(2*N1,N2,2*N3)
      ANS(7)   =    ANS(7)+A(2*N1,2*N2,N3)
      ANS(8)   =    ANS(8)+A(2*N1,2*N2,2*N3)
      ANS(9)   =    ANS(9)+A(N2,N1,N3)
      ANS(10)  =    ANS(10)+A(N2,N1,2*N3)
      ANS(11)  =    ANS(11)+A(N2,2*N1,N3)
      ANS(12)  =    ANS(12)+A(N2,2*N1,2*N3)
      ANS(13)  =    ANS(13)+A(2*N2,N1,N3)
      ANS(14)  =    ANS(14)+A(2*N2,N1,2*N3)
      ANS(15)  =    ANS(15)+A(2*N2,2*N1,N3)
      ANS(16)  =    ANS(16)+A(N2,N3,N1)
      ANS(17)  =    ANS(17)+A(N2,N3,2*N1)
      ANS(18)  =    ANS(18)+A(N2,2*N3,N1)
      ANS(19)  =    ANS(19)+A(N2,2*N3,2*N1)
      ANS(20)  =    ANS(20)+A(2*N2,N3,N1)
      ANS(21)  =    ANS(21)+A(2*N2,N3,2*N1)
      ANS(22)  =    ANS(22)+A(2*N2,2*N3,N1)
      ANS(23)  =    ANS(23)+A(2*N2,2*N3,2*N1)
      ANS(24)  =    ANS(24)+A(N3,N2,N1)
      ANS(25)  =    ANS(25)+A(N3,N2,2*N1)
      ANS(26)  =    ANS(26)+A(N3,2*N2,N1)
      ANS(27)  =    ANS(27)+A(N3,2*N2,2*N1)
      ANS(28)  =    ANS(28)+A(2*N3,N2,N1)
      ANS(29)  =    ANS(29)+A(2*N3,N2,2*N1)
      ANS(30)  =    ANS(30)+A(2*N3,2*N2,N1)
      ANS(31)  =    ANS(31)+A(2*N3,2*N2,2*N1)
      ANS(32)  =    ANS(32)+A(N3,N1,N2)
      ANS(33)  =    ANS(33)+A(N3,N1,2*N2)
      ANS(34)  =    ANS(34)+A(N3,2*N1,N2)
      ANS(35)  =    ANS(35)+A(N3,2*N1,2*N2)
      ANS(36)  =    ANS(36)+A(2*N3,N1,N2)
      ANS(37)  =    ANS(37)+A(2*N3,N1,2*N2)
      ANS(38)  =    ANS(38)+A(2*N3,2*N1,N2)
    2 ANS(39)  =    ANS(39)+A(2*N3,2*N1,2*N2)
      IPSW     =    0
      DO  4  I =    1,5
      IF (CNST(I).EQ.ANS(I))       GO TO    4
      IF (IPSW.NE.0)               GO TO    3
      WRITE(6,100)
      IPSW     =    1
    3 WRITE(6,101)  I,CNST(I),ANS(I)
    4 CONTINUE
      IF (IPSW.NE.0)     GO TO    5
      WRITE(6,102)
      RETURN
    5 WRITE(6,103)
      RETURN
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-36 ) ERROR LIST,
     *    2H *//1H0,21X,'CONSTANT VALUE.',12X,13HRESULT VALUE. )
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0,5X,2HOK)
  103 FORMAT(1H0,5X,5HERROR)
      END
