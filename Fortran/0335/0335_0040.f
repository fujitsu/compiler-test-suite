      PROGRAM  MAIN
      INTEGER*4     ANS(50),CNST(50),A(10,10,10)
      DATA          ANS/50*0/,CNST/26,32,86,92,206,212,806,812,224,284,
     *    824,884,26,32,86,92,206,212,806,812,224,284,824,884,226,232,
     *    286,292,826,832,886,892,226,232,286,292,826,832,886,892,10*0/
      M1 = 10
      M2 = 10
      CALL SUB43 (ANS,CNST,A,M1,M2)
      STOP
      END
      SUBROUTINE SUB43 (ANS,CNST,A,M1,M2)
      INTEGER*4 ANS(50),CNST(50),A(M1,M2,10)

      N        =    0
      DO  1  I =    1,10
      DO  1  J =    1,10
      DO  1  K =    1,10
      N        =    N+1
    1 A(I,J,K) =    N
      DO  2  I =    1,2
      DO  2  J =    1,2
      ANS(1)   =    ANS(1)+A(1,I,I)
      ANS(2)   =    ANS(2)+A(1,I,2*I)
      ANS(3)   =    ANS(3)+A(1,2*I,I)
      ANS(4)   =    ANS(4)+A(1,2*I,2*I)
      ANS(5)   =    ANS(5)+A(I,1,I)
      ANS(6)   =    ANS(6)+A(I,1,2*I)
      ANS(7)   =    ANS(7)+A(2*I,1,I)
      ANS(8)   =    ANS(8)+A(2*I,1,2*I)
      ANS(9)   =    ANS(9)+A(I,I,1)
      ANS(10)  =    ANS(10)+A(I,2*I,1)
      ANS(11)  =    ANS(11)+A(2*I,I,1)
      ANS(12)  =    ANS(12)+A(2*I,2*I,1)
      ANS(13)  =    ANS(13)+A(1,J,J)
      ANS(14)  =    ANS(14)+A(1,J,2*J)
      ANS(15)  =    ANS(15)+A(1,2*J,J)
      ANS(16)  =    ANS(16)+A(1,2*J,2*J)
      ANS(17)  =    ANS(17)+A(J,1,J)
      ANS(18)  =    ANS(18)+A(J,1,2*J)
      ANS(19)  =    ANS(19)+A(2*J,1,J)
      ANS(20)  =    ANS(20)+A(2*J,1,2*J)
      ANS(21)  =    ANS(21)+A(J,J,1)
      ANS(22)  =    ANS(22)+A(J,2*J,1)
      ANS(23)  =    ANS(23)+A(2*J,J,1)
    2 ANS(24)  =    ANS(24)+A(2*J,2*J,1)
      DO  3  I =    1,2
      DO  3  J =    1,2
      ANS(25)  =    ANS(25)+A(I,I,I)
      ANS(26)  =    ANS(26)+A(I,I,2*I)
      ANS(27)  =    ANS(27)+A(I,2*I,I)
      ANS(28)  =    ANS(28)+A(I,2*I,2*I)
      ANS(29)  =    ANS(29)+A(2*I,I,I)
      ANS(30)  =    ANS(30)+A(2*I,I,2*I)
      ANS(31)  =    ANS(31)+A(2*I,2*I,I)
      ANS(32)  =    ANS(32)+A(2*I,2*I,2*I)
      ANS(33)  =    ANS(33)+A(J,J,J)
      ANS(34)  =    ANS(34)+A(J,J,2*J)
      ANS(35)  =    ANS(35)+A(J,2*J,J)
      ANS(36)  =    ANS(36)+A(J,2*J,2*J)
      ANS(37)  =    ANS(37)+A(2*J,J,J)
      ANS(38)  =    ANS(38)+A(2*J,J,2*J)
      ANS(39)  =    ANS(39)+A(2*J,2*J,J)
    3 ANS(40)  =    ANS(40)+A(2*J,2*J,2*J)
      IPSW     =    0
      DO  5  I =    1,50
      IF (ANS(I).EQ.CNST(I))  GO TO    5
      IF (IPSW.NE.0)          GO TO    4
      WRITE(6,100)
      IPSW     =    1
    4 WRITE(6,101)
    5 CONTINUE
      IF (IPSW.NE.0)          GO TO    6
      WRITE(6,102)
      RETURN
    6 WRITE(6,103)
      RETURN
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-43 ) ERROR LIST
     *    2H *//1H0,21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0,5X,2HOK)
  103 FORMAT(1H0,5X,5HERROR)
      END
