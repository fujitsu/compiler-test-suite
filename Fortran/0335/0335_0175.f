      PROGRAM  MAIN
      REAL*8   ANS(50),CNST(50),A(10,10,10)
      DATA     ANS/50*0.0/,CNST/3.0,6.0,23.0,26.0,12.0,14.0,42.0,44.0,
     *    3.0,6.0,203.0,206.0,102.0,104.0,402.0,404.0,12.0,42.0,212.0,
     *    242.0,102.0,122.0,402.0,422.0,26*0.0/
      CALL     SUB31 (ANS,CNST,A)
      STOP
      END
      SUBROUTINE    SUB31 (ANS,CNST,A)
      REAL*8   ANS(50),CNST(50),A(10,10,10)
      K        =    1
      DO  1  I =    1,10
      DO  1  J =    1,10
      DO  1  N =    1,10
      A(I,J,N) =    K
    1 K        =    K+1
      N        =    1
      I1  = 1
      I2  = 2
      DO  2  I =    I1,2
      ANS(1)   =    ANS(1)+A(1,N,I)
      ANS(2)   =    ANS(2)+A(1,N,2*I)
      ANS(3)   =    ANS(3)+A(1,2*N,I)
    2 ANS(4)   =    ANS(4)+A(1,2*N,2*I)
      DO  3  I =    1,I2
      ANS(5)   =    ANS(5)+A(1,I,N)
      ANS(6)   =    ANS(6)+A(1,I,2*N)
      ANS(7)   =    ANS(7)+A(1,2*I,N)
    3 ANS(8)   =    ANS(8)+A(1,2*I,2*N)
      DO  4  I =    1,2,I1
      ANS(9)   =    ANS(9)+A(N,1,I)
      ANS(10)  =    ANS(10)+A(N,1,2*I)
      ANS(11)  =    ANS(11)+A(2*N,1,I)
    4 ANS(12)  =    ANS(12)+A(2*N,1,2*I)
      DO  5  I =    I1,I2
      ANS(13)  =    ANS(13)+A(I,1,N)
      ANS(14)  =    ANS(14)+A(I,1,2*N)
      ANS(15)  =    ANS(15)+A(2*I,1,N)
    5 ANS(16)  =    ANS(16)+A(2*I,1,2*N)
      DO  6  I =    I1,2,I1
      ANS(17)  =    ANS(17)+A(N,I,1)
      ANS(18)  =    ANS(18)+A(N,2*I,1)
      ANS(19)  =    ANS(19)+A(2*N,I,1)
    6 ANS(20)  =    ANS(20)+A(2*N,2*I,1)
      DO  7  I =    1,I2,I1
      ANS(21)  =    ANS(21)+A(I,N,1)
      ANS(22)  =    ANS(22)+A(I,2*N,1)
      ANS(23)  =    ANS(23)+A(2*I,N,1)
    7 ANS(24)  =    ANS(24)+A(2*I,2*N,1)
      IPSW     =0
      DO  9  I =    1,50
      IF (CNST(I).EQ.ANS(I))       GO TO    9
      IF (IPSW.NE.0)               GO TO    8
      WRITE(6,100)
      IPSW     =    1
    8 WRITE(6,101) I,CNST(I),ANS(I)
    9 CONTINUE
      IF (IPSW.NE.0)               GO TO   10
      WRITE(6,102)
      RETURN
   10 WRITE(6,103)
      RETURN
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-31 ) ERROR LIST,
     *    2H *//1H0,21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,F10.2,15X,F10.2)
  102 FORMAT(1H1/1H0/,5X,'OK' )
  103 FORMAT(1H0,5X,'ERROR')
      END
