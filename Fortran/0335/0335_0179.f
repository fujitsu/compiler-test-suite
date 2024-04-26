      PROGRAM  MAIN
      INTEGER*4     CNST(50),ANS(50),A(10,10,10)
      DATA          ANS/50*0/,CNST/24,28,64,68,224,228,264,268,222,224,
     *    262,264,622,624,662,664,204,208,224,228,604,608,624,628,26*0/
      CALL     SUB35 (CNST,ANS,A)
      STOP
      END
      SUBROUTINE    SUB35 (CNST,ANS,A)
      INTEGER*4     CNST(50),ANS(50),A(10,10,10)

      N2       =    1
      DO  1  I =    1,10
      DO  1  J =    1,10
      DO  1  K =    1,10
      A(I,J,K) =    N2
    1 N2       =    N2+1
      N1       =    1
      N2       =    2
      I1  = 1
      I2  = 2
      DO  2  I =    I1,I2,I1
      ANS(1)   =    ANS(1)+A(N1,N2,N2)
      ANS(2)   =    ANS(2)+A(N1,N2,2*N2)
      ANS(3)   =    ANS(3)+A(N1,2*N2,N2)
      ANS(4)   =    ANS(4)+A(N1,2*N2,2*N2)
      ANS(5)   =    ANS(5)+A(2*N1,N2,N2)
      ANS(6)   =    ANS(6)+A(2*N1,N2,2*N2)
      ANS(7)   =    ANS(7)+A(2*N1,2*N2,N2)
      ANS(8)   =    ANS(8)+A(2*N1,2*N2,2*N2)
      ANS(9)   =    ANS(9)+A(N2,N2,N1)
      ANS(10)  =    ANS(10)+A(N2,N2,2*N1)
      ANS(11)  =    ANS(11)+A(N2,2*N2,N1)
      ANS(12)  =    ANS(12)+A(N2,2*N2,2*N1)
      ANS(13)  =    ANS(13)+A(2*N2,N2,N1)
      ANS(14)  =    ANS(14)+A(2*N2,N2,2*N1)
      ANS(15)  =    ANS(15)+A(2*N2,2*N2,N1)
      ANS(16)  =    ANS(16)+A(2*N2,2*N2,2*N1)
      ANS(17)  =    ANS(17)+A(N2,N1,N2)
      ANS(18)  =    ANS(18)+A(N2,N1,2*N2)
      ANS(19)  =    ANS(19)+A(N2,2*N1,N2)
      ANS(20)  =    ANS(20)+A(N2,2*N1,2*N2)
      ANS(21)  =    ANS(21)+A(2*N2,N1,N2)
      ANS(22)  =    ANS(22)+A(2*N2,N1,2*N2)
      ANS(23)  =    ANS(23)+A(2*N2,2*N1,N2)
    2 ANS(24)  =    ANS(24)+A(2*N2,2*N1,2*N2)
      IPSW     =    0
      DO  4  I =    1,50
      IF (ANS(I).EQ.CNST(I))       GO TO    4
      IF (IPSW.NE.0)               GO TO    3
      WRITE(6,100)
      IPSW     =    1
    3 WRITE(6,101)  I,CNST(I),ANS(I)
    4 CONTINUE
      IF (IPSW.NE.0)               GO TO    5
      WRITE(6,102)
      RETURN
    5 WRITE(6,103)
      RETURN
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-35 ) ERROR LIST,
     *    2H *//1H0,21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0/,5X,'OK' )
  103 FORMAT(1H0,5X,'ERROR')
      END
