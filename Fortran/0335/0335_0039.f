      PROGRAM  MAIN
      INTEGER*4     ANS(50),CNST(50),A(10,10,10)
      DATA          ANS/50*0/,CNST/6,12,6,12,24,84,24,84,204,804,204,
     *    804,26,32,86,92,26,32,86,92,206,212,806,812,206,212,806,812,
     *    224,284,824,884,224,284,824,884,14*0/
      M1 = 10
      CALL SUB42 (ANS,CNST,A,M1)
      STOP
      END
      SUBROUTINE SUB42 (ANS,CNST,A,M1)
      INTEGER*4 ANS(50),CNST(50),A(M1,M1,M1)

      N        =    1
      DO  1  I =    1,10
      DO  1  J =    1,10
      DO  1  K =    1,10
      A(I,J,K) =    N
    1 N        =    N+1
      DO  2  I =    1,2
      DO  2  J =    1,2
      ANS(1)   =    ANS(1)+A(1,1,I)
      ANS(2)   =    ANS(2)+A(1,1,2*I)
      ANS(3)   =    ANS(3)+A(1,1,J)
      ANS(4)   =    ANS(4)+A(1,1,2*J)
      ANS(5)   =    ANS(5)+A(1,I,1)
      ANS(6)   =    ANS(6)+A(1,2*I,1)
      ANS(7)   =    ANS(7)+A(1,J,1)
      ANS(8)   =    ANS(8)+A(1,2*J,1)
      ANS(9)   =    ANS(9)+A(I,1,1)
      ANS(10)  =    ANS(10)+A(2*I,1,1)
      ANS(11)  =    ANS(11)+A(J,1,1)
      ANS(12)  =    ANS(12)+A(2*J,1,1)
      ANS(13)  =    ANS(13)+A(1,I,J)
      ANS(14)  =    ANS(14)+A(1,I,2*J)
      ANS(15)  =    ANS(15)+A(1,2*I,J)
      ANS(16)  =    ANS(16)+A(1,2*I,2*J)
      ANS(17)  =    ANS(17)+A(1,J,I)
      ANS(18)  =    ANS(18)+A(1,J,2*I)
      ANS(19)  =    ANS(19)+A(1,2*J,I)
      ANS(20)  =    ANS(20)+A(1,2*J,2*I)
      ANS(21)  =    ANS(21)+A(I,1,J)
      ANS(22)  =    ANS(22)+A(I,1,2*J)
      ANS(23)  =    ANS(23)+A(2*I,1,J)
      ANS(24)  =    ANS(24)+A(2*I,1,2*J)
      ANS(25)  =    ANS(25)+A(J,1,I)
      ANS(26)  =    ANS(26)+A(J,1,2*I)
      ANS(27)  =    ANS(27)+A(2*J,1,I)
      ANS(28)  =    ANS(28)+A(2*J,1,2*I)
      ANS(29)  =    ANS(29)+A(I,J,1)
      ANS(30)  =    ANS(30)+A(I,2*J,1)
      ANS(31)  =    ANS(31)+A(2*I,J,1)
      ANS(32)  =    ANS(32)+A(2*I,2*J,1)
      ANS(33)  =    ANS(33)+A(J,I,1)
      ANS(34)  =    ANS(34)+A(J,2*I,1)
      ANS(35)  =    ANS(35)+A(2*J,I,1)
    2 ANS(36)  =    ANS(36)+A(2*J,2*I,1)
      IPSW     =    0
      DO  4  I =    1,50
      IF(ANS(I).EQ.CNST(I))   GO TO    4
      IF(IPSW.NE.0)           GO TO    3
      WRITE(6,100)
      IPSW     =    1
    3 WRITE(6,101)  I,CNST(I),ANS(I)
    4 CONTINUE
      IF (IPSW.NE.0)          GO TO    5
      WRITE(6,102)
      RETURN
    5 WRITE(6,103)
      RETURN
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-42 ) ERROR LIST,
     *    2H *//1H0,21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0,5X,2HOK)
  103 FORMAT(1H0,5X,5HERROR)
      END
