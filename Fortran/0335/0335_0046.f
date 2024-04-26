      PROGRAM  MAIN
      INTEGER*2     ANS(20),CNST(20),A(10,10,10)
      DATA          ANS/20*0/,CNST/26,32,86,92,426,432,486,492,
     *    6,12,46,52,406,412,446,452,4*0/
      M1 = 10
      M2 = 10
      CALL SUB50 (ANS,CNST,A,M1,M2)
      STOP
      END
      SUBROUTINE SUB50 (ANS,CNST,A,M1,M2)
      INTEGER*2 ANS(20),CNST(20),A(M1,M1,M2)
      N        =    0
      DO  1  I =    1,10
      DO  1  J =    1,10
      DO  1  K =    1,10
      N        =    N+1
    1 A(I,J,K) =    N
      N1       =    1
      DO  2  I =    1,2
      N2       =    1
      N3       =    1
      DO  2  J =    1,2
      ANS(1)   =    ANS(1)+A(N1,N2,N3)
      ANS(2)   =    ANS(2)+A(N1,N2,2*N3)
      ANS(3)   =    ANS(3)+A(N1,2*N2,N3)
      ANS(4)   =    ANS(4)+A(N1,2*N2,2*N3)
      ANS(5)   =    ANS(5)+A(2*N1,N2,N3)
      ANS(6)   =    ANS(6)+A(2*N1,N2,2*N3)
      ANS(7)   =    ANS(7)+A(2*N1,2*N2,N3)
      ANS(8)   =    ANS(8)+A(2*N1,2*N2,2*N3)
      N2       =    N2+1
      N3       =    N3+1
    2 CONTINUE
      N1       =    1
      N2       =    1
      DO  4  I =    1,2
      N3       =    1
      DO  4 J =     1,2
      ANS(9)   =    ANS(9)+A(N1,N2,N3)
      ANS(10)  =    ANS(10)+A(N1,N2,2*N3)
      ANS(11)  =    ANS(11)+A(N1,2*N2,N3)
      ANS(12)  =    ANS(12)+A(N1,2*N2,2*N3)
      ANS(13)  =    ANS(13)+A(2*N1,N2,N3)
      ANS(14)  =    ANS(14)+A(2*N1,N2,2*N3)
      ANS(15)  =    ANS(15)+A(2*N1,2*N2,N3)
      ANS(16)  =    ANS(16)+A(2*N1,2*N2,2*N3)
    4 N3       =    N3+1
      IPSW     =    0
      DO  6  I =    1,20
      IF (ANS(I).EQ.CNST(I))  GO TO    6
      IF (IPSW.NE.0)          GO TO    5
      WRITE(6,100)
      IPSW     =    1
    5 WRITE(6,101)  I,CNST(I),ANS(I)
    6 CONTINUE
      IF (IPSW.NE.0)     GO TO         7
      WRITE(6,102)
      RETURN
    7 WRITE(6,103)
      RETURN
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-50 ) ERROR LIST,
     *    2H *//1H0,21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0,5X,2HOK)
  103 FORMAT(1H0,5X,5HERROR)
      END
