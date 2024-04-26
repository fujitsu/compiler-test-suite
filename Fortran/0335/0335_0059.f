      PROGRAM  MAIN
      INTEGER*4     ANS(50)
      REAL*4        CNST(50)
      INTEGER*4     A(10,10)
      DATA          ANS/50*0/,CNST/69.0,99.0,39.0,159.0,189.0,129.0,
     *    72.0,102.0,42.0,162.0,192.0,132.0,66.0,96.0,36.0,156.0,186.0,
     *    126.0,78.0,108.0,48.0,168.0,198.0,138.0,81.0,111.0,51.0,171.0,
     *    201.0,141.0,75.0,105.0,45.0,165.0,195.0,135.0,14*0.0/
      M1 = 10
      M2 = 10
      CALL SUB13 (CNST,ANS,A,M1,M2)
      STOP
      END
      SUBROUTINE SUB13 (CNST,ANS,A,M1,M2)
      REAL*4        CNST(50)
      INTEGER*4     A(M1,M2),ANS(50)

      N        =    1.0
      DO  1  I =    1,10
      DO  1  J =    1,10
      A(I,J)   =    N
    1 N        =    N+1.0

      N        =    2.0
      I1  = 1
      I3  = 3
      DO  2  I =    I1,3
      ANS(1)   =    ANS(1)+A(N,N)
      ANS(2)   =    ANS(2)+A(N+1,N)
      ANS(3)   =    ANS(3)+A(N-1,N)
      ANS(4)   =    ANS(4)+A(2*N,N)
      ANS(5)   =    ANS(5)+A(2*N+1,N)
      ANS(6)   =    ANS(6)+A(2*N-1,N)
      N        =    N+1.0
    2 CONTINUE
      N        =    2.0
      DO  3  I =    1,I3
      ANS(7)   =    ANS(7)+A(N,N+1)
      ANS(8)   =    ANS(8)+A(N+1,N+1)
      ANS(9)   =    ANS(9)+A(N-1,N+1)
      ANS(10)  =    ANS(10)+A(2*N,N+1)
      ANS(11)  =    ANS(11)+A(2*N+1,N+1)
      ANS(12)  =    ANS(12)+A(2*N-1,N+1)
      N        =    N+1.0
    3 CONTINUE
      N        =    2.0
      DO  4  I =    1,3,I1
      ANS(13)  =    ANS(13)+A(N,N-1)
      ANS(14)  =    ANS(14)+A(N+1,N-1)
      ANS(15)  =    ANS(15)+A(N-1,N-1)
      ANS(16)  =    ANS(16)+A(2*N,N-1)
      ANS(17)  =    ANS(17)+A(2*N+1,N-1)
      ANS(18)  =    ANS(18)+A(2*N-1,N-1)
      N        =    N+1.0
    4 CONTINUE
      N        =    2.0
      DO  5  I =    I1,I3
      ANS(19)  =    ANS(19)+A(N,2*N)
      ANS(20)  =    ANS(20)+A(N+1,2*N)
      ANS(21)  =    ANS(21)+A(N-1,2*N)
      ANS(22)  =    ANS(22)+A(2*N,2*N)
      ANS(23)  =    ANS(23)+A(2*N+1,2*N)
      ANS(24)  =    ANS(24)+A(2*N-1,2*N)
      N        =    N+1.0
    5 CONTINUE
      N        =    2.0
      DO  6  I =    I1,3,I1
      ANS(25)  =    ANS(25)+A(N,2*N+1)
      ANS(26)  =    ANS(26)+A(N+1,2*N+1)
      ANS(27)  =    ANS(27)+A(N-1,2*N+1)
      ANS(28)  =    ANS(28)+A(2*N,2*N+1)
      ANS(29)  =    ANS(29)+A(2*N+1,2*N+1)
      ANS(30)  =    ANS(30)+A(2*N-1,2*N+1)
      N        =    N+1.0
    6 CONTINUE
      N        =    2.0
      DO  7  I =    1,I3,I1
      ANS(31)  =    ANS(31)+A(N,2*N-1)
      ANS(32)  =    ANS(32)+A(N+1,2*N-1)
      ANS(33)  =    ANS(33)+A(N-1,2*N-1)
      ANS(34)  =    ANS(34)+A(2*N,2*N-1)
      ANS(35)  =    ANS(35)+A(2*N+1,2*N-1)
      ANS(36)  =    ANS(36)+A(2*N-1,2*N-1)
      N        =    N+1.0
    7 CONTINUE
      IPSW     =    0
      DO  9  I =    1,50
      IF(ANS(I).EQ.CNST(I))   GO TO  9
      IF(IPSW.NE.0)           GO TO  8
      WRITE(6,100)
      IPSW     =    1
    8 WRITE(6,101)  I,CNST(I),ANS(I)
    9 CONTINUE
      IF (IPSW.NE.0)     GO TO  10
      WRITE(6,102)
      RETURN
   10 WRITE(6,103)
      STOP
  100 FORMAT(1H1/1H0,43H* TEST OF OPTIMIZATION ( NO-13 ) ERROR LIST,
     *                2H *//1H0,21X,15HCONSTANT VALUE.,12X,
     *               13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,2X,E16.8,15X,I10)
  102 FORMAT(1H1/1H0/,5X,'OK' )
  103 FORMAT(1H0,5X,'ERROR')
      END
