      PROGRAM  MAIN
      IMPLICIT  REAL*8(D),LOGICAL*4(L)
      DIMENSION       DA10(10,10,10),DA20(10,10,10)
      DIMENSION       DA30(10,10,10),DA40(10,10,10)
      DIMENSION       DR10(10,10,10),DR20(10,10,10)
      DIMENSION       DR30(10,10,10),DR40(10,10,10)
C
      DATA   IT3/10/,N1/20/
C
      DO 10 I=1,IT3
       DO 10 J=1,IT3
        DO 10 K=1,IT3
         DR10(I,J,K) = DFLOAT(K)
         DR20(I,J,K) = DFLOAT(J)
         DR30(I,J,K) = DFLOAT(I)
         DR40(I,J,K) = DFLOAT(K-I)
  10  CONTINUE

      DO 20 I=1,IT3
       DO 20 J=1,IT3
        DO 20 K=1,IT3
         DA10(I,J,K) = DFLOAT(K)
         DA20(I,J,K) = DFLOAT(J)
         DA30(I,J,K) = DFLOAT(I)
         DA40(I,J,K) = DFLOAT(K-I)
  20  CONTINUE
C
      DO 30 I=1,IT3
       DO 30 J=1,IT3
        DO 30 K=1,IT3
         IF (ABS(DA10(I,J,K)-DR10(I,J,K))>0.0000001) GOTO 90
         IF (ABS(DA20(I,J,K)-DR20(I,J,K))>0.0000001) GOTO 90
         IF (ABS(DA30(I,J,K)-DR30(I,J,K))>0.0000001) GOTO 90
         IF (ABS(DA40(I,J,K)-DR40(I,J,K))>0.0000001) GOTO 90
  30  CONTINUE
      WRITE(6,*) 'ok'
      GOTO 99
  90  CONTINUE
      WRITE(6,*) 'ng'
  99  CONTINUE
C
      STOP
      END
