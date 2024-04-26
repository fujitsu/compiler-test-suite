      PROGRAM  MAIN
      REAL*4   A(10,10,10),CNST(50),ANS(50)
      DATA          ANS/50*0.0/,CNST/113.0,115.0,333.0,116.0,118.0,
     *    114.0,133.0,135.0,353.0,136.0,138.0,134.0,314.0,317.0,313.0,
     *    320.0,322.0,318.0,143.0,145.0,383.0,146.0,148.0,144.0,163.0,
     *    165.0,403.0,166.0,168.0,164.0,123.0,125.0,363.0,126.0,128.0,
     *    124.0,14*0.0/
      M1 = 10
      CALL     SUB25 (ANS,CNST,A,M1)
      STOP
      END
      SUBROUTINE SUB25 (ANS,CNST,A,M1)
      REAL*4  A(M1,M1,M1),CNST(50),ANS(50)
      N        =    1
      DO 100 I =    1,10
      DO 100 J =    1,10
      DO 100 K =    1,10
      A(I,J,K) =    N
  100 N        =    N+1

      DO  1  I =    1,2
    1 ANS(1)   =    ANS(1)+A(I,I,I)
      DO  2  I =    1,2
    2 ANS(2)   =    ANS(2)+A(I,I,I+1)
      DO  3  I =    2,3
    3 ANS(3)   =    ANS(3)+A(I,I,I-1)
      DO  4  I =    1,2
    4 ANS(4)   =    ANS(4)+A(I,I,2*I)
      DO  5  I =    1,2
    5 ANS(5)   =    ANS(5)+A(I,I,2*I+1)
      DO  6  I =    1,2
    6 ANS(6)   =    ANS(6)+A(I,I,2*I-1)
      DO  7  I =    1,2
    7 ANS(7)   =    ANS(7)+A(I,I+1,I)
      DO  8  I =    1,2
    8 ANS(8)   =    ANS(8)+A(I,I+1,I+1)
      DO  9  I =    2,3
    9 ANS(9)   =    ANS(9)+A(I,I+1,I-1)
      DO  10 I =    1,2
   10 ANS(10)  =    ANS(10)+A(I,I+1,2*I)
      DO  11 I =    1,2
   11 ANS(11)  =    ANS(11)+A(I,I+1,2*I+1)
      DO  12 I =    1,2
   12 ANS(12)  =    ANS(12)+A(I,I+1,2*I-1)
      DO  13 I =    2,3
   13 ANS (13) =    ANS(13)+A(I,I-1,2)
      DO  14 I =    2,3
   14 ANS(14)  =    ANS(14)+A(I,I-1,I+1)
      DO  15 I =    2,3
   15 ANS(15)  =    ANS(15)+A(I,I-1,I-1)
      DO  16 I =    2,3
   16 ANS(16)  =    ANS(16)+A(I,I-1,2*I)
      DO  17 I =    2,3
   17 ANS(17)  =    ANS(17)+A(I,I-1,2*I+1)
      DO  18 I =    2,3
   18 ANS(18)  =    ANS(18)+A(I,I-1,2*I-1)
      DO  19 I =    1,2
   19 ANS(19)  =    ANS(19)+A(I,2*I,I)
      DO  20 I =    1,2
   20 ANS(20)  =    ANS(20)+A(I,2*I,I+1)
      DO  21 I =    2,3
   21 ANS(21)  =    ANS(21)+A(I,2*I,I-1)
      DO  22 I =    1,2
   22 ANS(22)  =    ANS(22)+A(I,2*I,2*I)
      DO  23 I =    1,2
   23 ANS(23)  =    ANS(23)+A(I,2*I,2*I+1)
      DO  24 I =    1,2
   24 ANS(24)  =    ANS(24)+A(I,2*I,2*I-1)
      DO  25 I =    1,2
   25 ANS(25)  =    ANS(25)+A(I,2*I+1,I)
      DO  26 I =    1,2
   26 ANS(26)  =    ANS(26)+A(I,2*I+1,I+1)
      DO  27 I =    2,3
   27 ANS(27)  =    ANS(27)+A(I,2*I+1,I-1)
      DO  28 I =    1,2
   28 ANS(28)  =    ANS(28)+A(I,2*I+1,2*I)
      DO  29 I =    1,2
   29 ANS(29)  =    ANS(29)+A(I,2*I+1,2*I+1)
      DO  30 I =    1,2
   30 ANS(30)  =    ANS(30)+A(I,2*I+1,2*I-1)
      DO  31 I =    1,2
   31 ANS(31)  =    ANS(31)+A(I,2*I-1,I)
      DO  32 I =    1,2
   32 ANS(32)  =    ANS(32)+A(I,2*I-1,I+1)
      DO  33 I =    2,3
   33 ANS(33)  =    ANS(33)+A(I,2*I-1,I-1)
      DO  34 I =    1,2
   34 ANS(34)  =    ANS(34)+A(I,2*I-1,2*I)
      DO  35 I =    1,2
   35 ANS(35)  =    ANS(35)+A(I,2*I-1,2*I+1)
      DO  36 I =    1,2
   36 ANS(36)  =    ANS(36)+A(I,2*I-1,2*I-1)

      IPSW     =    0
      DO  38 I =    1,50
      IF (CNST(I).EQ.ANS(I))  GO TO   38
      IF (IPSW.NE.0)          GO TO   37
      WRITE(6,99)
      IPSW     =    1
   37 WRITE(6,101)  I,CNST(I),ANS(I)
   38 CONTINUE
      IF (IPSW.NE.0)     GO TO   39
      WRITE(6,102)
      STOP
   39 WRITE(6,103)
      STOP
   99 FORMAT(1H1/1H0,43H* TEST OF OPTIMIZATION ( NO-25 ) ERROR LIST,
     *    2H *//1H0,21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,F10.3,15X,F10.3)
  102 FORMAT(1H1/1H0,5X,2HOK)
  103 FORMAT(1H0,5X,5HERROR)
      END
