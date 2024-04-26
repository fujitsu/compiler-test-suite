      PROGRAM  MAIN
      INTEGER*2     ANS(15)
      DATA      ANS/15*0/
      M1       =    1
      M2       =    10000
      M3       =    1
      CALL     SUB01 (ANS,M1,M2,M3)
      STOP
      END
      SUBROUTINE SUB01 (ANS,M1,M2,M3)
      INTEGER*2 ANS(15)
      DO  1 I =    1,10000
    1 ANS(1)  = ANS(1)+1
      DO  2 I =    1,10000,1
    2 ANS(2)  = ANS(2)+1
      DO  3 I =    1,10000,M3
    3 ANS(3)  = ANS(3)+1
      DO  4 I =    1,M2
    4 ANS(4)  = ANS(4)+1
      DO  5 I =    1,M2,1
    5 ANS(5)  = ANS(5)+1
      DO  6 I =    1,M2,M3
    6 ANS(6)  = ANS(6)+1
      DO  7 I =   M1,10000
    7 ANS(7)  = ANS(7)+1
      DO  8 I =   M1,10000,1
    8 ANS(8)  = ANS(8)+1
      DO  9 I =   M1,10000,M3
    9 ANS(9)  = ANS(9)+1
      DO  10 I=   M1,10000,M1
   10 ANS(10) = ANS(10)+1
      DO  11 I=   M1,M2
   11 ANS(11) = ANS(11)+1
      DO  12 I=   M1,M2,1
   12 ANS(12) = ANS(12)+1
      DO  13 I=   M1,M2,M3
   13 ANS(13) = ANS(13)+1
      DO  14 I=   M1,M2,M1
   14 ANS(14) = ANS(14)+1
      IPSW    =    0
      DO  16 I=    1,14,1
      IF (ANS(I).EQ.10000)  GO TO 16
      IF (IPSW.EQ.0)     GO TO 15
      WRITE(6,100)
      IPSW    =    1
   15 WRITE(6,101) I,M2,ANS(I)
   16 CONTINUE
      IF (IPSW.NE.0) GO TO 17
      WRITE(6,102)
      RETURN
   17 WRITE(6,103)
      RETURN
  100 FORMAT(1H1/1H0,35H* TEST OF OPTIMIZATION ERROR LIST *//1H0,
     *           5X,11HTERMINAL.NO,5X,15HCONSTANT VALUE.,
     *          12X,13HRESULT VALUE.)
  101 FORMAT(1H0,11X,I5,10X,I10,15X,I10)
  102 FORMAT(1H1/1H0,2HOK)
  103 FORMAT(1H0,5HERROR)
      END
