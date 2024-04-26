      SUBROUTINE FOO(RA,RB,LL1)
      REAL*4 RA(5,5,5), RB(5,5,5,5)
      INTEGER*4 H
      LOGICAL LL1

C$OMP DO lastprivate(j,h,n)
      DO J=1,5
         DO H=1,5
            DO II2=1,5
               DO N=1,5
                  RB(1,j,1,1) = 1.
               END DO
            END DO
         END DO
      END DO
C$OMP END DO NOWAIT

      DO N=1,5
         IF (LL1) THEN
            RA(J-1,H-1,N) = 0.
         END IF
      END DO
      RETURN
      END

      REAL*4 RA(5,5,5), RB(5,5,5,5)
      CALL FOO(RA,RB,.TRUE.)
      WRITE(6,*) "OK"
      STOP
      END
