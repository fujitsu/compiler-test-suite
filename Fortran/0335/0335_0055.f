      PROGRAM  MAIN
      REAL*4   ANS(50),CNST(50),A(10,10)
      DATA          ANS/50*0.0/,CNST/9.0,42.0,66.0,108.0,141.0,
     *    165.0,63.0,96.0,39.0,162.0,195.0,138.0,38*0.0/
      M1 = 10
      M2 = 10
      M3 = 50
      CALL SUB08 (ANS,CNST,A,M1,M2,M3)
      STOP
      END
      SUBROUTINE SUB08 (ANS,CNST,A,M1,M2,M3)
      DIMENSION CNST(M3),ANS(M3),A(M1,M2)

      X        =    0.0
      DO  1  I =    1,10
      DO  1  J =   1,10
      X        =    X+1.
    1 A(I,J)   =    X

      N        =    2
      I1 = 1
      I3 = 3
      DO  2  I =    I1,I3,I1

      ANS(1)   =    ANS(1)+A(1,N)
      ANS(2)   =    ANS(2)+A(2,N+1)
      ANS(3)   =    ANS(3)+A(3,N-1)
      ANS(4)   =    ANS(4)+A(4,2*N)
      ANS(5)   =    ANS(5)+A(5,2*N+1)
      ANS(6)   =    ANS(6)+A(6,2*N-1)
      N        =    N+1
    2 CONTINUE
      N        =    2
      DO  3  I =    I1,I3,I1

      ANS(7)   =    ANS(7)+A(N,1)
      ANS(8)   =    ANS(8)+A(N+1,2)
      ANS(9)   =    ANS(9)+A(N-1,3)
      ANS(10)  =    ANS(10)+A(2*N,4)
      ANS(11)  =    ANS(11)+A(2*N+1,5)
      ANS(12)  =    ANS(12)+A(2*N-1,6)
      N        =    N+1
    3 CONTINUE

      IPSW     =    0
      DO  5 I  =    1,50
      IF (CNST(I).EQ.ANS(I))  GO TO    5
      IF (IPSW.NE.0)          GO TO    4
      WRITE(6,100)
      IPSW     =    1
    4 WRITE(6,101)  I,CNST(I),ANS(I)
    5 CONTINUE
      IF (IPSW.NE.0)          GO TO    6
      WRITE(6,102)
      RETURN
    6 WRITE(6,103)
      STOP
  100 FORMAT(1H1/1H0,5X,50H* TEST OF OPTIMIZATION NO-8 ERROR LIST *//
     *           1H0,21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,F10.2,15X,F10.2)
  102 FORMAT(1H1/1H0/,5X,'OK' )
  103 FORMAT(1H0,5X,'ERROR')
      END
