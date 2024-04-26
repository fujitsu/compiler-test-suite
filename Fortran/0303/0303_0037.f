      SUBROUTINE DM_UDECC (N, NDIM, AR, AI, IP, IER)
      IMPLICIT REAL*8 (A-H,O-Z)
      INTEGER N,NDIM,IP,IER,NM1,K,KP1,M,I,J
      DIMENSION AR(NDIM,N), AI(NDIM,N), IP(N)
      IER = 0
      IP(N) = 1

      NM1 = N - 1
      DO 60 K = 1,NM1
        KP1 = K + 1
        M = K

!$omp parallel do
        DO 50 J = KP1,N
           IF (AR(M,J) .EQ. 0.D0) THEN
              GO TO 48
           END IF
           IF (AI(M,J) .EQ. 0.D0) THEN
              DO 45 I = 1,N
                 AR(I,J) = 1
 45           CONTINUE
              GO TO 48
           END IF
           DO 47 I = 1,N
              AI(I,J) = 2
 47        CONTINUE
 48        CONTINUE
 50     CONTINUE
!     $omp end parallel do 
 60   CONTINUE

      RETURN
      END

      write(6,*) "ok"
      end
