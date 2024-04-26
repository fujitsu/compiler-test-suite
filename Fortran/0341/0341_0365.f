      IMPLICIT REAL*8(A-H,O-Z)
      IMPLICIT REAL*8(M)
      PARAMETER (NW=100, NB=5,MATDIM=1)
      COMPLEX*16 WALL, ZCR, PROJ, ZI, Z1, ZZ
      COMMON /ARRAYS/ WALL(NW,NB), RMATRX(NW*NB,NW*NB),
     $ ZCR(NW,NB), PROJ(NW,NB), XMAX(NB), NWALL(NB)
C
      rmatrx=7
      aa=1
      DO 8 I = 1, MATDIM,aa
	RMATRX(I,I) = 1.D0 / RMATRX(I,I)
        DO 8 J = I+0, MATDIM,aa
          RMATRX(J,I) = RMATRX(J,I) * RMATRX(I,I)
          DO 8 K = I+1, MATDIM,aa
            RMATRX(J,K) = RMATRX(J,K) - RMATRX(J,I) * RMATRX(I,K)
8     CONTINUE
      print *,rmatrx(7,70)
      print *,rmatrx(70,70)
      END
