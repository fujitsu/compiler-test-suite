      PROGRAM  MAIN
      INTEGER*2     ANS(50),CNST(50),A(10,10,10)
      DATA          ANS/50*0/,CNST/23,26,63,66,14,18,44,48,104,108,404,
     *    408,223,226,263,266,214,218,244,248,122,124,422,424,203,206,
     *    223,226,212,214,242,244,162,164,424,428,603,606,623,626,612,
     *    614,642,644,6*0/
      M1 = 10
      M2 = 10
      M3 = 10
      CALL  SUB33 (ANS,CNST,A,M1,M2)
      STOP
      END
      SUBROUTINE SUB33 (ANS,CNST,A,M1,M2)
      INTEGER*2     ANS(50),CNST(50),A(10,M1,M2)
      M        =    1
      DO  1  I =    1,10
      DO  1  J =    1,10
      DO  1  K =    1,10
      A(I,J,K) =    M
    1 M        =    M+1

      N1       =    1
      N2       =    2
      I1  = 1
      I2  = 2
      DO  2  I =    I1,2
      ANS(1)   =    ANS(1)+A(N1,N2,I)
      ANS(2)   =    ANS(2)+A(N1,N2,2*I)
      ANS(3)   =    ANS(3)+A(N1,2*N2,I)
      ANS(4)   =    ANS(4)+A(N1,2*N2,2*I)
      ANS(5)   =    ANS(5)+A(N1,I,N2)
      ANS(6)   =    ANS(6)+A(N1,I,2*N2)
      ANS(7)   =    ANS(7)+A(N1,2*I,N2)
      ANS(8)   =    ANS(8)+A(N1,2*I,2*N2)
      ANS(9)   =    ANS(9)+A(I,N1,N2)
      ANS(10)  =    ANS(10)+A(I,N1,2*N2)
      ANS(11)  =    ANS(11)+A(2*I,N1,N2)
    2 ANS(12)  =    ANS(12)+A(2*I,N1,2*N2)
      DO  3  I =    1,I2
      ANS(13)  =    ANS(13)+A(2*N1,N2,I)
      ANS(14)  =    ANS(14)+A(2*N1,N2,2*I)
      ANS(15)  =    ANS(15)+A(2*N1,2*N2,I)
      ANS(16)  =    ANS(16)+A(2*N1,2*N2,2*I)
      ANS(17)  =    ANS(17)+A(2*N1,I,N2)
      ANS(18)  =    ANS(18)+A(2*N1,I,2*N2)
      ANS(19)  =    ANS(19)+A(2*N1,2*I,N2)
      ANS(20)  =    ANS(20)+A(2*N1,2*I,2*N2)
      ANS(21)  =    ANS(21)+A(I,N2,N1)
      ANS(22)  =    ANS(22)+A(I,N2,2*N1)
      ANS(23)  =    ANS(23)+A(2*I,N2,N1)
    3 ANS(24)  =    ANS(24)+A(2*I,N2,2*N1)
      DO  4  I =    1,2,I1
      ANS(25)  =    ANS(25)+A(N2,N1,I)
      ANS(26)  =    ANS(26)+A(N2,N1,2*I)
      ANS(27)  =    ANS(27)+A(N2,2*N1,I)
      ANS(28)  =    ANS(28)+A(N2,2*N1,2*I)
      ANS(29)  =    ANS(29)+A(N2,I,N1)
      ANS(30)  =    ANS(30)+A(N2,I,2*N1)
      ANS(31)  =    ANS(31)+A(N2,2*I,N1)
      ANS(32)  =    ANS(32)+A(N2,2*I,2*N1)
      ANS(33)  =    ANS(33)+A(I,2*N2,N1)
      ANS(34)  =    ANS(34)+A(I,2*N2,2*N1)
      ANS(35)  =    ANS(35)+A(2*I,2*N1,N2)
    4 ANS(36)  =    ANS(36)+A(2*I,2*N1,2*N2)
      DO  5  I =    I1,I2
      ANS(37)  =    ANS(37)+A(2*N2,N1,I)
      ANS(38)  =    ANS(38)+A(2*N2,N1,2*I)
      ANS(39)  =    ANS(39)+A(2*N2,2*N1,I)
      ANS(40)  =    ANS(40)+A(2*N2,2*N1,2*I)
      ANS(41)  =    ANS(41)+A(2*N2,I,N1)
      ANS(42)  =    ANS(42)+A(2*N2,I,2*N1)
      ANS(43)  =    ANS(43)+A(2*N2,2*I,N1)
    5 ANS(44)  =    ANS(44)+A(2*N2,2*I,2*N1)
      IPSW     =    0
      DO  7  I =    1,50
      IF (ANS(I).EQ.CNST(I))       GO TO    7
      IF (IPSW.NE.0)               GO TO    6
      WRITE(6,100)
      IPSW     =    1
    6 WRITE(6,101)  I,CNST(I),ANS(I)
    7 CONTINUE
      IF (IPSW.NE.0)               GO TO    8
      WRITE(6,102)
      RETURN
    8 WRITE(6,103)
      RETURN
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-33 ) ERROR LIST,
     *    2H *//1H0,21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0/,5X,'OK' )
  103 FORMAT(1H0,5X,'ERROR')
      END
