      IMPLICIT REAL*8(A-H)
      IMPLICIT integer*4(R)
      PARAMETER (NW=100, NB=5)
      COMPLEX*16 WALL, ZCR, PROJ, ZI, Z1, ZZ
      COMMON /ARRAYS/ WALL(NW,NB), RMATRX(NW*NB,NW*NB),
     $ ZCR(NW,NB), PROJ(NW,NB), XMAX(NB), NWALL(NB)
C
      rmatrx=4
      DO 8 I = 1, 10
	RMATRX(I,I) = 1.D0 / RMATRX(I,I)
        DO 8 J = I+1, 10
          DO 8 K = I+1, 10
            RMATRX(J,K) = RMATRX(J,K) - RMATRX(J,I) * RMATRX(I,K)
8     CONTINUE
      print *,rmatrx(8,8)
      print *,rmatrx(80,80)
      END
