      PROGRAM MAIN
       IMPLICIT REAL*8 (D), LOGICAL*4 (L)
       DIMENSION DA10(20,20), DA20(20,20), DA30(20,20), DA40(20,20), 
     X   DB10(20,20,20), DB20(20,20,20), DB30(20,20,20)
       DIMENSION LA10(20,20), LA20(20,20), DC10(20), DC20(20), LD10(20,
     X   20,20), LD20(20,20,20)
       DATA DA10/400*1.0D0/ 
       DATA DA20/400*2.0D0/ 
       DATA DA30/400*3.0D0/ 
       DATA DA40/400*2.0D0/ 
       DATA DB10/8000*1.0D0/ 
       DATA DB20/8000*2.0D0/ 
       DATA DB30/8000*4.0D0/ 
       DATA LA10/400*.FALSE./ 
       DATA LA20/400*.FALSE./ 
       DATA LD10/8000*.FALSE./ 
       DATA LD20/8000*.FALSE./ 
       INTEGER K1, J1, I1
C$OMP PARALLEL SHARED (LA10,LA20,DB10,DB30,LD10,LD20,DB20) PRIVATE (J1,
C$OMP& I1,K1)
C$OMP DO 
       DO J1=1,20
        DO I1=1,20
         IF (LA10(I1,J1) .OR. LA20(J1,I1)) THEN
          LA10(I1,J1) = .NOT.LA20(J1,I1)
         END IF
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO K1=1,20
        DO J1=1,18,3
         DO I1=1,20
          IF (DB10(I1,J1,K1) .GT. DB30(I1,J1,K1)) THEN
           LD10(I1,J1,K1) = .NOT.LD20(I1,J1,K1)
          END IF
          IF (DB20(I1,J1,K1) .GT. DB30(I1,J1,K1)) THEN
           LD20(I1,J1,K1) = .NOT.LD10(I1,J1,K1)
          END IF
          IF (DB10(I1,J1+1,K1) .GT. DB30(I1,J1+1,K1)) THEN
           LD10(I1,J1+1,K1) = .NOT.LD20(I1,J1+1,K1)
          END IF
          IF (DB20(I1,J1+1,K1) .GT. DB30(I1,J1+1,K1)) THEN
           LD20(I1,J1+1,K1) = .NOT.LD10(I1,J1+1,K1)
          END IF
          IF (DB10(I1,J1+2,K1) .GT. DB30(I1,J1+2,K1)) THEN
           LD10(I1,J1+2,K1) = .NOT.LD20(I1,J1+2,K1)
          END IF
          IF (DB20(I1,J1+2,K1) .GT. DB30(I1,J1+2,K1)) THEN
           LD20(I1,J1+2,K1) = .NOT.LD10(I1,J1+2,K1)
          END IF
         END DO
        END DO
        DO J1=19,20,1
         DO I1=1,20
          IF (DB10(I1,J1,K1) .GT. DB30(I1,J1,K1)) THEN
           LD10(I1,J1,K1) = .NOT.LD20(I1,J1,K1)
          END IF
          IF (DB20(I1,J1,K1) .GT. DB30(I1,J1,K1)) THEN
           LD20(I1,J1,K1) = .NOT.LD10(I1,J1,K1)
          END IF
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       I = 21
       WRITE (6, *) '(LA10)', ((LA10(I,J), I=1,10), J=11,20)
       WRITE (6, *) ' (LD10)', (((LD10(I,J,K), I=3,4), J=3,4), K=5,6)
       WRITE (6, *) ' (LD20)', (((LD10(I,J,K), I=4,5), J=5,6), K=5,6)

       STOP 
      END
