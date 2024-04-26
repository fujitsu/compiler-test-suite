      PROGRAM  MAIN
      INTEGER*2     ANS(50),CNST(50),A(10,10,10)
      DATA          ANS/50*0/,CNST/22,62,4,8,4,8,24,28,222,262,622,202,
     *    204,208,202,204,602,604,4,22,8,62,8,602,222,25*0/
      CALL     SUB34  (ANS,CNST,A)
      STOP
      END
      SUBROUTINE    SUB34 (ANS,CNST,A)
      INTEGER*2     ANS(50),CNST(50),A(10,10,10)
      M        =    1
      DO  1  I =    1,10
      DO  1  J =    1,10
      DO  1  K =    1,10
      A(I,J,K) =    M
    1 M        =    M+1
      N1       =    1
      N2       =    2
      DO  2  I =    1,2
      ANS(1)   =    ANS(1)+A(N1,N2,1)
      ANS(2)   =    ANS(2)+A(N1,2*N2,1)
      ANS(3)   =    ANS(3)+A(N1,1,N2)
      ANS(4)   =    ANS(4)+A(N1,1,2*N2)
      ANS(5)   =    ANS(5)+A(1,N1,N2)
      ANS(6)   =    ANS(6)+A(1,N1,2*N2)
      ANS(7)   =    ANS(7)+A(1,2*N1,N2)
    2 ANS(8)   =    ANS(8)+A(1,2*N1,2*N2)
      DO  3  I =    1,2
      ANS(9)   =    ANS(9)+A(2*N1,N2,1)
      ANS(10)  =    ANS(10)+A(2*N1,2*N2,1)
      ANS(11)  =    ANS(11)+A(2*N2,2*N1,1)
    3 ANS(12)  =    ANS(12)+A(N2,N1,1)
      DO  4  I =    1,2
      ANS(13)  =    ANS(13)+A(2*N1,1,N2)
      ANS(14)  =    ANS(14)+A(2*N1,1,2*N2)
      ANS(15)  =    ANS(15)+A(N2,1,N1)
      ANS(16)  =    ANS(16)+A(N2,1,2*N1)
      ANS(17)  =    ANS(17)+A(2*N2,1,N1)
    4 ANS(18)  =    ANS(18)+A(2*N2,1,2*N1)
      DO  5  I =    1,2
      ANS(19)  =    ANS(19)+A(1,N1,N2)
      ANS(20)  =    ANS(20)+A(1,N2,N1)
      ANS(21)  =    ANS(21)+A(1,N1,2*N2)
      ANS(22)  =    ANS(22)+A(1,2*N2,N1)
      ANS(23)  =    ANS(23)+A(N1,1,2*N2)
      ANS(24)  =    ANS(24)+A(2*N2,N1,1)
    5 ANS(25)  =    ANS(25)+A(N2,2*N1,1)
      IPSW     =    0
      DO  7  I =    1,50
      IF (CNST(I).EQ.ANS(I))       GO TO    7
      IF (IPSW.NE.0)               GO TO    6
      WRITE(6,100)
      IPSW     =    1
    6 WRITE(6,101) I,CNST(I),ANS(I)
    7 CONTINUE
      IF (IPSW.NE.0)               GO TO    8
      WRITE(6,102)
      RETURN
    8 WRITE(6,103)
      RETURN
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-34 ) ERROR LIST,
     *    2H *//1H0,21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0,5X,2HOK)
  103 FORMAT(1H0,5X,5HERROR)
      END
