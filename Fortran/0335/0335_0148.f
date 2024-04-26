      PROGRAM  MAIN
      INTEGER*4     ANS(15),A(50),CNST(12)
      DATA     ANS/15*0/,CNST/55,10,20,10,20,30,10,55,65,110,100,120/
      CALL     SUB02 (ANS,A,CNST)
      STOP
      END
      SUBROUTINE    SUB02 (ANS,A,CNST)
      INTEGER*4  ANS(15),A(50),CNST(12)
      M1       =    1
      M2       =    2
      DO  1  I =    1,50
    1 A(I)     =    I
      I1 = 1
      I10= 10
      DO  2  I =    I1,I10,I1
      ANS(1)   =    ANS(1)+I
      ANS(2)   =    ANS(2)+A(M1)
      ANS(3)   =    ANS(3)+A(M1+1)
      ANS(4)   =    ANS(4)+A(M2-1)
      ANS(5)   =    ANS(5)+A(2*M1)
      ANS(6)   =    ANS(6)+A(2*M1+1)
      ANS(7)   =    ANS(7)+A(2*M1-1)
      ANS(8)   =    ANS(8)+A(I)
      ANS(9)   =    ANS(9)+A(I+1)
      ANS(10)  =    ANS(10)+A(2*I)
      ANS(11)  =    ANS(11)+A(2*I-1)
    2 ANS(12)  =    ANS(12)+A(2*I+1)
      IPSW     =    0
      DO  3  I =    1,12
      IF (ANS(I).EQ.CNST(I))  GO TO 3
      IF (IPSW.NE.0)          GO TO 30
      WRITE(6,100)
      IPSW    =     1
   30 WRITE(6,101)  I,CNST(I),ANS(I)
    3 CONTINUE
      IF (IPSW.NE.0)          GO TO 4
      WRITE(6,102)
      RETURN
    4 WRITE(6,103)
      RETURN
  100 FORMAT(1H1/1H0,35H* TEST OF OPTIMIZATION ERROR LIST *//1H0,
     *               26X,15HCONSTANT VALUE.,
     *          12X, 13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I2,5H ) = ,9X,I10,15X,I10)
  102 FORMAT(1H1/1H0/,5X,'OK' )
  103 FORMAT(1H0,5X,'ERROR')
      END
