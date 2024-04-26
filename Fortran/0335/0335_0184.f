      PROGRAM  MAIN
      INTEGER*4     ANS(50),CNST(50),A(10,10)
      DATA     ANS/50*0/,CNST/4,8,44,48,26,32,86,92,26,32,86,92,
     *    26,32,26,32,86,92,86,92,30*0/
      CALL SUB42 (ANS,CNST,A)
      STOP
      END
      SUBROUTINE SUB42 (ANS,CNST,A)
      INTEGER*4     ANS(50),CNST(50),A(10,10)
      N        =    1
      DO  1  I =    1,10
      DO  1  J =    1,10
      A(I,J)   =    N
    1 N        =    N+1

      N        =    1
      I1  = 1
      I2  = 2
      DO  2  I =    I1,I2,I1
      DO  2  J =    I1,I2,I1
      ANS(1)   =  ANS(1)+A(N,N)
      ANS(2)   =  ANS(2)+A(N,2*N)
      ANS(3)   =  ANS(3)+A(2*N,N)
    2 ANS(4)   =  ANS(4)+A(2*N,2*N)
      DO  3  I =    I1,I2,I1
      DO  3  J =    I1,I2,I1
      ANS(5)   =  ANS(5)+A(I,I)
      ANS(6)   =  ANS(6)+A(I,2*I)
      ANS(7)   =  ANS(7)+A(2*I,I)
    3 ANS(8)   =  ANS(8)+A(2*I,2*I)
      DO  4  I =    I1,I2,I1
      DO  4  J =    I1,I2,I1
      ANS(9)   =  ANS(9)+A(J,J)
      ANS(10)  =  ANS(10)+A(J,2*J)
      ANS(11)  =  ANS(11)+A(2*J,J)
    4 ANS(12)  =  ANS(12)+A(2*J,2*J)
      DO  6  I =    I1,I2,I1
      N        =    1
    5 ANS(13)  =    ANS(13)+A(I,N)
      ANS(14)  =    ANS(14)+A(I,2*N)
      ANS(15)  =    ANS(15)+A(N,I)
      ANS(16)  =    ANS(16)+A(N,2*I)
      ANS(17)  =    ANS(17)+A(2*I,N)
      ANS(18)  =    ANS(18)+A(2*I,2*N)
      ANS(19)  =    ANS(19)+A(2*N,I)
      ANS(20)  =    ANS(20)+A(2*N,2*I)
      N        =    N+1
      IF (N.LE.2)   GO TO    5
    6 CONTINUE
      IPSW     =    0
      DO  8  I =    1,50
      IF (CNST(I).EQ.ANS(I))  GO TO    8
      IF (IPSW.NE.0)          GO TO    7
      WRITE(6,100)
      IPSW     =    1
    7 WRITE(6,101) I,CNST(I),ANS(I)
    8 CONTINUE
      IF (IPSW.NE.0)          GO TO    9
      WRITE(6,102)
      RETURN
    9 WRITE(6,103)
      RETURN
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-42 ) ERROR LIST,
     *    2H *//1H0,21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0/,5X,'OK' )
  103 FORMAT(1H0,5X,'ERROR')
      END
