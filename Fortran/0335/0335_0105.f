      PROGRAM  MAIN
      REAL*8   ANS(50),CNST(50),A(10,10)
      DATA          ANS/50*0.0/,CNST/39.0,42.0,36.0,48.0,51.0,45.0,
     *    39.0,42.0,36.0,48.0,51.0,45.0,39.0,42.0,36.0,48.0,51.0,45.0,
     *    99.0,102.0,96.0,108.0,111.0,105.0,129.0,132.0,126.0,138.0,
     *    141.0,135.0,69.0,72.0,66.0,78.0,81.0,75.0,14*0.0/
      CALL     SUB12 (ANS,CNST,A)
      STOP
      END
      SUBROUTINE    SUB12 (ANS,CNST,A)
      REAL*8        ANS(50),CNST(50),A(10,10)

      X        =    0.0
      DO  1  I =    1,10
      DO  1  J =    1,10
      X        =    X+1.
    1 A(I,J)   =    X

      N        =    1
      DO  2  I =    2,4

      ANS(1)   =    ANS(1)+A(N,I)
      ANS(2)   =    ANS(2)+A(N,I+1)
      ANS(3)   =    ANS(3)+A(N,I-1)
      ANS(4)   =    ANS(4)+A(N,2*I)
      ANS(5)   =    ANS(5)+A(N,2*I+1)
      ANS(6)   =    ANS(6)+A(N,2*I-1)
      N        =    N+1
    2 CONTINUE

      N        =    0
      DO  3  I =    2,4
      ANS(7)   =    ANS(7)+A(N+1,I)
      ANS(8)   =    ANS(8)+A(N+1,I+1)
      ANS(9)   =    ANS(9)+A(N+1,I-1)
      ANS(10)  =    ANS(10)+A(N+1,2*I)
      ANS(11)  =    ANS(11)+A(N+1,2*I+1)
      ANS(12)  =    ANS(12)+A(N+1,2*I-1)
      N        =    N+1
    3 CONTINUE

      N        =    2
      DO  4  I =    2,4
      ANS(13)  =    ANS(13)+A(N-1,I)
      ANS(14)  =    ANS(14)+A(N-1,I+1)
      ANS(15)  =    ANS(15)+A(N-1,I-1)
      ANS(16)  =    ANS(16)+A(N-1,2*I)
      ANS(17)  =    ANS(17)+A(N-1,2*I+1)
      ANS(18)  =    ANS(18)+A(N-1,2*I-1)
      N        =    N+1
    4 CONTINUE

      N        =    1
      DO  5  I =    2,4
      ANS(19)  =    ANS(19)+A(2*N,I)
      ANS(20)  =    ANS(20)+A(2*N,I+1)
      ANS(21)  =    ANS(21)+A(2*N,I-1)
      ANS(22)  =    ANS(22)+A(2*N,2*I)
      ANS(23)  =    ANS(23)+A(2*N,2*I+1)
      ANS(24)  =    ANS(24)+A(2*N,2*I-1)
      N        =    N+1
    5 CONTINUE

      N        =    1
      DO  6  I =    2,4
      ANS(25)  =    ANS(25)+A(2*N+1,I)
      ANS(26)  =    ANS(26)+A(2*N+1,I+1)
      ANS(27)  =    ANS(27)+A(2*N+1,I-1)
      ANS(28)  =    ANS(28)+A(2*N+1,2*I)
      ANS(29)  =    ANS(29)+A(2*N+1,2*I+1)
      ANS(30)  =    ANS(30)+A(2*N+1,2*I-1)
      N        =    N+1
    6 CONTINUE

      N        =    1
      DO  7  I =    2,4
      ANS(31)  =    ANS(31)+A(2*N-1,I)
      ANS(32)  =    ANS(32)+A(2*N-1,I+1)
      ANS(33)  =    ANS(33)+A(2*N-1,I-1)
      ANS(34)  =    ANS(34)+A(2*N-1,2*I)
      ANS(35)  =    ANS(35)+A(2*N-1,2*I+1)
      ANS(36)  =    ANS(36)+A(2*N-1,2*I-1)
      N        =    N+1
    7 CONTINUE

      IPSW     =    0
      DO  9  I =    1,50
      IF (ANS(I).EQ.CNST(I))  GO TO 9
      IF (IPSW.NE.0)          GO TO 8
      WRITE(6,100)
      IPSW     =    1
    8 WRITE(6,101)  I,CNST(I),ANS(I)
    9 CONTINUE
      IF (IPSW.NE.0)          GO TO 10
      WRITE(6,102)
      RETURN
   10 WRITE(6,103)
      STOP
  100 FORMAT(1H1/1H0,5X,41H* TEST OF OPTIMIZATION NO-12 ERROR LIST *//
     *           1H0,21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,F10.2,15X,F10.2)
  102 FORMAT(1H1/1H0,5X,2HOK)
  103 FORMAT(1H0,5X,5HERROR)
      END
