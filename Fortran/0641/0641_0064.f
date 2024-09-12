      PROGRAM MAIN
       IMPLICIT REAL*8 (A-B,D), LOGICAL*4 (L), COMPLEX*16 (C)
       DIMENSION DA10(50,50), DA20(50,50), DA30(50,50), DA40(50,50)
       DIMENSION CD20(50,50), CD10(50,50)
       COMMON /BLK/ CD10, CD20
       DOUBLE PRECISION DD5, DD4, DD3, DD2, DD1
       NN = 50
       DATA DA10/2500*1.0D0/ 
       DATA DA20/2500*2.0D0/ 
       DATA DA30/2500*3.0D0/ 
       DATA DA40/2500*4.0D0/ 
C$OMP PARALLEL SHARED (CD10,CD20) PRIVATE (DD1,DD2,DD3,DD4,DD5,J,DY,I)
C$OMP DO 
       DO J=1,50
        DY = DFLOAT (J)

        DO I=1,46,5
         DD2 = DFLOAT (I)
         DD3 = DFLOAT (I + 1)
         DD4 = DFLOAT (I + 2)
         DD5 = DFLOAT (I + 3)
         DD1 = DFLOAT (I + 4)
         CD10(I,J) = DCMPLX (DD2, DY)
         CD10(I+1,J) = DCMPLX (DD3, DY)
         CD10(I+2,J) = DCMPLX (DD4, DY)
         CD10(I+3,J) = DCMPLX (DD5, DY)
         CD10(I+4,J) = DCMPLX (DD1, DY)
         DD2 = DFLOAT (I)
         DD3 = DFLOAT (I + 1)
         DD4 = DFLOAT (I + 2)
         DD5 = DFLOAT (I + 3)
         DD1 = DFLOAT (I + 4)
         CD20(I,J) = DCMPLX (DY, DD2)
         CD20(I+1,J) = DCMPLX (DY, DD3)
         CD20(I+2,J) = DCMPLX (DY, DD4)
         CD20(I+3,J) = DCMPLX (DY, DD5)
         CD20(I+4,J) = DCMPLX (DY, DD1)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       CALL SUB1 (DA10,DA20,DA30,DA40,NN)
       WRITE (6, 9999) 'DA10=', DA10
       WRITE (6, 9999) 'DA20=', DA20
       WRITE (6, 9999) 'DA30=', DA30
       WRITE (6, 9999) 'DA40=', DA40
       WRITE (6, 9999) 'CD10=', CD10
       WRITE (6, 9999) 'CD20=', CD20
 9999  FORMAT(A,(10G20.6))
       STOP 
      END

      SUBROUTINE SUB1 ( DA10, DA20, DA30, DA40, NN )
       IMPLICIT REAL*8 (A-B,D), LOGICAL*4 (L), COMPLEX*16 (C)
       DIMENSION DA10(NN,NN), DA20(NN,NN), DA30(NN,NN), DA40(NN,NN)
       DIMENSION CD20(50,50), CD10(50,50)
       COMMON /BLK/ CD10, CD20
       INTEGER II41, II40, II38, II37, II36, II35, II34, II33, II32, 
     X   II31, II30, II29, II28, II27, II26, II25, II24, II23, II22, 
     X   II21, II20, II19, II18, II17, II16, II15, II14, II13, II12, 
     X   II11, II10, II9, II8, II7, II6, II5, II4, II3, II2, II1
       DOUBLE PRECISION DD96, DD95, DD94, DD93, DD92, DD91, DD90, DD89, 
     X   DD88, DD87, DD86, DD85, DD84, DD83, DD82, DD81, DD80, DD79, 
     X   DD78, DD77, DD76, DD75, DD74, DD73, DD72, DD71, DD70, DD69, 
     X   DD68, DD67, DD66, DD65, DD64, DD63, DD62, DD61, DD60, DD59, 
     X   DD58, DD57
       DOUBLE PRECISION DD56, DD55, DD54, DD53, DD52, DD51, DD50, DD49, 
     X   DD48, DD47, DD46, DD45, DD44, DD43, DD42, DD41, DD40, DD39, 
     X   DD38, DD37, DD36, DD35, DD34, DD33, DD32, DD31, DD30, DD29, 
     X   DD28, DD27, DD26, DD25, DD24, DD23, DD22, DD21, DD20, DD19, 
     X   DD18, DD17
       DOUBLE PRECISION DD16, DD15, DD14, DD13, DD12, DD11, DD10, DD9, 
     X   DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1
       LOGICAL LL2, LL1
       COMPLEX*16 CD201 (50,50), CD101 (50,50)

       II8 = (NN - 3) / 4
       II7 = II8 * 4 + 1
       II18 = (NN - 3) / 4
       II17 = II18 * 4 + 1
       II20 = (NN - 3) / 4
       II19 = II20 * 4 + 1
       II22 = (NN - 3) / 4
       II21 = II22 * 4 + 1
C$OMP PARALLEL SHARED (NN,DA10,II7,DA20,DA40,DA30,II17,CD10,II19,CD20,
C$OMP& II21) PRIVATE (I1,II,II2,DD1,DD2,DD3,DD4,DD5,DD6,DD7,DD8,II10,II9
C$OMP& ,DD16,DD17,DD18,DD19,II12,II11,DD20,DD21,DD22,II14,II13,DD23,DD24
C$OMP& ,DD25,DD26,DD27,DD28,DD29,DD30,DD31,DD32,DD33,DD34,II16,II15,DD35
C$OMP& ,DD36,DD37,DD44,DD45,DD46,DD47,DD48,DD49,DD50,DD51,DD52,DD53,DD54
C$OMP& ,DD55,DD56,DD57,DD58,DD59,DD60,DD61,DD62,DD63,DD64,DD65,DD66,DD67
C$OMP& ,DD68,DD69,DD70,DD71,DD72,DD73,DD74,DD75,DD76,DD77,DD78,DD79,DD80
C$OMP& ,DD81,II1,I2,DD82,DD83,DD84,DD85,DD86,CD101,II37,II38)
C$OMP DO 
       DO I1=1,NN-3
        DO II=1,NN-6,4
         DA10(II,I1) = 0D0
         DA10(II+1,I1) = 0D0
         DA10(II+2,I1) = 0D0
         DA10(II+3,I1) = 0D0
        END DO
        DO II=II7,NN-3,1
         DA10(II,I1) = 0D0
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO II1=1,NN-3,16
        II2 = MIN (NN - 3, II1 + 15)
        II10 = (II2 - II1 + 1) / 2
        II9 = II1 + II10 * 2
        II12 = (II2 - II1 + 1) / 4
        II11 = II1 + II12 * 4
        DO I2=1,NN-6,4
         DO II=1,NN-6,4
          DO I1=II1,II2-1,2
           DD16 = DA20(I1,I2) * DA40(I1,I2)
           DD2 = DA20(I1+1,I2) * DA40(I1+1,I2)
           DD17 = DA20(I1,I2) * DA40(I1,I2)
           DD3 = DA20(I1+1,I2) * DA40(I1+1,I2)
           DD18 = DA20(I1,I2) * DA40(I1,I2)
           DD4 = DA20(I1+1,I2) * DA40(I1+1,I2)
           DD19 = DA20(I1,I2) * DA40(I1,I2)
           DD1 = DA20(I1+1,I2) * DA40(I1+1,I2)
           DD44 = DA10(II,I1) + DD16
           DD45 = DA10(II,I1+1) + DD2
           DD46 = DA10(II+1,I1) + DD17
           DD47 = DA10(II+1,I1+1) + DD3
           DD48 = DA10(II+2,I1) + DD18
           DD49 = DA10(II+2,I1+1) + DD4
           DD50 = DA10(II+3,I1) + DD19
           DD51 = DA10(II+3,I1+1) + DD1
           DD16 = DA20(I1,I2+1) * DA40(I1,I2+1)
           DD2 = DA20(I1+1,I2+1) * DA40(I1+1,I2+1)
           DD17 = DA20(I1,I2+1) * DA40(I1,I2+1)
           DD3 = DA20(I1+1,I2+1) * DA40(I1+1,I2+1)
           DD18 = DA20(I1,I2+1) * DA40(I1,I2+1)
           DD4 = DA20(I1+1,I2+1) * DA40(I1+1,I2+1)
           DD19 = DA20(I1,I2+1) * DA40(I1,I2+1)
           DD1 = DA20(I1+1,I2+1) * DA40(I1+1,I2+1)
           DD44 = DD44 + DD16
           DD45 = DD45 + DD2
           DD46 = DD46 + DD17
           DD47 = DD47 + DD3
           DD48 = DD48 + DD18
           DD49 = DD49 + DD4
           DD50 = DD50 + DD19
           DD51 = DD51 + DD1
           DD16 = DA20(I1,I2+2) * DA40(I1,I2+2)
           DD2 = DA20(I1+1,I2+2) * DA40(I1+1,I2+2)
           DD17 = DA20(I1,I2+2) * DA40(I1,I2+2)
           DD3 = DA20(I1+1,I2+2) * DA40(I1+1,I2+2)
           DD18 = DA20(I1,I2+2) * DA40(I1,I2+2)
           DD4 = DA20(I1+1,I2+2) * DA40(I1+1,I2+2)
           DD19 = DA20(I1,I2+2) * DA40(I1,I2+2)
           DD1 = DA20(I1+1,I2+2) * DA40(I1+1,I2+2)
           DD44 = DD44 + DD16
           DD45 = DD45 + DD2
           DD46 = DD46 + DD17
           DD47 = DD47 + DD3
           DD48 = DD48 + DD18
           DD49 = DD49 + DD4
           DD50 = DD50 + DD19
           DD51 = DD51 + DD1
           DD16 = DA20(I1,I2+3) * DA40(I1,I2+3)
           DD2 = DA20(I1+1,I2+3) * DA40(I1+1,I2+3)
           DD17 = DA20(I1,I2+3) * DA40(I1,I2+3)
           DD3 = DA20(I1+1,I2+3) * DA40(I1+1,I2+3)
           DD18 = DA20(I1,I2+3) * DA40(I1,I2+3)
           DD4 = DA20(I1+1,I2+3) * DA40(I1+1,I2+3)
           DD19 = DA20(I1,I2+3) * DA40(I1,I2+3)
           DD1 = DA20(I1+1,I2+3) * DA40(I1+1,I2+3)
           DD44 = DD44 + DD16
           DD45 = DD45 + DD2
           DD46 = DD46 + DD17
           DD47 = DD47 + DD3
           DD48 = DD48 + DD18
           DD49 = DD49 + DD4
           DD50 = DD50 + DD19
           DD51 = DD51 + DD1
           DA10(II+3,I1+1) = DD51
           DA10(II+3,I1) = DD50
           DA10(II+2,I1+1) = DD49
           DA10(II+2,I1) = DD48
           DA10(II+1,I1+1) = DD47
           DA10(II+1,I1) = DD46
           DA10(II,I1+1) = DD45
           DA10(II,I1) = DD44
          END DO
          IF (II2 .GE. II9) THEN
           DD2 = DA20(II9,I2) * DA40(II9,I2)
           DD3 = DA20(II9,I2) * DA40(II9,I2)
           DD4 = DA20(II9,I2) * DA40(II9,I2)
           DD1 = DA20(II9,I2) * DA40(II9,I2)
           DA10(II,II9) = DA10(II,II9) + DD2
           DA10(II+1,II9) = DA10(II+1,II9) + DD3
           DA10(II+2,II9) = DA10(II+2,II9) + DD4
           DA10(II+3,II9) = DA10(II+3,II9) + DD1
           DD2 = DA20(II9,I2+1) * DA40(II9,I2+1)
           DD3 = DA20(II9,I2+1) * DA40(II9,I2+1)
           DD4 = DA20(II9,I2+1) * DA40(II9,I2+1)
           DD1 = DA20(II9,I2+1) * DA40(II9,I2+1)
           DA10(II,II9) = DA10(II,II9) + DD2
           DA10(II+1,II9) = DA10(II+1,II9) + DD3
           DA10(II+2,II9) = DA10(II+2,II9) + DD4
           DA10(II+3,II9) = DA10(II+3,II9) + DD1
           DD2 = DA20(II9,I2+2) * DA40(II9,I2+2)
           DD3 = DA20(II9,I2+2) * DA40(II9,I2+2)
           DD4 = DA20(II9,I2+2) * DA40(II9,I2+2)
           DD1 = DA20(II9,I2+2) * DA40(II9,I2+2)
           DA10(II,II9) = DA10(II,II9) + DD2
           DA10(II+1,II9) = DA10(II+1,II9) + DD3
           DA10(II+2,II9) = DA10(II+2,II9) + DD4
           DA10(II+3,II9) = DA10(II+3,II9) + DD1
           DD2 = DA20(II9,I2+3) * DA40(II9,I2+3)
           DD3 = DA20(II9,I2+3) * DA40(II9,I2+3)
           DD4 = DA20(II9,I2+3) * DA40(II9,I2+3)
           DD1 = DA20(II9,I2+3) * DA40(II9,I2+3)
           DA10(II,II9) = DA10(II,II9) + DD2
           DA10(II+1,II9) = DA10(II+1,II9) + DD3
           DA10(II+2,II9) = DA10(II+2,II9) + DD4
           DA10(II+3,II9) = DA10(II+3,II9) + DD1
          END IF
         END DO
         DO II=II,NN-3,1
          DO I1=II1,II2-3,4
           DD20 = DA20(I1,I2) * DA40(I1,I2)
           DD21 = DA20(I1+1,I2) * DA40(I1+1,I2)
           DD22 = DA20(I1+2,I2) * DA40(I1+2,I2)
           DD1 = DA20(I1+3,I2) * DA40(I1+3,I2)
           DD52 = DA10(II,I1) + DD20
           DD53 = DA10(II,I1+1) + DD21
           DD54 = DA10(II,I1+2) + DD22
           DD55 = DA10(II,I1+3) + DD1
           DD20 = DA20(I1,I2+1) * DA40(I1,I2+1)
           DD21 = DA20(I1+1,I2+1) * DA40(I1+1,I2+1)
           DD22 = DA20(I1+2,I2+1) * DA40(I1+2,I2+1)
           DD1 = DA20(I1+3,I2+1) * DA40(I1+3,I2+1)
           DD52 = DD52 + DD20
           DD53 = DD53 + DD21
           DD54 = DD54 + DD22
           DD55 = DD55 + DD1
           DD20 = DA20(I1,I2+2) * DA40(I1,I2+2)
           DD21 = DA20(I1+1,I2+2) * DA40(I1+1,I2+2)
           DD22 = DA20(I1+2,I2+2) * DA40(I1+2,I2+2)
           DD1 = DA20(I1+3,I2+2) * DA40(I1+3,I2+2)
           DD52 = DD52 + DD20
           DD53 = DD53 + DD21
           DD54 = DD54 + DD22
           DD55 = DD55 + DD1
           DD20 = DA20(I1,I2+3) * DA40(I1,I2+3)
           DD21 = DA20(I1+1,I2+3) * DA40(I1+1,I2+3)
           DD22 = DA20(I1+2,I2+3) * DA40(I1+2,I2+3)
           DD1 = DA20(I1+3,I2+3) * DA40(I1+3,I2+3)
           DD52 = DD52 + DD20
           DD53 = DD53 + DD21
           DD54 = DD54 + DD22
           DD55 = DD55 + DD1
           DA10(II,I1+3) = DD55
           DA10(II,I1+2) = DD54
           DA10(II,I1+1) = DD53
           DA10(II,I1) = DD52
          END DO
          DO I1=II11,II2,1
           DD1 = DA20(I1,I2) * DA40(I1,I2)
           DD56 = DA10(II,I1) + DD1
           DD1 = DA20(I1,I2+1) * DA40(I1,I2+1)
           DD56 = DD56 + DD1
           DD1 = DA20(I1,I2+2) * DA40(I1,I2+2)
           DD56 = DD56 + DD1
           DD1 = DA20(I1,I2+3) * DA40(I1,I2+3)
           DD56 = DD56 + DD1
           DA10(II,I1) = DD56
          END DO
         END DO
        END DO
        II14 = (II2 - II1 + 1) / 4
        II13 = II1 + II14 * 4
        II16 = (II2 - II1 + 1) / 4
        II15 = II1 + II16 * 4
        DO I2=I2,NN-3,1
         DO II=1,NN-6,4
          DO I1=II1,II2-3,4
           DD23 = DA20(I1,I2) * DA40(I1,I2)
           DD24 = DA20(I1+1,I2) * DA40(I1+1,I2)
           DD25 = DA20(I1+2,I2) * DA40(I1+2,I2)
           DD6 = DA20(I1+3,I2) * DA40(I1+3,I2)
           DD26 = DA20(I1,I2) * DA40(I1,I2)
           DD27 = DA20(I1+1,I2) * DA40(I1+1,I2)
           DD28 = DA20(I1+2,I2) * DA40(I1+2,I2)
           DD7 = DA20(I1+3,I2) * DA40(I1+3,I2)
           DD29 = DA20(I1,I2) * DA40(I1,I2)
           DD30 = DA20(I1+1,I2) * DA40(I1+1,I2)
           DD31 = DA20(I1+2,I2) * DA40(I1+2,I2)
           DD8 = DA20(I1+3,I2) * DA40(I1+3,I2)
           DD32 = DA20(I1,I2) * DA40(I1,I2)
           DD33 = DA20(I1+1,I2) * DA40(I1+1,I2)
           DD34 = DA20(I1+2,I2) * DA40(I1+2,I2)
           DD5 = DA20(I1+3,I2) * DA40(I1+3,I2)
           DD57 = DA10(II,I1) + DD23
           DD58 = DA10(II,I1+1) + DD24
           DD59 = DA10(II,I1+2) + DD25
           DD60 = DA10(II,I1+3) + DD6
           DD61 = DA10(II+1,I1) + DD26
           DD62 = DA10(II+1,I1+1) + DD27
           DD63 = DA10(II+1,I1+2) + DD28
           DD64 = DA10(II+1,I1+3) + DD7
           DD65 = DA10(II+2,I1) + DD29
           DD66 = DA10(II+2,I1+1) + DD30
           DD67 = DA10(II+2,I1+2) + DD31
           DD68 = DA10(II+2,I1+3) + DD8
           DD69 = DA10(II+3,I1) + DD32
           DD70 = DA10(II+3,I1+1) + DD33
           DD71 = DA10(II+3,I1+2) + DD34
           DD72 = DA10(II+3,I1+3) + DD5
           DA10(II+3,I1+3) = DD72
           DA10(II+3,I1+2) = DD71
           DA10(II+3,I1+1) = DD70
           DA10(II+3,I1) = DD69
           DA10(II+2,I1+3) = DD68
           DA10(II+2,I1+2) = DD67
           DA10(II+2,I1+1) = DD66
           DA10(II+2,I1) = DD65
           DA10(II+1,I1+3) = DD64
           DA10(II+1,I1+2) = DD63
           DA10(II+1,I1+1) = DD62
           DA10(II+1,I1) = DD61
           DA10(II,I1+3) = DD60
           DA10(II,I1+2) = DD59
           DA10(II,I1+1) = DD58
           DA10(II,I1) = DD57
          END DO
          DO I1=II13,II2,1
           DD6 = DA20(I1,I2) * DA40(I1,I2)
           DD7 = DA20(I1,I2) * DA40(I1,I2)
           DD8 = DA20(I1,I2) * DA40(I1,I2)
           DD5 = DA20(I1,I2) * DA40(I1,I2)
           DD73 = DA10(II,I1) + DD6
           DD74 = DA10(II+1,I1) + DD7
           DD75 = DA10(II+2,I1) + DD8
           DD76 = DA10(II+3,I1) + DD5
           DA10(II+3,I1) = DD76
           DA10(II+2,I1) = DD75
           DA10(II+1,I1) = DD74
           DA10(II,I1) = DD73
          END DO
         END DO
         DO II=II,NN-3,1
          DO I1=II1,II2-3,4
           DD35 = DA20(I1,I2) * DA40(I1,I2)
           DD36 = DA20(I1+1,I2) * DA40(I1+1,I2)
           DD37 = DA20(I1+2,I2) * DA40(I1+2,I2)
           DD5 = DA20(I1+3,I2) * DA40(I1+3,I2)
           DD77 = DA10(II,I1) + DD35
           DD78 = DA10(II,I1+1) + DD36
           DD79 = DA10(II,I1+2) + DD37
           DD80 = DA10(II,I1+3) + DD5
           DA10(II,I1+3) = DD80
           DA10(II,I1+2) = DD79
           DA10(II,I1+1) = DD78
           DA10(II,I1) = DD77
          END DO
          DO I1=II15,II2,1
           DD5 = DA20(I1,I2) * DA40(I1,I2)
           DD81 = DA10(II,I1) + DD5
           DA10(II,I1) = DD81
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO I1=1,NN-3
        DO II=1,NN-6,4
         DD82 = DA10(II,I1) - DA30(II,I1)
         DD83 = DA10(II+1,I1) - DA30(II+1,I1)
         DD84 = DA10(II+2,I1) - DA30(II+2,I1)
         DD85 = DA10(II+3,I1) - DA30(II+3,I1)
         DA10(II+3,I1) = DD85
         DA10(II+2,I1) = DD84
         DA10(II+1,I1) = DD83
         DA10(II,I1) = DD82
        END DO
        DO II=II17,NN-3,1
         DD86 = DA10(II,I1) - DA30(II,I1)
         DA10(II,I1) = DD86
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO II=1,NN-3

        DO I1=1,NN-6,4
         CD10(I1,II) = (0.D0,0.D0)
         CD10(I1+1,II) = (0.D0,0.D0)
         CD10(I1+2,II) = (0.D0,0.D0)
         CD10(I1+3,II) = (0.D0,0.D0)
        END DO
        DO I1=II19,NN-3,1
         CD10(I1,II) = (0.D0,0.D0)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
       DO II38=1,50
        DO II37=1,50
         CD101(II37,II38) = 0
        END DO
       END DO
C$OMP DO 
       DO I2=1,NN-3
        DO II=1,NN-3

         DO I1=1,NN-6,4
          CD101(I1,II) = CD101(I1,II) + CD20(I1,I2)
          CD101(I1,II) = CD101(I1,II) + CD20(I1+1,I2)
          CD101(I1,II) = CD101(I1,II) + CD20(I1+2,I2)
          CD101(I1,II) = CD101(I1,II) + CD20(I1+3,I2)
         END DO
         DO I1=II21,NN-3,1
          CD101(I1,II) = CD101(I1,II) + CD20(I1,I2)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP CRITICAL (II39)
       DO II38=1,50
        DO II37=1,50
         CD10(II37,II38) = CD10(II37,II38) + CD101(II37,II38)
        END DO
       END DO
C$OMP END CRITICAL (II39)
C$OMP END PARALLEL 

       NZZ = (NN - 3) / 2
       II4 = (NN - 3) / 4
       II3 = II4 * 4 + 1
       II5 = NZZ - 1
       II6 = NZZ - 1
       II24 = (NZZ - 1) / 4
       II23 = II24 * 4 + 2
       II26 = (NZZ - 1) / 4
       II25 = II26 * 4 + 2
       II28 = (NZZ - 1) / 4
       II27 = II28 * 4 + 2
       II30 = (NZZ - 1) / 4
       II29 = II30 * 4 + 2
       II32 = (NZZ - 1) / 4
       II31 = II32 * 4 + 2
       II34 = (NZZ - 1) / 4
       II33 = II34 * 4 + 2
       II36 = (NZZ - 1) / 4
       II35 = II36 * 4 + 2
       DO J2=1,NN-6,4
        DO J1=2,NZZ-3,4
         DA20(J1,J2) = DA30(J1,J2)
         DA20(J1+1,J2) = DA30(J1+1,J2)
         DA20(J1+2,J2) = DA30(J1+2,J2)
         DA20(J1+3,J2) = DA30(J1+3,J2)
         DA20(J1,J2+1) = DA30(J1,J2+1)
         DA20(J1+1,J2+1) = DA30(J1+1,J2+1)
         DA20(J1+2,J2+1) = DA30(J1+2,J2+1)
         DA20(J1+3,J2+1) = DA30(J1+3,J2+1)
         DA20(J1,J2+2) = DA30(J1,J2+2)
         DA20(J1+1,J2+2) = DA30(J1+1,J2+2)
         DA20(J1+2,J2+2) = DA30(J1+2,J2+2)
         DA20(J1+3,J2+2) = DA30(J1+3,J2+2)
         DA20(J1,J2+3) = DA30(J1,J2+3)
         DA20(J1+1,J2+3) = DA30(J1+1,J2+3)
         DA20(J1+2,J2+3) = DA30(J1+2,J2+3)
         DA20(J1+3,J2+3) = DA30(J1+3,J2+3)
        END DO
        DO J1=II23,NZZ,1
         DA20(J1,J2) = DA30(J1,J2)
         DA20(J1,J2+1) = DA30(J1,J2+1)
         DA20(J1,J2+2) = DA30(J1,J2+2)
         DA20(J1,J2+3) = DA30(J1,J2+3)
        END DO
       END DO
       DO J2=J2,NN-3,1
        DO J1=2,NZZ-3,4
         DA20(J1,J2) = DA30(J1,J2)
         DA20(J1+1,J2) = DA30(J1+1,J2)
         DA20(J1+2,J2) = DA30(J1+2,J2)
         DA20(J1+3,J2) = DA30(J1+3,J2)
        END DO
        DO J1=II25,NZZ,1
         DA20(J1,J2) = DA30(J1,J2)
        END DO
       END DO
       LL1 = II5 .GT. 0
       LL2 = II6 .GT. 0
C$OMP PARALLEL SHARED (NN,LL1,DA10,NZZ,DA30,DA20,II27,LL2,II29,II31,CD20
C$OMP& ,DA40,II33) PRIVATE (DD9,DD10,DD11,DD12,DD13,DD14,DD15,DD38,DD39,
C$OMP& DD40,DD41,DD42,DD43,DD87,DD88,DD89,DD90,DD91,DD92,DD93,DD94,DD95,
C$OMP& DD96,J2,J3,J1,CD201,II40,II41)
C$OMP DO 
       DO J2=1,NN-3
        IF (LL1) THEN
         DO J3=1,NN-6,4
          DD9 = DA10(J2,J3)
          DD10 = DA10(J2,J3+1)
          DD11 = DA10(J2,J3+2)
          DD12 = DA10(J2,J3+3)
          DO J1=2,NZZ-3,4
           DD38 = DD9 / DA30(J1,J3)
           DD39 = DD9 / DA30(J1+1,J3)
           DD40 = DD9 / DA30(J1+2,J3)
           DD14 = DD9 / DA30(J1+3,J3)
           DD87 = DA20(J1,J2) + DD38
           DD88 = DA20(J1+1,J2) + DD39
           DD89 = DA20(J1+2,J2) + DD40
           DD90 = DA20(J1+3,J2) + DD14
           DD38 = DD10 / DA30(J1,J3+1)
           DD39 = DD10 / DA30(J1+1,J3+1)
           DD40 = DD10 / DA30(J1+2,J3+1)
           DD14 = DD10 / DA30(J1+3,J3+1)
           DD87 = DD87 + DD38
           DD88 = DD88 + DD39
           DD89 = DD89 + DD40
           DD90 = DD90 + DD14
           DD38 = DD11 / DA30(J1,J3+2)
           DD39 = DD11 / DA30(J1+1,J3+2)
           DD40 = DD11 / DA30(J1+2,J3+2)
           DD14 = DD11 / DA30(J1+3,J3+2)
           DD87 = DD87 + DD38
           DD88 = DD88 + DD39
           DD89 = DD89 + DD40
           DD90 = DD90 + DD14
           DD38 = DD12 / DA30(J1,J3+3)
           DD39 = DD12 / DA30(J1+1,J3+3)
           DD40 = DD12 / DA30(J1+2,J3+3)
           DD14 = DD12 / DA30(J1+3,J3+3)
           DD87 = DD87 + DD38
           DD88 = DD88 + DD39
           DD89 = DD89 + DD40
           DD90 = DD90 + DD14
           DA20(J1+3,J2) = DD90
           DA20(J1+2,J2) = DD89
           DA20(J1+1,J2) = DD88
           DA20(J1,J2) = DD87
          END DO
          DO J1=II27,NZZ,1
           DD14 = DD9 / DA30(J1,J3)
           DD91 = DA20(J1,J2) + DD14
           DD14 = DD10 / DA30(J1,J3+1)
           DD91 = DD91 + DD14
           DD14 = DD11 / DA30(J1,J3+2)
           DD91 = DD91 + DD14
           DD14 = DD12 / DA30(J1,J3+3)
           DD91 = DD91 + DD14
           DA20(J1,J2) = DD91
          END DO
         END DO
        END IF
        IF (LL2) THEN
         DO J3=J3,NN-3,1
          DD13 = DA10(J2,J3)
          DO J1=2,NZZ-3,4
           DD41 = DD13 / DA30(J1,J3)
           DD42 = DD13 / DA30(J1+1,J3)
           DD43 = DD13 / DA30(J1+2,J3)
           DD15 = DD13 / DA30(J1+3,J3)
           DD92 = DA20(J1,J2) + DD41
           DD93 = DA20(J1+1,J2) + DD42
           DD94 = DA20(J1+2,J2) + DD43
           DD95 = DA20(J1+3,J2) + DD15
           DA20(J1+3,J2) = DD95
           DA20(J1+2,J2) = DD94
           DA20(J1+1,J2) = DD93
           DA20(J1,J2) = DD92
          END DO
          DO J1=II29,NZZ,1
           DD15 = DD13 / DA30(J1,J3)
           DD96 = DA20(J1,J2) + DD15
           DA20(J1,J2) = DD96
          END DO
         END DO
        END IF
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
       DO II41=1,50
        DO II40=1,50
         CD201(II40,II41) = 0
        END DO
       END DO
C$OMP DO 
       DO J3=1,NN-3
        DO J2=1,NN-3
         DO J1=2,NZZ-3,4
          CD201(J1,J2) = CD201(J1,J2) + DCMPLX (DA10(J1,J3), DA30(J2,J3)
     X      )
          CD201(J1,J2) = CD201(J1,J2) + DCMPLX (DA10(J1+1,J3), DA30(J2,
     X      J3))
          CD201(J1,J2) = CD201(J1,J2) + DCMPLX (DA10(J1+2,J3), DA30(J2,
     X      J3))
          CD201(J1,J2) = CD201(J1,J2) + DCMPLX (DA10(J1+3,J3), DA30(J2,
     X      J3))
         END DO
         DO J1=II31,NZZ,1
          CD201(J1,J2) = CD201(J1,J2) + DCMPLX (DA10(J1,J3), DA30(J2,J3)
     X      )
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP CRITICAL (II42)
       DO II41=1,50
        DO II40=1,50
         CD20(II40,II41) = CD20(II40,II41) + CD201(II40,II41)
        END DO
       END DO
C$OMP END CRITICAL (II42)
C$OMP BARRIER
C$OMP DO 
       DO J2=1,NN-6,4
        DO J1=2,NZZ-3,4
         DA20(J1-1,J2) = DA20(J1,J2) - DA40(J1,J2)
         DA20(J1-1,J2+1) = DA20(J1,J2+1) - DA40(J1,J2+1)
         DA20(J1-1,J2+2) = DA20(J1,J2+2) - DA40(J1,J2+2)
         DA20(J1-1,J2+3) = DA20(J1,J2+3) - DA40(J1,J2+3)
         DA20(J1,J2) = DA20(J1+1,J2) - DA40(J1+1,J2)
         DA20(J1,J2+1) = DA20(J1+1,J2+1) - DA40(J1+1,J2+1)
         DA20(J1,J2+2) = DA20(J1+1,J2+2) - DA40(J1+1,J2+2)
         DA20(J1,J2+3) = DA20(J1+1,J2+3) - DA40(J1+1,J2+3)
         DA20(J1+1,J2) = DA20(J1+2,J2) - DA40(J1+2,J2)
         DA20(J1+1,J2+1) = DA20(J1+2,J2+1) - DA40(J1+2,J2+1)
         DA20(J1+1,J2+2) = DA20(J1+2,J2+2) - DA40(J1+2,J2+2)
         DA20(J1+1,J2+3) = DA20(J1+2,J2+3) - DA40(J1+2,J2+3)
         DA20(J1+2,J2) = DA20(J1+3,J2) - DA40(J1+3,J2)
         DA20(J1+2,J2+1) = DA20(J1+3,J2+1) - DA40(J1+3,J2+1)
         DA20(J1+2,J2+2) = DA20(J1+3,J2+2) - DA40(J1+3,J2+2)
         DA20(J1+2,J2+3) = DA20(J1+3,J2+3) - DA40(J1+3,J2+3)
        END DO
        DO J1=II33,NZZ,1
         DA20(J1-1,J2) = DA20(J1,J2) - DA40(J1,J2)
         DA20(J1-1,J2+1) = DA20(J1,J2+1) - DA40(J1,J2+1)
         DA20(J1-1,J2+2) = DA20(J1,J2+2) - DA40(J1,J2+2)
         DA20(J1-1,J2+3) = DA20(J1,J2+3) - DA40(J1,J2+3)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO J2=II3,NN-3,1
        DO J1=2,NZZ-3,4
         DA20(J1-1,J2) = DA20(J1,J2) - DA40(J1,J2)
         DA20(J1,J2) = DA20(J1+1,J2) - DA40(J1+1,J2)
         DA20(J1+1,J2) = DA20(J1+2,J2) - DA40(J1+2,J2)
         DA20(J1+2,J2) = DA20(J1+3,J2) - DA40(J1+3,J2)
        END DO
        DO J1=II35,NZZ,1
         DA20(J1-1,J2) = DA20(J1,J2) - DA40(J1,J2)
        END DO
       END DO

       RETURN 
      END