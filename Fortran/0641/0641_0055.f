      PROGRAM MAIN
       IMPLICIT REAL*8 (D), LOGICAL*4 (L), COMPLEX*16 (C)
       DIMENSION DA10(30,30), DA20(30,30), DA30(30,30), CD10(30,30), 
     X   CD30(30,30), CD20(30,30), LD10(30,30)
       DIMENSION DD10(400), DD20(100), DD30(100), DD40(100)
       DIMENSION CDE1(30,30), CDE2(30,10), CDE3(30,10), CDE4(30,10)
       DIMENSION IL(30)
       EQUIVALENCE (DD10(1), DD20(1)), (DD10(101), DD30(1))
       EQUIVALENCE (DD10(400), DD40(100))
       EQUIVALENCE (CDE1(1,1), CDE2(1,1))
       EQUIVALENCE (CDE1(1,11), CDE3(1,1))
       EQUIVALENCE (CDE1(1,21), CDE4(1,1))
       INTEGER IT3, IT2, IT1
       PARAMETER (IT3 = 10, IT2 = 2, IT1 = 1)
       DOUBLEPRECISION DD1
       PARAMETER (DD1 = 1D0 / 2D0)

       DATA DA10/900*1.D0/ 
       DATA DA20/900*2.D0/ 
       DATA DA30/900*3.D0/ 
       DATA CD10/900*(1.D0,2.D0)/ 
       DATA CD20/900*(2.D0,1.D0)/ 
       DATA CD30/900*(4.D0,2.D0)/ 
       DATA LD10/900*.FALSE./ 
       DATA DD10/400*10.0D0/ 
       DATA CDE1/900*(2.D0,4.D0)/ 
       INTEGER II9, II8, II7, II6, II5, II4, II3, II2, II1
       DOUBLE PRECISION DD18, DD17, DD16, DD15, DD14, DD13, DD12, DD11, 
     X   DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2
       COMPLEX*16 DC10, DC9, DC8, DC7, DC6, DC5, DC4, DC3, DC2, DC1

       ICNT = 0
       DO I=1,26,5
        IL(I) = 31 - I
        IL(I+1) = 30 - I
        IL(I+2) = 29 - I
        IL(I+3) = 28 - I
        IL(I+4) = 27 - I
       END DO

       DO III=10,30,10
        II3 = IL(III) / 4
        II2 = II3 * 4 + 1
        DO I1=1,IL(III)-3,4
         DD40(I1) = DA30(1,I1)
         DD40(I1+1) = DA30(1,I1+1)
         DD40(I1+2) = DA30(1,I1+2)
         DD40(I1+3) = DA30(1,I1+3)
        END DO
        DO I1=II2,IL(III),1
         DD40(I1) = DA30(1,I1)
        END DO
        DO I1=1,IL(III)
         DD20(I1) = DA10(1,I1)
         DD30(I1) = DA20(1,I1)
         DD20(I1) = DD20(I1) + DD30(I1) - DD40(I1)
         IF (DMIN1 (DD10(I1), DD10(I1+100), DD10(I1+200)) .GT. DIMAG (
     X     CDE1(I1,I1))) THEN
          LD10(I1,I1) = .TRUE.
         END IF
        END DO
       END DO
C$OMP PARALLEL SHARED (IL,DA30,DA20,DA10) PRIVATE (DD2,DD3,DD4,DD5,DD6,
C$OMP& DD7,DD8,DD9,II5,II4,J1,K1,III,I1)
C$OMP DO 
       DO J1=2,12,4
        DO K1=30,20,-1
         DO III=10,30,10
          IF (IL(III) .GT. 0) THEN
           DD2 = DA30(K1,J1)
           DD3 = DA20(J1,K1)
           DD4 = DA30(K1,J1+1)
           DD5 = DA20(J1+1,K1)
           DD6 = DA30(K1,J1+2)
           DD7 = DA20(J1+2,K1)
           DD8 = DA30(K1,J1+3)
           DD9 = DA20(J1+3,K1)
           II5 = IL(III) / 4
           II4 = II5 * 4 + 1
           DO I1=1,IL(III)-3,4
            DA10(J1,K1) = DD3 + DD2
            DA10(J1+1,K1) = DD5 + DD4
            DA10(J1+2,K1) = DD7 + DD6
            DA10(J1+3,K1) = DD9 + DD8
            DD2 = DD3 + DA10(I1,J1)
            DD4 = DD5 + DA10(I1,J1+1)
            DD6 = DD7 + DA10(I1,J1+2)
            DD8 = DD9 + DA10(I1,J1+3)
            DA10(J1,K1) = DD3 + DD2
            DA10(J1+1,K1) = DD5 + DD4
            DA10(J1+2,K1) = DD7 + DD6
            DA10(J1+3,K1) = DD9 + DD8
            DD2 = DD3 + DA10(I1+1,J1)
            DD4 = DD5 + DA10(I1+1,J1+1)
            DD6 = DD7 + DA10(I1+1,J1+2)
            DD8 = DD9 + DA10(I1+1,J1+3)
            DA10(J1,K1) = DD3 + DD2
            DA10(J1+1,K1) = DD5 + DD4
            DA10(J1+2,K1) = DD7 + DD6
            DA10(J1+3,K1) = DD9 + DD8
            DD2 = DD3 + DA10(I1+2,J1)
            DD4 = DD5 + DA10(I1+2,J1+1)
            DD6 = DD7 + DA10(I1+2,J1+2)
            DD8 = DD9 + DA10(I1+2,J1+3)
            DA10(J1,K1) = DD3 + DD2
            DA10(J1+1,K1) = DD5 + DD4
            DA10(J1+2,K1) = DD7 + DD6
            DA10(J1+3,K1) = DD9 + DD8
            DD2 = DD3 + DA10(I1+3,J1)
            DD4 = DD5 + DA10(I1+3,J1+1)
            DD6 = DD7 + DA10(I1+3,J1+2)
            DD8 = DD9 + DA10(I1+3,J1+3)
           END DO
           DO I1=II4,IL(III),1
            DA10(J1,K1) = DD3 + DD2
            DA10(J1+1,K1) = DD5 + DD4
            DA10(J1+2,K1) = DD7 + DD6
            DA10(J1+3,K1) = DD9 + DD8
            DD2 = DD3 + DA10(I1,J1)
            DD4 = DD5 + DA10(I1,J1+1)
            DD6 = DD7 + DA10(I1,J1+2)
            DD8 = DD9 + DA10(I1,J1+3)
           END DO
           DA30(K1,J1) = DD2
           DA30(K1,J1+1) = DD4
           DA30(K1,J1+2) = DD6
           DA30(K1,J1+3) = DD8
          END IF
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO J1=14,15,1
        DO K1=30,20,-1
         DO III=10,30,10
          IF (IL(III) .GT. 0) THEN
           DD11 = DA30(K1,J1)
           DD12 = DA20(J1,K1)
           II7 = IL(III) / 4
           II6 = II7 * 4 + 1
           DO I1=1,IL(III)-3,4
            DA10(J1,K1) = DD12 + DD11
            DD11 = DD12 + DA10(I1,J1)
            DA10(J1,K1) = DD12 + DD11
            DD11 = DD12 + DA10(I1+1,J1)
            DA10(J1,K1) = DD12 + DD11
            DD11 = DD12 + DA10(I1+2,J1)
            DA10(J1,K1) = DD12 + DD11
            DD11 = DD12 + DA10(I1+3,J1)
           END DO
           DO I1=II6,IL(III),1
            DA10(J1,K1) = DD12 + DD11
            DD11 = DD12 + DA10(I1,J1)
           END DO
           DA30(K1,J1) = DD11
          END IF
         END DO
        END DO
       END DO

       DO III=10,30,10
        IF (IL(III) .GT. 0) THEN
         II1 = IL(III)
         DC1 = 1 / (2.D0,2.D0)
         II9 = II1 / 4
         II8 = II9 * 4 + 1
         DO J1=2,15
          DO I1=1,II1-3,4
           DC3 = CD20(I1,30-J1) * DC1
           DC4 = CD20(I1+1,30-J1) * DC1
           DC5 = CD20(I1+2,30-J1) * DC1
           DC2 = CD20(I1+3,30-J1) * DC1
           DC6 = DC3 + CD30(I1,J1)
           DC7 = DC4 + CD30(I1+1,J1)
           DC8 = DC5 + CD30(I1+2,J1)
           DC9 = DC2 + CD30(I1+3,J1)
           CD10(I1,30-J1) = DC6
           CD20(I1,31-J1) = CD30(I1,J1+1) - CD10(I1,1)
           CD10(I1+1,30-J1) = DC7
           CD20(I1+1,31-J1) = CD30(I1+1,J1+1) - CD10(I1+1,1)
           CD10(I1+2,30-J1) = DC8
           CD20(I1+2,31-J1) = CD30(I1+2,J1+1) - CD10(I1+2,1)
           CD10(I1+3,30-J1) = DC9
           CD20(I1+3,31-J1) = CD30(I1+3,J1+1) - CD10(I1+3,1)
          END DO
          DO I1=II8,II1,1
           DC2 = CD20(I1,30-J1) * DC1
           DC10 = DC2 + CD30(I1,J1)
           CD10(I1,30-J1) = DC10
           CD20(I1,31-J1) = CD30(I1,J1+1) - CD10(I1,1)
          END DO
         END DO
        END IF
       END DO
       DD17 = 1 / 3D0
       DD18 = 1 / 4D0


       DO I2=2,10
        DD20(IL(I2)) = DD20(IL(I2)) + DD30(IL(I2)) - DD40(I2)
        DD15 = DD17
        DD16 = DD18
        DO J2=20,11,-1
         DD13 = DD15
         DD14 = DD16
         DO K2=J2,30
          DX1 = DNINT (DA20(J2,K2) + DA10(J2,K2) * DD13)
          DY1 = DNINT (DA30(J2,K2) + DA10(J2,K2) * DD14)
          CDE1(J2,K2) = DCMPLX (DX1, DY1)
          IF (DX1 .GT. DY1) THEN
           GO TO 21
          END IF
          ICNT = ICNT + 1
          DA20(J2,K2) = DX1
          GO TO 22
   21     DA30(J2,K2) = DY1
          GO TO 23
   22     DA10(J2,K2) = DX1 + DY1
   23     CONTINUE
         END DO
         DA10(20,J2) = DREAL (CD10(I2,J2))
        END DO
        DD30(IL(I2)) = DD20(IL(I2)) * DD1
       END DO
       WRITE (6, *) ' ICNT = ', ICNT
       WRITE (6, *) ' (DA10) ', DA10
       WRITE (6, *) ' (DA20) ', DA20
       WRITE (6, *) ' (DA30) ', DA30
       WRITE (6, *) ' (CD10) ', CD10
       WRITE (6, *) ' (CD20) ', CD20
       WRITE (6, *) ' (CD30) ', CD30
       WRITE (6, *) ' (DD10) ', DD10
       WRITE (6, *) ' (CDE1) ', CDE1
       WRITE (6, *) ' (LD10) ', LD10

       ICNT = 0
       DVAL = 0D0
       DO J=1,20,1
        DO I=1,20,1
         DVAL = DMAX1 (DVAL, DA10(I,J), DA20(I,J), DA30(I,J))
         IF (LD10(I,J)) THEN
          ICNT = ICNT + 1
         END IF
        END DO
       END DO
       WRITE (6, *) ' DVAL = ', DVAL
       WRITE (6, *) ' ICNT = ', ICNT

       STOP 
      END
