      PROGRAM  MAIN
      INTEGER*2 ANS(50),CNST(50),A(10)
      DATA          ANS/50*0/,CNST/9,18,12,24,6,12,3,6,6,12,6,12,6,12,
     *    6,12,34*0/
      CALL SUB44 (ANS,CNST,A)
      STOP
      END
      SUBROUTINE SUB44 (ANS,CNST,A)
      INTEGER*2 ANS(50),CNST(50),A(10)

      DO  1  I =    1,10
    1 A(I)     =    I
      DO  3  I =    1,3
      N        =    1
    2 ANS(1)   =    ANS(1)+A(N)
      ANS(2)   =    ANS(2)+A(2*N)
      ANS(3)   =    ANS(3)+A(I)
      ANS(4)   =    ANS(4)+A(2*I)
      N        =    N+1
      IF (N.LE.2)   GO TO    2
    3 CONTINUE
      DO  5  I =    1,2
      DO  4  J =    1,2
      ANS(5)   =    ANS(5)+A(J)
    4 ANS(6)   =    ANS(6)+A(2*J)
      ANS(7)   =    ANS(7)+A(I)
    5 ANS(8)   =    ANS(8)+A(2*I)
      N1       =    1
      DO  7  I =    1,2
      N2       =    1
      DO  6  J =    1,2
      ANS(9)   =    ANS(9)+A(N1)
      ANS(10)  =    ANS(10)+A(2*N1)
      ANS(11)  =    ANS(11)+A(N2)
      ANS(12)  =    ANS(12)+A(2*N2)
      ANS(13)  =    ANS(13)+A(I)
      ANS(14)  =    ANS(14)+A(2*I)
      ANS(15)  =    ANS(15)+A(J)
      ANS(16)  =    ANS(16)+A(2*J)
    6 N2       =    N2+1
    7 N1       =    N1+1
      IPSW     =    0
      DO  1000 I =  1,50
      IF (ANS(I).EQ.CNST(I))  GO TO 1000
      IF (IPSW.NE.0)          GO TO  999
      WRITE(6,100)
      IPSW     =    1
  999 WRITE(6,101)  I,CNST(I),ANS(I)
 1000 CONTINUE
      IF (IPSW.NE.0)     GO TO     1001
      WRITE(6,102)
      RETURN
 1001 WRITE(6,103)
      RETURN
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-43)  ERROR LIST,
     *    2H *//1H0,15X,6X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0,5X,2HOK)
  103 FORMAT(1H0,5X,5HERROR)
      END
