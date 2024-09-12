      PROGRAM MAIN
       IMPLICIT REAL*8 (D), LOGICAL*4 (L)
       DIMENSION DA10(30), DA20(30), DA30(30), DB10(20,20), DB20(20,20),
     X    DB30(20,20), DC10(20,20,20), DC20(20,20,20), DC30(20,20,20)
       DIMENSION LD10(30), LD20(30), LD30(20,20), LD40(20,20,20)
       DOUBLEPRECISION DD1
       PARAMETER (DD1 = 1D0 / 2D0)

       DATA DA10/30*1.D0/ 
       DATA DA20/30*2.D0/ 
       DATA DA30/30*3.D0/ 
       DATA DB10/400*4.D0/ 
       DATA DB20/400*5.D0/ 
       DATA DB30/400*6.D0/ 
       DATA DC10/8000*2.D0/ 
       DATA DC20/8000*1.D0/ 
       DATA DC30/8000*4.D0/ 
       DATA LD10/30*.FALSE./ 
       DATA LD20/30*.FALSE./ 
       DATA LD30/400*.FALSE./ 
       DATA LD40/8000*.FALSE./ 
       INTEGER II2, II1, K1, I1
       DOUBLE PRECISION DD5, DD4, DD3, DD2

       DO I1=1,22,10
        LD10(I1) = .TRUE.
        LD10(I1+2) = .TRUE.
        LD10(I1+4) = .TRUE.
        LD10(I1+6) = .TRUE.
        LD10(I1+8) = .TRUE.
       END DO

       DO I1=1,17,4
        DA10(I1) = DA20(I1) + DA30(I1)
        DA10(I1+1) = DA20(I1+1) + DA30(I1+1)
        DA10(I1+2) = DA20(I1+2) + DA30(I1+2)
        DA10(I1+3) = DA20(I1+3) + DA30(I1+3)
        DD3 = DSQRT (DA10(I1))
        DD4 = DSQRT (DA10(I1+1))
        DD5 = DSQRT (DA10(I1+2))
        DD2 = DSQRT (DA10(I1+3))
        DA20(I1) = DNINT (DD3)
        DA20(I1+1) = DNINT (DD4)
        DA20(I1+2) = DNINT (DD5)
        DA20(I1+3) = DNINT (DD2)
       END DO

       DO I1=1,20
        IF (DA20(I1)) 33, 34, 35
   33   DA30(I1) = DA30(I1) - DA20(I1)
        GO TO 36
   34   DA30(I1) = 0D0
        GO TO 36
   35   DA30(I1) = DA20(I1)
   36   IF (LD10(I1)) THEN
         DA10(1) = DA10(1) + DA20(I1)
        END IF
       END DO
C$OMP PARALLEL SHARED (DC10,DB30,DC20,DB20,DC30,DB10,LD40,LD30) 
C$OMP& PRIVATE (J,K1,I1,DX,DY,DZ)
C$OMP DO 
       DO J=1,10
        DO K1=11,18,3

         DO I1=1,20
          DX = DC10(I1,J,K1) * DB30(I1,J) * DD1
          DY = DC20(I1,J,K1) * DB20(I1,J)
          DZ = DC30(I1,J,K1) * DB10(I1,J)
          IF (DX .GT. DZ .AND. DY .GT. DZ) THEN
           LD40(I1,J,K1) = .TRUE.
          ELSE
           IF (DZ .GT. DX .OR. DZ .LT. DY) THEN
            LD40(I1,J,K1-10) = .TRUE.
           END IF
          END IF
          DC10(I1,J,K1) = DC10(I1,J,K1) + DMIN1 (DX, DY, DZ)
          DX = DC10(I1,J,K1+1) * DB30(I1,J) * DD1
          DY = DC20(I1,J,K1+1) * DB20(I1,J)
          DZ = DC30(I1,J,K1+1) * DB10(I1,J)
          IF (DX .GT. DZ .AND. DY .GT. DZ) THEN
           LD40(I1,J,K1+1) = .TRUE.
          ELSE
           IF (DZ .GT. DX .OR. DZ .LT. DY) THEN
            LD40(I1,J,K1-9) = .TRUE.
           END IF
          END IF
          DC10(I1,J,K1+1) = DC10(I1,J,K1+1) + DMIN1 (DX, DY, DZ)
          DX = DC10(I1,J,K1+2) * DB30(I1,J) * DD1
          DY = DC20(I1,J,K1+2) * DB20(I1,J)
          DZ = DC30(I1,J,K1+2) * DB10(I1,J)
          IF (DX .GT. DZ .AND. DY .GT. DZ) THEN
           LD40(I1,J,K1+2) = .TRUE.
          ELSE
           IF (DZ .GT. DX .OR. DZ .LT. DY) THEN
            LD40(I1,J,K1-8) = .TRUE.
           END IF
          END IF
          DC10(I1,J,K1+2) = DC10(I1,J,K1+2) + DMIN1 (DX, DY, DZ)
         END DO
        END DO

        DO I1=1,20
         DX = DC10(I1,J,20) * DB30(I1,J) * DD1
         DY = DC20(I1,J,20) * DB20(I1,J)
         DZ = DC30(I1,J,20) * DB10(I1,J)
         IF (DX .GT. DZ .AND. DY .GT. DZ) THEN
          LD40(I1,J,20) = .TRUE.
         ELSE
          IF (DZ .GT. DX .OR. DZ .LT. DY) THEN
           LD40(I1,J,10) = .TRUE.
          END IF
         END IF
         DC10(I1,J,20) = DC10(I1,J,20) + DMIN1 (DX, DY, DZ)
        END DO

        DO I1=1,20
         DB10(I1,J) = DB20(I1,J) + DB30(I1,J)
         DB20(I1,J) = DB20(I1,J+10) * 2D0
         IF (DB10(I1,J) .GT. DB20(I1,J)) THEN
          LD30(I1,J) = .TRUE.
         END IF
         IF (LD30(I1,J)) THEN
          DB30(I1,J) = DB10(I1,J) - DB20(I1,J)
         END IF
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) ' (DA10) ', (DA10(K), K=1,20)
       WRITE (6, *) ' (DA20) ', (DA20(K), K=1,20)
       WRITE (6, *) ' (DA30) ', (DA30(K), K=1,20)
       DO J=1,10
        WRITE (6, *) ' (DB10) ', (DB10(I,J), I=1,20)
        WRITE (6, *) ' (DB20) ', (DB20(I,J), I=1,20)
        WRITE (6, *) ' (LD30) ', (LD30(I,J), I=1,20)
        DO K1=1,20
         WRITE (6, *) ' (DC10) ', (DC10(I,J,K1), I=1,10)
         WRITE (6, *) ' (LD40) ', (LD40(I,J,K1), I=1,10)
        END DO
       END DO
       DO J=11,20
        WRITE (6, *) ' (DB30) ', (DB30(I,J), I=1,10)
       END DO

       ICNT = 0
       DO I1=1,11,5
        DA20(I1) = DA10(I1*2) + DA30(I1*2-1)
        DB30(20,I1+5) = DMIN1 (DA10(I1), DA30(I1))
        DA20(I1+1) = DA10(I1*2+2) + DA30(I1*2+1)
        DB30(20,I1+6) = DMIN1 (DA10(I1+1), DA30(I1+1))
        DA20(I1+2) = DA10(I1*2+4) + DA30(I1*2+3)
        DB30(20,I1+7) = DMIN1 (DA10(I1+2), DA30(I1+2))
        DA20(I1+3) = DA10(I1*2+6) + DA30(I1*2+5)
        DB30(20,I1+8) = DMIN1 (DA10(I1+3), DA30(I1+3))
        DA20(I1+4) = DA10(I1*2+8) + DA30(I1*2+7)
        DB30(20,I1+9) = DMIN1 (DA10(I1+4), DA30(I1+4))
       END DO
       DO I1=1,15
        IF (DA20(I1) .LT. DA10(I1)) THEN
         LD20(I1) = .TRUE.
        END IF
        IF (LD10(I1) .AND. LD20(I1)) THEN
         ICNT = ICNT + 1
        END IF
        DB20(20,I1+5) = DMAX1 (DA10(I1), DA20(I1))
        DA10(I1) = DA20(I1) - DA30(I1)
       END DO
       DO I1=1,15
        DO J=20,11,-1
         DX = DNINT (DSQRT (DB10(J,I1+1)))
         DY = DMOD (DB20(J,I1), DB30(J,I1))
         IF (DY .GE. 0D0) THEN
          DB20(J-1,I1) = DB30(J,I1+1) + DY
         ELSE
          DB30(J,I1) = DX - DY
         END IF
         DB10(J,I1) = DB20(J,I1) + DB30(J,I1)
         II2 = (J - 5) / 4
         II1 = II2 * 4 + 5
         DO K1=5,J-4,4
          DC20(I1,J,K1) = DMAX1 (DB10(K1,I1), DB30(K1,I1))
          DC20(I1,J,K1+1) = DMAX1 (DB10(K1+1,I1), DB30(K1+1,I1))
          DC20(I1,J,K1+2) = DMAX1 (DB10(K1+2,I1), DB30(K1+2,I1))
          DC20(I1,J,K1+3) = DMAX1 (DB10(K1+3,I1), DB30(K1+3,I1))
         END DO
         DO K1=II1,J-1,1
          DC20(I1,J,K1) = DMAX1 (DB10(K1,I1), DB30(K1,I1))
         END DO
        END DO
       END DO
C$OMP PARALLEL SHARED (DC30,DC10,DC20,LD40) PRIVATE (J,K1,I1)
C$OMP DO 
       DO J=20,11,-1
        DO K1=5,J-2,2
         DO I1=1,15
          DC30(I1,J,K1) = DC10(I1,J,K1-1) + DC20(I1,J,K1-1)
          IF (DC20(I1,J,K1) .LT. DC30(I1,J,K1)) THEN
           LD40(I1,J,K1) = .TRUE.
          END IF
          DC30(I1,J,K1+1) = DC10(I1,J,K1) + DC20(I1,J,K1)
          IF (DC20(I1,J,K1+1) .LT. DC30(I1,J,K1+1)) THEN
           LD40(I1,J,K1+1) = .TRUE.
          END IF
         END DO
        END DO
        DO K1=K1,J-1,1
         DO I1=1,15
          DC30(I1,J,K1) = DC10(I1,J,K1-1) + DC20(I1,J,K1-1)
          IF (DC20(I1,J,K1) .LT. DC30(I1,J,K1)) THEN
           LD40(I1,J,K1) = .TRUE.
          END IF
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) ' (DA10) ', (DA10(K), K=1,15)
       WRITE (6, *) ' (LD20) ', (LD20(K), K=1,15)
       WRITE (6, *) ' ICNT = ', ICNT
       DO J=1,15
        WRITE (6, *) ' (DB10) ', (DB10(I,J), I=20,11,-1)
        WRITE (6, *) ' (DB20) ', (DB20(I,J), I=20,11,-1)
        WRITE (6, *) ' (DB30) ', (DB30(I,J), I=20,11,-1)
       END DO
       DO J=20,11,-1
        DO K1=5,20
         WRITE (6, *) ' (DC20)', (DC20(I,J,K1), I=1,15)
         WRITE (6, *) ' (DC30)', (DC30(I,J,K1), I=1,15)
         WRITE (6, *) ' (LD40)', (LD40(I,J,K1), I=1,15)
        END DO
       END DO
       STOP 
      END
