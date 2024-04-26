      PROGRAM  MAIN
      INTEGER*4     A(10,10)
      CALL     SUB40 (A)
      STOP
      END
      SUBROUTINE    SUB40 (A)
      INTEGER*4     A(10,10)
      DO  1  I =    1,10
      DO  1  J =    1,10
    1 A(I,J)   =    I
      IPSW     =    0
      DO  3  I =    1,10
      DO  3  J =    1,10
      IF (A(I,J).EQ.I)   GO TO 3
      IF (IPSW.NE.0)     GO TO 2
      WRITE(6,100)
      IPSW    =      1
    2 WRITE(6,101)  I,J,J,A(I,J)
    3 CONTINUE
      IF(IPSW.NE.0)      GO TO 4
      WRITE(6,102)
      RETURN
    4 WRITE(6,103)
      RETURN
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-40 ) ERROR LIST,
     *    2H *//1H0,21X,'CONSTANT VALUE.',12X,13HRESULT VALUE. )
  101 FORMAT(1H0,5X,5HANS (,I3,1H,,I3,5H ) = ,4X,I10,15X,I10)
  102 FORMAT(1H1/1H0,5X,2HOK)
  103 FORMAT(1H0,5X,5HERROR)
      END
