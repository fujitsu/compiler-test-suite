      PROGRAM  MAIN
      INTEGER*4     ANS(10),CNST(10),A(10,10,10)
      DATA          ANS/10*0/,CNST/413,416,443,446,6*0/
      CALL     SUB30 (ANS,CNST,A)
      STOP
      END
      SUBROUTINE    SUB30 (ANS,CNST,A)
      INTEGER*4     ANS(10),CNST(10),A(10,10,10)

      N        =    0
      DO  1  I =    1,10
      DO  1  J =    1,10
      DO  1  K =    1,10
      N        =    N+1
    1 A(I,J,K) =    N
      I1  = 1
      I2  = 2
      DO  2  I =    I1,I2,I1
      ANS(1)   =    ANS(1)+A(2*I,I,I)
      ANS(2)   =    ANS(2)+A(2*I,I,2*I)
      ANS(3)   =    ANS(3)+A(2*I,2*I,I)
    2 ANS(4)   =    ANS(4)+A(2*I,2*I,2*I)
      IPSW     =    0
      DO  4  I =    1,10
      IF (CNST(I).EQ.ANS(I))  GO TO    4
      IF (IPSW.NE.0)          GO TO    3
      WRITE(6,100)
      IPSW     =    1
    3 WRITE(6,101)  I,CNST(I),ANS(I)
    4 CONTINUE
      IF (IPSW.NE.0)     GO TO 5
      WRITE(6,102)
      RETURN
    5 WRITE(6,103)
      RETURN
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-30 ) ERROR LIST,
     *    2H *//1H0,21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0/,5X,'OK' )
  103 FORMAT(1H0,5X,'ERROR')
      END
