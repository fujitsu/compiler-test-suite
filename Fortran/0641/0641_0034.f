      PROGRAM MAIN
       IMPLICIT REAL*8 (D), COMPLEX*16 (C), LOGICAL*4 (L)
       DIMENSION DA10(20,20), DA20(20,20), DA30(20,20), DA40(20,20), 
     X   CD10(20,20), CD20(20,20), CD30(20,20), LD10(20,20), LD20(20,20)
     X   , LD30(20,20)
       INTEGER IT4, IT3, IT2, IT1
       PARAMETER (IT4 = 10, IT3 = 3, IT2 = 2, IT1 = 1)

       DATA DA10/400*1.D0/ 
       DATA DA20/400*2.D0/ 
       DATA DA30/400*3.D0/ 
       DATA DA40/400*4.D0/ 
       DATA CD10/400*(2.D0,1.D0)/ 
       DATA CD20/400*(1.5D0,4.D0)/ 
       DATA CD30/400*(1.5D0,4.D0)/ 
       DATA LD10/400*.FALSE./ 
       DATA LD20/400*.FALSE./ 
       DATA LD30/400*.FALSE./ 
       DOUBLE PRECISION DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1

       DO I=2,10
        DO K2=2,13
         DO K1=1,12
          CD10(K1,K2) = CD20(K1,K2+1) - CD30(K1,K2)
          DA10(K1,K2) = DA10(K1,K2+1) + DIMAG (CD10(K1,K2-1))
          IF (.NOT.LD20(K1,K2)) THEN
           LD10(K1,K2) = .TRUE.
           DA40(K1,K2+2) = REAL (CD10(K1,K2))
          END IF
         END DO
        END DO
C$OMP PARALLEL SHARED (DA10,DA20,DA40,DA30) PRIVATE (J3,J1,J2)
C$OMP DO 
        DO J3=1,20
         DO J1=1,20
          DO J2=1,17,4
           DA10(J1,J3) = DA20(J1,J3) * DA40(J1,J3)
           DA30(J1,J3) = DA30(J1,J3) * 2D0
           DA10(J1,J3) = DA20(J1,J3) * DA40(J1,J3)
           DA30(J1,J3) = DA30(J1,J3) * 2D0
           DA10(J1,J3) = DA20(J1,J3) * DA40(J1,J3)
           DA30(J1,J3) = DA30(J1,J3) * 2D0
           DA10(J1,J3) = DA20(J1,J3) * DA40(J1,J3)
           DA30(J1,J3) = DA30(J1,J3) * 2D0
          END DO
         END DO
        END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

        IF (LD10(I,20) .OR. LD30(I,20)) THEN
         LD20(I,20) = .TRUE.
         CD10(I,20) = (1.D0,2.D0)
         GO TO 18
        END IF

        DO I1=2,15
         DO I2=3,15
          DO I3=10,16,3
           DD7 = DA20(I2-1,I3-1) + DA30(I2,I3+1)
           DD8 = DA20(I2-1,I3) + DA30(I2,I3+2)
           DA20(I2,I3+2) = DA20(I2-1,I3+1) + DA30(I2,I3+3)
           DA20(I2,I3+1) = DD8
           DA20(I2,I3) = DD7
          END DO
          IF (I1 .EQ. I2 .OR. I2 .EQ. I1) THEN
           DD1 = DA40(I1,I2)
           DO I3=10,18
            DX = DIMAG (CD30(I2,I3)) - DD1
            DY = DREAL (CD20(I2,I3)) + DA30(I1,I2)
            IF (DX .GT. DY) THEN
             LD10(I2,I3) = .TRUE.
             CD20(I2,I3) = DCMPLX (DX, DY)
            ELSE
             LD20(I2,I3) = .TRUE.
             CD30(I2,I3) = DCMPLX (DY, DX)
            END IF
            DA30(I2,I3) = DMAX1 (DX, DY, DA20(I2,I3))
           END DO
          ELSE
           DD2 = DA40(I1,I2)
           DO I3=10,18
            DX = DIMAG (CD30(I2,I3)) - DD2
            DY = DREAL (CD20(I2,I3)) + DA30(I1,I2)
            IF (DX .GT. DY) THEN
             LD10(I2,I3) = .TRUE.
             CD20(I2,I3) = DCMPLX (DX, DY)
            ELSE
             LD20(I2,I3) = .TRUE.
             CD30(I2,I3) = DCMPLX (DY, DX)
            END IF
            DA30(I2,I3) = DMAX1 (DX, DY, DA20(I2,I3))
           END DO
          END IF
         END DO
C$OMP PARALLEL SHARED (LD10,LD20,CD10,DA10) PRIVATE (I4,II)
C$OMP DO 
         DO I4=1,20

          DO II=1,20
           IF (LD10(II,I4) .OR. LD20(II,I4)) THEN
            CD10(II,I4) = CD10(II,I4) + DCMPLX (DA10(II,I4))
            LD10(II,I4) = .NOT.LD10(II,I4)
           END IF
          END DO
         END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

         IF (LD10(I+1,I1) .AND. LD20(I,I1)) THEN
          GO TO 18
         END IF
C$OMP PARALLEL SHARED (I,DA30,DA40,DA20,DA10) PRIVATE (DD3,DD4,DD5,DD6,
C$OMP& I6,I5)
C$OMP DO 
         DO I6=I+1,20
          DO I5=2,17,4
           DD4 = DMAX1 (DA30(I5,I6), DA40(I5,I6))
           DD5 = DMAX1 (DA30(I5+1,I6), DA40(I5+1,I6))
           DD6 = DMAX1 (DA30(I5+2,I6), DA40(I5+2,I6))
           DD3 = DMAX1 (DA30(I5+3,I6), DA40(I5+3,I6))
           DA20(I5,I6) = DA10(I5,I6) - DD4
           DA20(I5+1,I6) = DA10(I5+1,I6) - DD5
           DA20(I5+2,I6) = DA10(I5+2,I6) - DD6
           DA20(I5+3,I6) = DA10(I5+3,I6) - DD3
          END DO
          DO I5=18,20,1
           DD3 = DMAX1 (DA30(I5,I6), DA40(I5,I6))
           DA20(I5,I6) = DA10(I5,I6) - DD3
          END DO
         END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
        END DO
   18   CONTINUE
       END DO

       WRITE (6, *) '### (DA10) ###'
       WRITE (6, 99) DA10

       WRITE (6, *) '### (DA20) ###'
       WRITE (6, 99) DA20

       WRITE (6, *) '### (DA30) ###'
       WRITE (6, 99) DA30

       WRITE (6, *) '### (DA40) ###'
       WRITE (6, 99) DA40

       WRITE (6, *) '### (CD10) ###'
       WRITE (6, 99) CD10

       WRITE (6, *) '### (CD20) ###'
       WRITE (6, 99) CD20

       WRITE (6, *) '### (CD30) ###'
       WRITE (6, 99) CD30

   99  FORMAT(4(1X,E17.5))
       STOP 
      END
