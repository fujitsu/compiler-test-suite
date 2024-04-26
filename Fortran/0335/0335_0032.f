      PROGRAM  MAIN
      INTEGER*4     A(10,10)
      M1 = 10
      M2 = 10
      CALL  SUB34 (A,M1,M2)
      STOP
      END
      SUBROUTINE SUB34 (A,M1,M2)
      INTEGER*4     A(M1,M2)
      DO  1  I =    1,10
      DO  1  J =    1,10
    1 A(I,J)   =    J
      IPSW     =    0
      DO  4  I =    1,10
      N        =    1
    2 IF (A(I,N).EQ.N)   GO TO    4
      IF (IPSW.NE.0)     GO TO    3
      WRITE(6,100)
      IPSW     =    1
    3 WRITE(6,101)  I,N,N,A(I,N)
      N        =    N+1
      IF (N.LE.10)       GO  TO   2
    4 CONTINUE
      IF (IPSW.NE.0)     GO TO    5
      WRITE(6,102)
      RETURN
    5 WRITE(6,103)
      RETURN
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-34 ) ERROR LIST,
     *    2H *//1H0,21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,1H,,I3,5H ) = ,4X,I10,15X,I10)
  102 FORMAT(1H1/1H0,5X,2HOK)
  103 FORMAT(1H0,5X,5HERROR)
      END
