      PROGRAM MAIN
       IMPLICIT REAL*8 (D), LOGICAL*4 (L)
       DIMENSION DA10(20), DA20(20), DA30(20), DA40(20), DB10(20,20), 
     X   DB20(20,20), DB30(20,20), DC10(20,20,20), DC20(20,20,20), DC30(
     X   20,20,20), DD10(10,10,10,10)
       DIMENSION LD10(20), LD30(20,20,20)
       INTEGER IT3, IT2, IT1
       PARAMETER (IT3 = 10, IT2 = 2, IT1 = 1)
       DOUBLEPRECISION DD1
       PARAMETER (DD1 = 1D0 / 2D0)
       DATA DA10/20*1.D0/ 
       DATA DA20/20*2.D0/ 
       DATA DA30/20*3.D0/ 
       DATA DA40/20*4.D0/ 
       DATA DB10/400*2.D0/ 
       DATA DB30/400*1.D0/ 
       DATA DB20/400*4.D0/ 
       DATA DC10/8000*1.D0/ 
       DATA DC20/8000*2.D0/ 
       DATA DC30/8000*3.D0/ 
       DATA DD10/10000*1.D0/ 
       DATA LD10/20*.FALSE./ 
       DATA LD30/8000*.FALSE./ 
       INTEGER II6, II5, II4, II3, II2, II1, K1, I5
       DOUBLE PRECISION DD100, DD99, DD98, DD97, DD96, DD95, DD94, DD93
     X   , DD92, DD91, DD90, DD89, DD88, DD87, DD86, DD85, DD84, DD83, 
     X   DD82, DD81, DD80, DD79, DD78, DD77, DD76, DD75, DD74, DD73, 
     X   DD72, DD71, DD70, DD69, DD68, DD67, DD66, DD65, DD64, DD63, 
     X   DD62, DD61
       DOUBLE PRECISION DD60, DD59, DD58, DD57, DD56, DD55, DD54, DD53, 
     X   DD52, DD51, DD50, DD49, DD48, DD47, DD46, DD45, DD44, DD43, 
     X   DD42, DD41, DD40, DD39, DD38, DD37, DD36, DD35, DD34, DD33, 
     X   DD32, DD31, DD30, DD29, DD28, DD27, DD26, DD25, DD24, DD23, 
     X   DD22, DD21
       DOUBLE PRECISION DD20, DD19, DD18, DD17, DD16, DD15, DD14, DD13, 
     X   DD12, DD11, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2

       DD2 = DA40(1)
       DO I5=1,6,5
        DA10(I5) = DA20(I5+1) + DA30(I5+10)
        DD2 = DD2 + DB10(I5,1)
        DA10(I5+1) = DA20(I5+2) + DA30(I5+11)
        DD2 = DD2 + DB10(I5+1,1)
        DA10(I5+2) = DA20(I5+3) + DA30(I5+12)
        DD2 = DD2 + DB10(I5+2,1)
        DA10(I5+3) = DA20(I5+4) + DA30(I5+13)
        DD2 = DD2 + DB10(I5+3,1)
        DA10(I5+4) = DA20(I5+5) + DA30(I5+14)
        DD2 = DD2 + DB10(I5+4,1)
       END DO
       DA40(1) = DD2

       DO I5=1,6,5
        DD11 = DA40(I5+2) * DA30(I5)
        DD12 = DA40(I5+3) * DA30(I5+1)
        DD13 = DA40(I5+4) * DA30(I5+2)
        DD14 = DA40(I5+5) * DA30(I5+3)
        DD5 = DA40(I5+6) * DA30(I5+4)
        DA20(I5) = DD11 - DA10(I5)
        DA20(I5+1) = DD12 - DA10(I5+1)
        DA20(I5+2) = DD13 - DA10(I5+2)
        DA20(I5+3) = DD14 - DA10(I5+3)
        DA20(I5+4) = DD5 - DA10(I5+4)
       END DO
       DO J=11,20
        DD3 = DB30(10,J)
        DO I5=1,6,5
         DB10(I5,J) = DB20(I5,J) + DD3
         DB10(I5+1,J) = DB20(I5+1,J) + DD3
         DB10(I5+2,J) = DB20(I5+2,J) + DD3
         DB10(I5+3,J) = DB20(I5+3,J) + DD3
         DB10(I5+4,J) = DB20(I5+4,J) + DD3
        END DO
        DO K1=1,J-4,4
         DO I5=1,6,5
          DC10(I5,J,K1) = DC20(I5,J,K1) + DB10(I5,K1)
          DC10(I5+1,J,K1) = DC20(I5+1,J,K1) + DB10(I5+1,K1)
          DC10(I5+2,J,K1) = DC20(I5+2,J,K1) + DB10(I5+2,K1)
          DC10(I5+3,J,K1) = DC20(I5+3,J,K1) + DB10(I5+3,K1)
          DC10(I5+4,J,K1) = DC20(I5+4,J,K1) + DB10(I5+4,K1)
          DC10(I5,J,K1+1) = DC20(I5,J,K1+1) + DB10(I5,K1+1)
          DC10(I5+1,J,K1+1) = DC20(I5+1,J,K1+1) + DB10(I5+1,K1+1)
          DC10(I5+2,J,K1+1) = DC20(I5+2,J,K1+1) + DB10(I5+2,K1+1)
          DC10(I5+3,J,K1+1) = DC20(I5+3,J,K1+1) + DB10(I5+3,K1+1)
          DC10(I5+4,J,K1+1) = DC20(I5+4,J,K1+1) + DB10(I5+4,K1+1)
          DC10(I5,J,K1+2) = DC20(I5,J,K1+2) + DB10(I5,K1+2)
          DC10(I5+1,J,K1+2) = DC20(I5+1,J,K1+2) + DB10(I5+1,K1+2)
          DC10(I5+2,J,K1+2) = DC20(I5+2,J,K1+2) + DB10(I5+2,K1+2)
          DC10(I5+3,J,K1+2) = DC20(I5+3,J,K1+2) + DB10(I5+3,K1+2)
          DC10(I5+4,J,K1+2) = DC20(I5+4,J,K1+2) + DB10(I5+4,K1+2)
          DC10(I5,J,K1+3) = DC20(I5,J,K1+3) + DB10(I5,K1+3)
          DC10(I5+1,J,K1+3) = DC20(I5+1,J,K1+3) + DB10(I5+1,K1+3)
          DC10(I5+2,J,K1+3) = DC20(I5+2,J,K1+3) + DB10(I5+2,K1+3)
          DC10(I5+3,J,K1+3) = DC20(I5+3,J,K1+3) + DB10(I5+3,K1+3)
          DC10(I5+4,J,K1+3) = DC20(I5+4,J,K1+3) + DB10(I5+4,K1+3)
         END DO
        END DO
        DO K1=K1,J-1,1
         DO I5=1,6,5
          DC10(I5,J,K1) = DC20(I5,J,K1) + DB10(I5,K1)
          DC10(I5+1,J,K1) = DC20(I5+1,J,K1) + DB10(I5+1,K1)
          DC10(I5+2,J,K1) = DC20(I5+2,J,K1) + DB10(I5+2,K1)
          DC10(I5+3,J,K1) = DC20(I5+3,J,K1) + DB10(I5+3,K1)
          DC10(I5+4,J,K1) = DC20(I5+4,J,K1) + DB10(I5+4,K1)
         END DO
        END DO
       END DO
       DO J=11,18,3

        DO I5=1,6,5
         DD32 = DB30(I5,J) * 2D0
         DD34 = DB30(I5+1,J) * 2D0
         DD36 = DB30(I5+2,J) * 2D0
         DD38 = DB30(I5+3,J) * 2D0
         DD40 = DB30(I5+4,J) * 2D0
         DD42 = DB30(I5,J+1) * 2D0
         DD44 = DB30(I5+1,J+1) * 2D0
         DD46 = DB30(I5+2,J+1) * 2D0
         DD48 = DB30(I5+3,J+1) * 2D0
         DD50 = DB30(I5+4,J+1) * 2D0
         DD52 = DB30(I5,J+2) * 2D0
         DD54 = DB30(I5+1,J+2) * 2D0
         DD56 = DB30(I5+2,J+2) * 2D0
         DD58 = DB30(I5+3,J+2) * 2D0
         DD60 = DB30(I5+4,J+2) * 2D0
         DD15 = DMAX1 (DB10(I5,J), DD32)
         DD16 = DMAX1 (DB10(I5+1,J), DD34)
         DD17 = DMAX1 (DB10(I5+2,J), DD36)
         DD18 = DMAX1 (DB10(I5+3,J), DD38)
         DD7 = DMAX1 (DB10(I5+4,J), DD40)
         DD19 = DD15 + DB20(I5+10,J)
         DD20 = DD16 + DB20(I5+11,J)
         DD21 = DD17 + DB20(I5+12,J)
         DD22 = DD18 + DB20(I5+13,J)
         DD6 = DD7 + DB20(I5+14,J)
         DD31 = DD19 - DB10(I5,J-1)
         DD33 = DD20 - DB10(I5+1,J-1)
         DD35 = DD21 - DB10(I5+2,J-1)
         DD37 = DD22 - DB10(I5+3,J-1)
         DD39 = DD6 - DB10(I5+4,J-1)
         DD15 = DMAX1 (DB10(I5,J+1), DD42)
         DD16 = DMAX1 (DB10(I5+1,J+1), DD44)
         DD17 = DMAX1 (DB10(I5+2,J+1), DD46)
         DD18 = DMAX1 (DB10(I5+3,J+1), DD48)
         DD7 = DMAX1 (DB10(I5+4,J+1), DD50)
         DB30(I5,J) = DD31
         DD19 = DD15 + DB20(I5+10,J+1)
         DB30(I5+1,J) = DD33
         DD20 = DD16 + DB20(I5+11,J+1)
         DB30(I5+2,J) = DD35
         DD21 = DD17 + DB20(I5+12,J+1)
         DB30(I5+3,J) = DD37
         DD22 = DD18 + DB20(I5+13,J+1)
         DB30(I5+4,J) = DD39
         DD6 = DD7 + DB20(I5+14,J+1)
         DD41 = DD19 - DB10(I5,J)
         DD43 = DD20 - DB10(I5+1,J)
         DD45 = DD21 - DB10(I5+2,J)
         DD47 = DD22 - DB10(I5+3,J)
         DD49 = DD6 - DB10(I5+4,J)
         DD15 = DMAX1 (DB10(I5,J+2), DD52)
         DD16 = DMAX1 (DB10(I5+1,J+2), DD54)
         DD17 = DMAX1 (DB10(I5+2,J+2), DD56)
         DD18 = DMAX1 (DB10(I5+3,J+2), DD58)
         DD7 = DMAX1 (DB10(I5+4,J+2), DD60)
         DB30(I5,J+1) = DD41
         DD19 = DD15 + DB20(I5+10,J+2)
         DB30(I5+1,J+1) = DD43
         DD20 = DD16 + DB20(I5+11,J+2)
         DB30(I5+2,J+1) = DD45
         DD21 = DD17 + DB20(I5+12,J+2)
         DB30(I5+3,J+1) = DD47
         DD22 = DD18 + DB20(I5+13,J+2)
         DB30(I5+4,J+1) = DD49
         DD6 = DD7 + DB20(I5+14,J+2)
         DD51 = DD19 - DB10(I5,J+1)
         DD53 = DD20 - DB10(I5+1,J+1)
         DD55 = DD21 - DB10(I5+2,J+1)
         DD57 = DD22 - DB10(I5+3,J+1)
         DD59 = DD6 - DB10(I5+4,J+1)
         DB30(I5+4,J+2) = DD59
         DB30(I5+3,J+2) = DD57
         DB30(I5+2,J+2) = DD55
         DB30(I5+1,J+2) = DD53
         DB30(I5,J+2) = DD51
         DB20(I5+4,J+2) = DD60
         DB20(I5+3,J+2) = DD58
         DB20(I5+2,J+2) = DD56
         DB20(I5+1,J+2) = DD54
         DB20(I5,J+2) = DD52
         DB20(I5+4,J+1) = DD50
         DB20(I5+3,J+1) = DD48
         DB20(I5+2,J+1) = DD46
         DB20(I5+1,J+1) = DD44
         DB20(I5,J+1) = DD42
         DB20(I5+4,J) = DD40
         DB20(I5+3,J) = DD38
         DB20(I5+2,J) = DD36
         DB20(I5+1,J) = DD34
         DB20(I5,J) = DD32
        END DO
       END DO

       DO I5=1,6,5
        DD62 = DB30(I5,20) * 2D0
        DD64 = DB30(I5+1,20) * 2D0
        DD66 = DB30(I5+2,20) * 2D0
        DD68 = DB30(I5+3,20) * 2D0
        DD70 = DB30(I5+4,20) * 2D0
        DD23 = DMAX1 (DB10(I5,20), DD62)
        DD24 = DMAX1 (DB10(I5+1,20), DD64)
        DD25 = DMAX1 (DB10(I5+2,20), DD66)
        DD26 = DMAX1 (DB10(I5+3,20), DD68)
        DD9 = DMAX1 (DB10(I5+4,20), DD70)
        DD27 = DD23 + DB20(I5+10,20)
        DD28 = DD24 + DB20(I5+11,20)
        DD29 = DD25 + DB20(I5+12,20)
        DD30 = DD26 + DB20(I5+13,20)
        DD8 = DD9 + DB20(I5+14,20)
        DD61 = DD27 - DB10(I5,19)
        DD63 = DD28 - DB10(I5+1,19)
        DD65 = DD29 - DB10(I5+2,19)
        DD67 = DD30 - DB10(I5+3,19)
        DD69 = DD8 - DB10(I5+4,19)
        DB30(I5+4,20) = DD69
        DB30(I5+3,20) = DD67
        DB30(I5+2,20) = DD65
        DB30(I5+1,20) = DD63
        DB30(I5,20) = DD61
        DB20(I5+4,20) = DD70
        DB20(I5+3,20) = DD68
        DB20(I5+2,20) = DD66
        DB20(I5+1,20) = DD64
        DB20(I5,20) = DD62
       END DO
C$OMP PARALLEL SHARED (DC20,DC30,DC10) PRIVATE (J,K1,I5)
C$OMP DO 
       DO J=11,20
        DO K1=1,J-4,4

         DO I5=1,6,5
          DC20(I5,J,K1) = DC30(I5,J,K1) + DC10(I5,J-1,K1)
          DC20(I5+1,J,K1) = DC30(I5+1,J,K1) + DC10(I5+1,J-1,K1)
          DC20(I5+2,J,K1) = DC30(I5+2,J,K1) + DC10(I5+2,J-1,K1)
          DC20(I5+3,J,K1) = DC30(I5+3,J,K1) + DC10(I5+3,J-1,K1)
          DC20(I5+4,J,K1) = DC30(I5+4,J,K1) + DC10(I5+4,J-1,K1)
          DC20(I5,J,K1+1) = DC30(I5,J,K1+1) + DC10(I5,J-1,K1+1)
          DC20(I5+1,J,K1+1) = DC30(I5+1,J,K1+1) + DC10(I5+1,J-1,K1+1)
          DC20(I5+2,J,K1+1) = DC30(I5+2,J,K1+1) + DC10(I5+2,J-1,K1+1)
          DC20(I5+3,J,K1+1) = DC30(I5+3,J,K1+1) + DC10(I5+3,J-1,K1+1)
          DC20(I5+4,J,K1+1) = DC30(I5+4,J,K1+1) + DC10(I5+4,J-1,K1+1)
          DC20(I5,J,K1+2) = DC30(I5,J,K1+2) + DC10(I5,J-1,K1+2)
          DC20(I5+1,J,K1+2) = DC30(I5+1,J,K1+2) + DC10(I5+1,J-1,K1+2)
          DC20(I5+2,J,K1+2) = DC30(I5+2,J,K1+2) + DC10(I5+2,J-1,K1+2)
          DC20(I5+3,J,K1+2) = DC30(I5+3,J,K1+2) + DC10(I5+3,J-1,K1+2)
          DC20(I5+4,J,K1+2) = DC30(I5+4,J,K1+2) + DC10(I5+4,J-1,K1+2)
          DC20(I5,J,K1+3) = DC30(I5,J,K1+3) + DC10(I5,J-1,K1+3)
          DC20(I5+1,J,K1+3) = DC30(I5+1,J,K1+3) + DC10(I5+1,J-1,K1+3)
          DC20(I5+2,J,K1+3) = DC30(I5+2,J,K1+3) + DC10(I5+2,J-1,K1+3)
          DC20(I5+3,J,K1+3) = DC30(I5+3,J,K1+3) + DC10(I5+3,J-1,K1+3)
          DC20(I5+4,J,K1+3) = DC30(I5+4,J,K1+3) + DC10(I5+4,J-1,K1+3)
         END DO
        END DO
        DO K1=K1,J-1,1

         DO I5=1,6,5
          DC20(I5,J,K1) = DC30(I5,J,K1) + DC10(I5,J-1,K1)
          DC20(I5+1,J,K1) = DC30(I5+1,J,K1) + DC10(I5+1,J-1,K1)
          DC20(I5+2,J,K1) = DC30(I5+2,J,K1) + DC10(I5+2,J-1,K1)
          DC20(I5+3,J,K1) = DC30(I5+3,J,K1) + DC10(I5+3,J-1,K1)
          DC20(I5+4,J,K1) = DC30(I5+4,J,K1) + DC10(I5+4,J-1,K1)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       DO I5=1,6,5
        DA30(I5) = DA30(I5+1) - DA10(I5) + DA20(I5)
        DA30(I5+1) = DA30(I5+2) - DA10(I5+1) + DA20(I5+1)
        DA30(I5+2) = DA30(I5+3) - DA10(I5+2) + DA20(I5+2)
        DA30(I5+3) = DA30(I5+4) - DA10(I5+3) + DA20(I5+3)
        DA30(I5+4) = DA30(I5+5) - DA10(I5+4) + DA20(I5+4)
       END DO

       WRITE (6, *) ' (DA10) ', (DA10(K), K=1,10)
       WRITE (6, *) ' (DA20) ', (DA20(K), K=1,10)
       WRITE (6, *) ' (DA30) ', (DA30(K), K=1,10)
       WRITE (6, *) ' (DA40) ', DA40(1)
       DO J=11,20
        WRITE (6, *) ' (DB10) ', (DB10(I,J), I=1,10)
        WRITE (6, *) ' (DB20) ', (DB20(I,J), I=1,10)
        WRITE (6, *) ' (DB30) ', (DB30(I,J), I=1,10)
        DO K1=1,20
         WRITE (6, *) ' (DC10) ', (DC10(I,J,K1), I=1,10)
         WRITE (6, *) ' (DC20) ', (DC20(I,J,K1), I=1,10)
        END DO
       END DO

       DO I5=1,9
        II2 = (11 - I5) / 4
        II1 = I5 + II2 * 4
        DO J=I5,7,4
         DB30(I5,J) = DB10(I5,J+1) + DB20(I5+1,J)
         DB30(I5,J+1) = DB10(I5,J+2) + DB20(I5+1,J+1)
         DB30(I5,J+2) = DB10(I5,J+3) + DB20(I5+1,J+2)
         DB30(I5,J+3) = DB10(I5,J+4) + DB20(I5+1,J+3)
        END DO
        DO J=II1,10,1
         DB30(I5,J) = DB10(I5,J+1) + DB20(I5+1,J)
        END DO
       END DO
C$OMP PARALLEL SHARED (DC30,DC20,DC10,DD10,LD30) PRIVATE (II4,II3,K1,I5,
C$OMP& J)
C$OMP DO 
       DO K1=10,2,-1

        DO I5=1,9
         II4 = (11 - I5) / 4
         II3 = I5 + II4 * 4
         DO J=I5,7,4
          DC30(I5,J,K1) = DC20(I5,J,K1-1) - DC10(I5,J,K1)
          DC30(I5,J+1,K1) = DC20(I5,J+1,K1-1) - DC10(I5,J+1,K1)
          DC30(I5,J+2,K1) = DC20(I5,J+2,K1-1) - DC10(I5,J+2,K1)
          DC30(I5,J+3,K1) = DC20(I5,J+3,K1-1) - DC10(I5,J+3,K1)
         END DO
         DO J=II3,10,1
          DC30(I5,J,K1) = DC20(I5,J,K1-1) - DC10(I5,J,K1)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO K1=10,2,-1
        DO I5=1,9
         DO J=I5,10
          DC20(I5,J,K1) = DC30(I5+10,J,K1) + DD10(I5,J,K1,2)
          IF (DC30(I5,J,K1) .GT. DC20(I5,J,K1)) THEN
           LD30(I5,J,K1) = .TRUE.
          END IF
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       DO I5=1,9
        II6 = (11 - I5) / 4
        II5 = I5 + II6 * 4
        DO J=I5,7,4
         DB10(I5,J) = DB30(I5,J) + DA10(J+1)
         DB10(I5,J+1) = DB30(I5,J+1) + DA10(J+2)
         DB10(I5,J+2) = DB30(I5,J+2) + DA10(J+3)
         DB10(I5,J+3) = DB30(I5,J+3) + DA10(J+4)
         DB20(I5,J) = DB30(I5,J) + DA20(J+2)
         DB20(I5,J+1) = DB30(I5,J+1) + DA20(J+3)
         DB20(I5,J+2) = DB30(I5,J+2) + DA20(J+4)
         DB20(I5,J+3) = DB30(I5,J+3) + DA20(J+5)
        END DO
        DO J=II5,10,1
         DB10(I5,J) = DB30(I5,J) + DA10(J+1)
         DB20(I5,J) = DB30(I5,J) + DA20(J+2)
        END DO
        DA10(I5) = DA30(I5) + DA40(I5)
        DA20(I5) = DMAX1 (DA30(I5), DA40(I5))
       END DO
       WRITE (6, *) ' (DA10) ', (DA10(K), K=1,10)
       WRITE (6, *) ' (DA20) ', (DA20(K), K=1,10)
       DO J=1,10
        WRITE (6, *) ' (DB10) ', (DB10(I,J), I=1,10)
        WRITE (6, *) ' (DB20) ', (DB20(I,J), I=1,10)
        WRITE (6, *) ' (DB30) ', (DB30(I,J), I=1,10)
        DO K1=10,20
         WRITE (6, *) ' (DC20) ', (DC20(I,J,K1), I=1,10)
         WRITE (6, *) ' (DC30) ', (DC30(I,J,K1), I=1,10)
         WRITE (6, *) ' (LD30) ', (LD30(I,J,K1), I=1,10)
        END DO
       END DO
       DO I2=1,10

        DO I1=11,16,5
         DB20(I1,I2) = DC30(I1,10,I2) + DC10(10,I1,I2)
         DB20(I1+1,I2) = DC30(I1+1,10,I2) + DC10(10,I1+1,I2)
         DB20(I1+2,I2) = DC30(I1+2,10,I2) + DC10(10,I1+2,I2)
         DB20(I1+3,I2) = DC30(I1+3,10,I2) + DC10(10,I1+3,I2)
         DB20(I1+4,I2) = DC30(I1+4,10,I2) + DC10(10,I1+4,I2)
        END DO
        DO I3=2,I2-3,4
         DO I1=11,16,5
          DC30(I1,10,I3) = DC20(I1,I2,I3) * DD1
          DC30(I1+1,10,I3) = DC20(I1+1,I2,I3) * DD1
          DC30(I1+2,10,I3) = DC20(I1+2,I2,I3) * DD1
          DC30(I1+3,10,I3) = DC20(I1+3,I2,I3) * DD1
          DC30(I1+4,10,I3) = DC20(I1+4,I2,I3) * DD1
          DC30(I1,10,I3+1) = DC20(I1,I2,I3+1) * DD1
          DC30(I1+1,10,I3+1) = DC20(I1+1,I2,I3+1) * DD1
          DC30(I1+2,10,I3+1) = DC20(I1+2,I2,I3+1) * DD1
          DC30(I1+3,10,I3+1) = DC20(I1+3,I2,I3+1) * DD1
          DC30(I1+4,10,I3+1) = DC20(I1+4,I2,I3+1) * DD1
          DC30(I1,10,I3+2) = DC20(I1,I2,I3+2) * DD1
          DC30(I1+1,10,I3+2) = DC20(I1+1,I2,I3+2) * DD1
          DC30(I1+2,10,I3+2) = DC20(I1+2,I2,I3+2) * DD1
          DC30(I1+3,10,I3+2) = DC20(I1+3,I2,I3+2) * DD1
          DC30(I1+4,10,I3+2) = DC20(I1+4,I2,I3+2) * DD1
          DC30(I1,10,I3+3) = DC20(I1,I2,I3+3) * DD1
          DC30(I1+1,10,I3+3) = DC20(I1+1,I2,I3+3) * DD1
          DC30(I1+2,10,I3+3) = DC20(I1+2,I2,I3+3) * DD1
          DC30(I1+3,10,I3+3) = DC20(I1+3,I2,I3+3) * DD1
          DC30(I1+4,10,I3+3) = DC20(I1+4,I2,I3+3) * DD1
         END DO
        END DO
        DO I3=I3,I2,1
         DO I1=11,16,5
          DC30(I1,10,I3) = DC20(I1,I2,I3) * DD1
          DC30(I1+1,10,I3) = DC20(I1+1,I2,I3) * DD1
          DC30(I1+2,10,I3) = DC20(I1+2,I2,I3) * DD1
          DC30(I1+3,10,I3) = DC20(I1+3,I2,I3) * DD1
          DC30(I1+4,10,I3) = DC20(I1+4,I2,I3) * DD1
         END DO
        END DO
       END DO
       DO I2=1,10
        DD4 = DA10(I2)

        DO I1=11,16,5
         DD71 = DA30(I1) + DD4 + DB10(I1,I2)
         DD72 = DA30(I1+1) + DD4 + DB10(I1+1,I2)
         DD73 = DA30(I1+2) + DD4 + DB10(I1+2,I2)
         DD74 = DA30(I1+3) + DD4 + DB10(I1+3,I2)
         DD75 = DA30(I1+4) + DD4 + DB10(I1+4,I2)
         DA30(I1+4) = DD75
         DA30(I1+3) = DD74
         DA30(I1+2) = DD73
         DA30(I1+1) = DD72
         DA30(I1) = DD71
        END DO
        DO I3=2,I2
         DO I4=I3,7,4
          DO I1=11,16,5
           DD76 = DD10(I1-10,I2,I3,I4) + DC20(I1,I2,I4)
           DD77 = DD10(I1-9,I2,I3,I4) + DC20(I1+1,I2,I4)
           DD78 = DD10(I1-8,I2,I3,I4) + DC20(I1+2,I2,I4)
           DD79 = DD10(I1-7,I2,I3,I4) + DC20(I1+3,I2,I4)
           DD80 = DD10(I1-6,I2,I3,I4) + DC20(I1+4,I2,I4)
           DD81 = DD10(I1-10,I2,I3,I4+1) + DC20(I1,I2,I4+1)
           DD82 = DD10(I1-9,I2,I3,I4+1) + DC20(I1+1,I2,I4+1)
           DD83 = DD10(I1-8,I2,I3,I4+1) + DC20(I1+2,I2,I4+1)
           DD84 = DD10(I1-7,I2,I3,I4+1) + DC20(I1+3,I2,I4+1)
           DD85 = DD10(I1-6,I2,I3,I4+1) + DC20(I1+4,I2,I4+1)
           DD86 = DD10(I1-10,I2,I3,I4+2) + DC20(I1,I2,I4+2)
           DD87 = DD10(I1-9,I2,I3,I4+2) + DC20(I1+1,I2,I4+2)
           DD88 = DD10(I1-8,I2,I3,I4+2) + DC20(I1+2,I2,I4+2)
           DD89 = DD10(I1-7,I2,I3,I4+2) + DC20(I1+3,I2,I4+2)
           DD90 = DD10(I1-6,I2,I3,I4+2) + DC20(I1+4,I2,I4+2)
           DD91 = DD10(I1-10,I2,I3,I4+3) + DC20(I1,I2,I4+3)
           DD92 = DD10(I1-9,I2,I3,I4+3) + DC20(I1+1,I2,I4+3)
           DD93 = DD10(I1-8,I2,I3,I4+3) + DC20(I1+2,I2,I4+3)
           DD94 = DD10(I1-7,I2,I3,I4+3) + DC20(I1+3,I2,I4+3)
           DD95 = DD10(I1-6,I2,I3,I4+3) + DC20(I1+4,I2,I4+3)
           DD10(I1-6,I2,I3,I4+3) = DD95
           DD10(I1-7,I2,I3,I4+3) = DD94
           DD10(I1-8,I2,I3,I4+3) = DD93
           DD10(I1-9,I2,I3,I4+3) = DD92
           DD10(I1-10,I2,I3,I4+3) = DD91
           DD10(I1-6,I2,I3,I4+2) = DD90
           DD10(I1-7,I2,I3,I4+2) = DD89
           DD10(I1-8,I2,I3,I4+2) = DD88
           DD10(I1-9,I2,I3,I4+2) = DD87
           DD10(I1-10,I2,I3,I4+2) = DD86
           DD10(I1-6,I2,I3,I4+1) = DD85
           DD10(I1-7,I2,I3,I4+1) = DD84
           DD10(I1-8,I2,I3,I4+1) = DD83
           DD10(I1-9,I2,I3,I4+1) = DD82
           DD10(I1-10,I2,I3,I4+1) = DD81
           DD10(I1-6,I2,I3,I4) = DD80
           DD10(I1-7,I2,I3,I4) = DD79
           DD10(I1-8,I2,I3,I4) = DD78
           DD10(I1-9,I2,I3,I4) = DD77
           DD10(I1-10,I2,I3,I4) = DD76
          END DO
         END DO
         DO I4=I4,10,1
          DO I1=11,16,5
           DD96 = DD10(I1-10,I2,I3,I4) + DC20(I1,I2,I4)
           DD97 = DD10(I1-9,I2,I3,I4) + DC20(I1+1,I2,I4)
           DD98 = DD10(I1-8,I2,I3,I4) + DC20(I1+2,I2,I4)
           DD99 = DD10(I1-7,I2,I3,I4) + DC20(I1+3,I2,I4)
           DD100 = DD10(I1-6,I2,I3,I4) + DC20(I1+4,I2,I4)
           DD10(I1-6,I2,I3,I4) = DD100
           DD10(I1-7,I2,I3,I4) = DD99
           DD10(I1-8,I2,I3,I4) = DD98
           DD10(I1-9,I2,I3,I4) = DD97
           DD10(I1-10,I2,I3,I4) = DD96
          END DO
         END DO
         DO I1=11,16,5
          DC20(I1,I2,I3) = DC30(I1,I2,I3) + DC10(10,I1,I3)
          DC20(I1+1,I2,I3) = DC30(I1+1,I2,I3) + DC10(10,I1+1,I3)
          DC20(I1+2,I2,I3) = DC30(I1+2,I2,I3) + DC10(10,I1+2,I3)
          DC20(I1+3,I2,I3) = DC30(I1+3,I2,I3) + DC10(10,I1+3,I3)
          DC20(I1+4,I2,I3) = DC30(I1+4,I2,I3) + DC10(10,I1+4,I3)
         END DO
        END DO
       END DO

       DO I1=11,16,5
        DA10(I1) = DA40(I1) + DA30(I1-1)
        DA10(I1+1) = DA40(I1+1) + DA30(I1)
        DA10(I1+2) = DA40(I1+2) + DA30(I1+1)
        DA10(I1+3) = DA40(I1+3) + DA30(I1+2)
        DA10(I1+4) = DA40(I1+4) + DA30(I1+3)
       END DO
       WRITE (6, *) (DA10(K), K=11,20)
       WRITE (6, *) ' (DA30) ', (DA30(K), K=11,20)
       DO J=1,10
        WRITE (6, *) ' (DB20) ', (DB20(I,J), I=11,20)
        DO K1=1,10
         WRITE (6, *) ' (DC20) ', (DC20(I,J,K1), I=11,20)
        END DO
       END DO
       DO K1=1,10
        WRITE (6, *) ' (DC30) ', (DC30(I,10,K1), I=11,20)
       END DO

       STOP 
      END
 
 
 
