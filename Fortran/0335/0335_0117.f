      PROGRAM  MAIN
      INTEGER*2     A(10,10,10)
      INTEGER*4     ANS(50),CNST(50)
      DATA          ANS/50*0/,CNST/5,7,3,10,12,8,32,52,12,82,102,62,
     *    302,502,102,802,1002,602,32*0/
      CALL     SUB25 (ANS,CNST,A)
      STOP
      END
      SUBROUTINE    SUB25 (ANS,CNST,A)
      INTEGER*2     A(10,10,10)
      INTEGER*4     ANS(50),CNST(50)

      N        =    0
      DO  1  I =    1,10
      DO  1  J =    1,10
      DO  1  K =    1,10
      N        =    N+1
    1 A(I,J,K) =    N

      DO  2  I =    2,3
      ANS(1)   =    ANS(1)+A(1,1,I)
      ANS(2)   =    ANS(2)+A(1,1,I+1)
      ANS(3)   =    ANS(3)+A(1,1,I-1)
      ANS(4)   =    ANS(4)+A(1,1,2*I)
      ANS(5)   =    ANS(5)+A(1,1,2*I+1)
    2 ANS(6)   =    ANS(6)+A(1,1,2*I-1)

      DO  3  I =    2,3
      ANS(7)   =    ANS(7)+A(1,I,1)
      ANS(8)   =    ANS(8)+A(1,I+1,1)
      ANS(9)   =    ANS(9)+A(1,I-1,1)
      ANS(10)  =    ANS(10)+A(1,2*I,1)
      ANS(11)  =    ANS(11)+A(1,2*I+1,1)
    3 ANS(12)  =    ANS(12)+A(1,2*I-1,1)

      DO  4  I =    2,3
      ANS(13)  =    ANS(13)+A(I,1,1)
      ANS(14)  =    ANS(14)+A(I+1,1,1)
      ANS(15)  =    ANS(15)+A(I-1,1,1)
      ANS(16)  =    ANS(16)+A(2*I,1,1)
      ANS(17)  =    ANS(17)+A(2*I+1,1,1)
    4 ANS(18)  =    ANS(18)+A(2*I-1,1,1)
      IPSW     =    0
      DO  6  I =    1,50
      IF (ANS(I).EQ.CNST(I))  GO TO    6
      IF (IPSW.NE.0)          GO TO    5
      WRITE(6,100)
      IPSW     =    1
    5 WRITE(6,101)  I,CNST(I),ANS(I)
    6 CONTINUE
      IF (IPSW.NE.0)          GO TO    7
      WRITE(6,102)
      RETURN
    7 WRITE(6,103)
      RETURN
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-25 ) ERROR LIST,
     *    2H *//1H0,21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0,5X,2HOK)
  103 FORMAT(1H0,5X,5HERROR)
      END
