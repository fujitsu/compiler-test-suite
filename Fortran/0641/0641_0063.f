      PROGRAM MAIN
       IMPLICIT REAL*8 (A-B,D), LOGICAL*4 (L), COMPLEX*16 (C)
       DIMENSION DA10(20,20,20), DA20(20,20,20), DA30(20,20,20), DA40(20
     X   ,20,20), LD10(20,20,20), LD20(20,20,20)
       DIMENSION CD20(20,20,20), CD10(20,20,20)
       COMMON /BLK/ CD10, CD20
       DOUBLE PRECISION DD14, DD13, DD12, DD11, DD10, DD9, DD8, DD7, DD6
     X   , DD5, DD4, DD3, DD2, DD1
       COMPLEX*16 DC4, DC3, DC2, DC1
       NN = 20
       DATA DA10/8000*1.0D0/ 
       DATA DA20/8000*2.0D0/ 
       DATA DA30/8000*3.0D0/ 
       DATA DA40/8000*4.0D0/ 
       DATA LD10/8000*.FALSE./ 
       DATA LD20/8000*.FALSE./ 
C$OMP PARALLEL SHARED (CD10,CD20) PRIVATE (DD1,DD2,DD3,DC1,DC2,DC3,DD4,
C$OMP& DD5,DC4,DD6,DD7,DD8,DD9,DD10,DD11,DD12,DD13,DD14,K,J,I)
C$OMP DO 
       DO K=1,20
        DD4 = DFLOAT (K)
        DO J=1,18,3
         DD1 = DFLOAT (J)
         DD2 = DFLOAT (J + 1)
         DD3 = DFLOAT (J + 2)
         DC1 = DCMPLX (DD1, DD4)
         DC2 = DCMPLX (DD2, DD4)
         DC3 = DCMPLX (DD3, DD4)

         DO I=1,17,4
          DD9 = DFLOAT (I)
          DD10 = DFLOAT (I + 1)
          DD11 = DFLOAT (I + 2)
          DD7 = DFLOAT (I + 3)
          CD10(I,J,K) = DCMPLX (DD9, DD1)
          CD10(I+1,J,K) = DCMPLX (DD10, DD1)
          CD10(I+2,J,K) = DCMPLX (DD11, DD1)
          CD10(I+3,J,K) = DCMPLX (DD7, DD1)
          DD9 = DFLOAT (I)
          DD10 = DFLOAT (I + 1)
          DD11 = DFLOAT (I + 2)
          DD7 = DFLOAT (I + 3)
          CD10(I,J+1,K) = DCMPLX (DD9, DD2)
          CD10(I+1,J+1,K) = DCMPLX (DD10, DD2)
          CD10(I+2,J+1,K) = DCMPLX (DD11, DD2)
          CD10(I+3,J+1,K) = DCMPLX (DD7, DD2)
          DD9 = DFLOAT (I)
          DD10 = DFLOAT (I + 1)
          DD11 = DFLOAT (I + 2)
          DD7 = DFLOAT (I + 3)
          CD10(I,J+2,K) = DCMPLX (DD9, DD3)
          CD10(I+1,J+2,K) = DCMPLX (DD10, DD3)
          CD10(I+2,J+2,K) = DCMPLX (DD11, DD3)
          CD10(I+3,J+2,K) = DCMPLX (DD7, DD3)
          CD20(I,J,K) = DC1
          CD20(I+1,J,K) = DC1
          CD20(I+2,J,K) = DC1
          CD20(I+3,J,K) = DC1
          CD20(I,J+1,K) = DC2
          CD20(I+1,J+1,K) = DC2
          CD20(I+2,J+1,K) = DC2
          CD20(I+3,J+1,K) = DC2
          CD20(I,J+2,K) = DC3
          CD20(I+1,J+2,K) = DC3
          CD20(I+2,J+2,K) = DC3
          CD20(I+3,J+2,K) = DC3
         END DO
        END DO
        DD6 = DFLOAT (K)
        DO J=19,20,1
         DD5 = DFLOAT (J)
         DC4 = DCMPLX (DD5, DD6)

         DO I=1,17,4
          DD12 = DFLOAT (I)
          DD13 = DFLOAT (I + 1)
          DD14 = DFLOAT (I + 2)
          DD8 = DFLOAT (I + 3)
          CD10(I,J,K) = DCMPLX (DD12, DD5)
          CD10(I+1,J,K) = DCMPLX (DD13, DD5)
          CD10(I+2,J,K) = DCMPLX (DD14, DD5)
          CD10(I+3,J,K) = DCMPLX (DD8, DD5)
          CD20(I,J,K) = DC4
          CD20(I+1,J,K) = DC4
          CD20(I+2,J,K) = DC4
          CD20(I+3,J,K) = DC4
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       CALL SUB1 (DA10,DA20,DA30,DA40,LD10,LD20,NN)
       WRITE (6, 99) 'DA10=', DA10
       WRITE (6, 99) 'DA20=', DA20
       WRITE (6, 99) 'DA30=', DA30
       WRITE (6, 99) 'DA40=', DA40
       WRITE (6, *) 'LD10=', LD10
       WRITE (6, *) 'LD20=', LD20
   99  FORMAT(A,(8F10.3))
       STOP 
      END

      SUBROUTINE SUB1 ( DA10, DA20, DA30, DA40, LD10, LD20, NN )
       IMPLICIT REAL*8 (A-B,D), LOGICAL*4 (L), COMPLEX*16 (C)
       DIMENSION DA10(NN,NN,NN), DA20(NN,NN,NN), DA30(NN,NN,NN), DA40(NN
     X   ,NN,NN), LD10(NN,NN,NN), LD20(NN,NN,NN)
       DIMENSION CD20(20,20,20), CD10(20,20,20)
       COMMON /BLK/ CD10, CD20
       INTEGER II15, II14, II13, II12, II11, II10, II9, II8, II7, II6, 
     X   II5, II4, II3, II2, II1
       DOUBLE PRECISION DD88, DD87, DD86, DD85, DD84, DD83, DD82, DD81, 
     X   DD80, DD79, DD78, DD77, DD76, DD75, DD74, DD73, DD72, DD71, 
     X   DD70, DD69, DD68, DD67, DD66, DD65, DD64, DD63, DD62, DD61, 
     X   DD60, DD59, DD58, DD57, DD56, DD55, DD54, DD53, DD52, DD51, 
     X   DD50, DD49
       DOUBLE PRECISION DD48, DD47, DD46, DD45, DD44, DD43, DD42, DD41, 
     X   DD40, DD39, DD38, DD37, DD36, DD35, DD34, DD33, DD32, DD31, 
     X   DD30, DD29, DD28, DD27, DD26, DD25, DD24, DD23, DD22, DD21, 
     X   DD20, DD19, DD18, DD17, DD16, DD15, DD14, DD13, DD12, DD11, 
     X   DD10, DD9
       DOUBLE PRECISION DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1

       II1 = NN - 2
       II2 = NN - 2
       II3 = NN - 2

       II5 = (NN - 2) / 4
       II4 = II5 * 4 + 2
       II7 = (NN - 2) / 4
       II6 = II7 * 4 + 2
       DO I=2,NN-4,4
        LD10(I,1,1) = .FALSE.
        LD10(I+1,1,1) = .FALSE.
        LD10(I+2,1,1) = .FALSE.
        LD10(I+3,1,1) = .FALSE.
       END DO
       DO I=II4,NN-1,1
        LD10(I,1,1) = .FALSE.
       END DO
       DO J=2,NN-1
        DO I=2,NN-4,4
         DA10(1,I,J) = DIMAG (CD10(I,J,J))
         DA10(1,I+1,J) = DIMAG (CD10(I+1,J,J))
         DA10(1,I+2,J) = DIMAG (CD10(I+2,J,J))
         DA10(1,I+3,J) = DIMAG (CD10(I+3,J,J))
        END DO
        DO I=II6,NN-1,1
         DA10(1,I,J) = DIMAG (CD10(I,J,J))
        END DO
       END DO
       IF (II1 .GT. 0) THEN
        IF (II2 .GT. 0) THEN
         IF (II3 .GT. 0) THEN
          DD5 = 1 / 2.12D0
          DD6 = 1 / 3.12D0

C$OMP PARALLEL SHARED (NN,DD5,DD6,DA10,DA20,DA30,DA40,LD10,LD20,CD10,
C$OMP& CD20) PRIVATE (DD1,DD2,DD3,DD4,K,J,I,DX,DY)
C$OMP DO 
          DO K=2,NN-1
           DD3 = DD5
           DD4 = DD6
           DO J=2,NN-1
            DD1 = DD3
            DD2 = DD4
            DO I=2,NN-1
             DX = DA20(I,J,K) + DA10(I,J,K) * DD1
             DY = DA30(I,J,K) * DD2 - DA40(I,J,K)
             IF (DX .GT. DY) THEN
              LD10(I,J,K) = .TRUE.
             END IF
             LD20(I,J,K) = .NOT.LD20(I,J,K) .AND. LD10(I,J,K)
             CD10(I,J,K) = DCMPLX (DX, DY) - CD20(I,J,K)
            END DO
           END DO
          END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
         END IF
        END IF
       END IF
       II9 = (NN - 2) / 4
       II8 = NN + II9 * (-4) - 1
       II11 = (NN - 2) / 4
       II10 = NN + II11 * (-4) - 1
       II13 = (NN - 2) / 4
       II12 = II13 * 4 + 2
       II15 = (NN - 2) / 4
       II14 = II15 * 4 + 2

       DO J=NN-1,5,-4


        DO I=NN-1,5,-4
         LD20(I,J,J) = .NOT.LD10(I,J,2)
         LD20(I-1,J,J) = .NOT.LD10(I-1,J,2)
         LD20(I-2,J,J) = .NOT.LD10(I-2,J,2)
         LD20(I-3,J,J) = .NOT.LD10(I-3,J,2)
         LD20(I,J-1,J-1) = .NOT.LD10(I,J-1,2)
         LD20(I-1,J-1,J-1) = .NOT.LD10(I-1,J-1,2)
         LD20(I-2,J-1,J-1) = .NOT.LD10(I-2,J-1,2)
         LD20(I-3,J-1,J-1) = .NOT.LD10(I-3,J-1,2)
         LD20(I,J-2,J-2) = .NOT.LD10(I,J-2,2)
         LD20(I-1,J-2,J-2) = .NOT.LD10(I-1,J-2,2)
         LD20(I-2,J-2,J-2) = .NOT.LD10(I-2,J-2,2)
         LD20(I-3,J-2,J-2) = .NOT.LD10(I-3,J-2,2)
         LD20(I,J-3,J-3) = .NOT.LD10(I,J-3,2)
         LD20(I-1,J-3,J-3) = .NOT.LD10(I-1,J-3,2)
         LD20(I-2,J-3,J-3) = .NOT.LD10(I-2,J-3,2)
         LD20(I-3,J-3,J-3) = .NOT.LD10(I-3,J-3,2)
        END DO
        DO I=II8,2,-1
         LD20(I,J,J) = .NOT.LD10(I,J,2)
         LD20(I,J-1,J-1) = .NOT.LD10(I,J-1,2)
         LD20(I,J-2,J-2) = .NOT.LD10(I,J-2,2)
         LD20(I,J-3,J-3) = .NOT.LD10(I,J-3,2)
        END DO
       END DO
       DO J=J,2,-1


        DO I=NN-1,5,-4
         LD20(I,J,J) = .NOT.LD10(I,J,2)
         LD20(I-1,J,J) = .NOT.LD10(I-1,J,2)
         LD20(I-2,J,J) = .NOT.LD10(I-2,J,2)
         LD20(I-3,J,J) = .NOT.LD10(I-3,J,2)
        END DO
        DO I=II10,2,-1
         LD20(I,J,J) = .NOT.LD10(I,J,2)
        END DO
       END DO


       DO I=NN-1,2,-1
        IF (NN .GE. I) THEN
         DO J=NN-1,2,-1
          DO K=2,NN-4,4
           DD25 = DA10(I,J,K) * DA20(I,J,K)
           DD26 = DA10(I,J,K+1) * DA20(I,J,K+1)
           DD27 = DA10(I,J,K+2) * DA20(I,J,K+2)
           DD8 = DA10(I,J,K+3) * DA20(I,J,K+3)
           DD28 = 1D0 + DA30(I,J,K)
           DD29 = 1D0 + DA30(I,J,K+1)
           DD30 = 1D0 + DA30(I,J,K+2)
           DD9 = 1D0 + DA30(I,J,K+3)
           DD31 = DD25 / DD28
           DD32 = DD26 / DD29
           DD33 = DD27 / DD30
           DD7 = DD8 / DD9
           DD34 = DREAL (CD10(I,J,K-1))
           DD35 = DREAL (CD10(I,J,K))
           DD36 = DREAL (CD10(I,J,K+1))
           DD13 = DREAL (CD10(I,J,K+2))
           DD37 = DIMAG (CD20(I,J,K+1))
           DD38 = DIMAG (CD20(I,J,K+2))
           DD39 = DIMAG (CD20(I,J,K+3))
           DD15 = DIMAG (CD20(I,J,K+4))
           DD40 = 1D0 + DD37
           DD41 = 1D0 + DD38
           DD42 = 1D0 + DD39
           DD14 = 1D0 + DD15
           DD43 = DD34 / DD40
           DD44 = DD35 / DD41
           DD45 = DD36 / DD42
           DD12 = DD13 / DD14
           DD46 = DD43 * DA20(I+1,J,K)
           DD47 = DD44 * DA20(I+1,J,K+1)
           DD48 = DD45 * DA20(I+1,J,K+2)
           DD11 = DD12 * DA20(I+1,J,K+3)
           DD49 = DD46 / DA40(I,J,K+1)
           DD50 = DD47 / DA40(I,J,K+2)
           DD51 = DD48 / DA40(I,J,K+3)
           DD10 = DD11 / DA40(I,J,K+4)
           DD79 = DD31 - DD49
           DD80 = DD32 - DD50
           DD81 = DD33 - DD51
           DD82 = DD7 - DD10
           DA30(I,J,K+3) = DD82
           DA30(I,J,K+2) = DD81
           DA30(I,J,K+1) = DD80
           DA30(I,J,K) = DD79
          END DO
          DO K=II12,NN-1,1
           DD8 = DA10(I,J,K) * DA20(I,J,K)
           DD9 = 1D0 + DA30(I,J,K)
           DD7 = DD8 / DD9
           DD13 = DREAL (CD10(I,J,K-1))
           DD15 = DIMAG (CD20(I,J,K+1))
           DD14 = 1D0 + DD15
           DD12 = DD13 / DD14
           DD11 = DD12 * DA20(I+1,J,K)
           DD10 = DD11 / DA40(I,J,K+1)
           DD83 = DD7 - DD10
           DA30(I,J,K) = DD83
          END DO
          DA20(I,I,J) = DA30(I,J,J) + DA10(I,J,2)
         END DO
        ELSE
C$OMP PARALLEL SHARED (NN,I,DA10,DA20,DA30,CD10,CD20,DA40,II14) 
C$OMP& PRIVATE (DD16,DD17,DD18,DD19,DD20,DD21,DD22,DD23,DD24,DD52,DD53,
C$OMP& DD54,DD55,DD56,DD57,DD58,DD59,DD60,DD61,DD62,DD63,DD64,DD65,DD66,
C$OMP& DD67,DD68,DD69,DD70,DD71,DD72,DD73,DD74,DD75,DD76,DD77,DD78,DD84,
C$OMP& DD85,DD86,DD87,DD88,J,K)
C$OMP DO 
         DO J=NN-1,2,-1
          DO K=2,NN-4,4
           DD52 = DA10(I,J,K) * DA20(I,J,K)
           DD53 = DA10(I,J,K+1) * DA20(I,J,K+1)
           DD54 = DA10(I,J,K+2) * DA20(I,J,K+2)
           DD17 = DA10(I,J,K+3) * DA20(I,J,K+3)
           DD55 = 1D0 + DA30(I,J,K)
           DD56 = 1D0 + DA30(I,J,K+1)
           DD57 = 1D0 + DA30(I,J,K+2)
           DD18 = 1D0 + DA30(I,J,K+3)
           DD58 = DD52 / DD55
           DD59 = DD53 / DD56
           DD60 = DD54 / DD57
           DD16 = DD17 / DD18
           DD61 = DREAL (CD10(I,J,K-1))
           DD62 = DREAL (CD10(I,J,K))
           DD63 = DREAL (CD10(I,J,K+1))
           DD22 = DREAL (CD10(I,J,K+2))
           DD64 = DIMAG (CD20(I,J,K+1))
           DD65 = DIMAG (CD20(I,J,K+2))
           DD66 = DIMAG (CD20(I,J,K+3))
           DD24 = DIMAG (CD20(I,J,K+4))
           DD67 = 1D0 + DD64
           DD68 = 1D0 + DD65
           DD69 = 1D0 + DD66
           DD23 = 1D0 + DD24
           DD70 = DD61 / DD67
           DD71 = DD62 / DD68
           DD72 = DD63 / DD69
           DD21 = DD22 / DD23
           DD73 = DD70 * DA20(I+1,J,K)
           DD74 = DD71 * DA20(I+1,J,K+1)
           DD75 = DD72 * DA20(I+1,J,K+2)
           DD20 = DD21 * DA20(I+1,J,K+3)
           DD76 = DD73 / DA40(I,J,K+1)
           DD77 = DD74 / DA40(I,J,K+2)
           DD78 = DD75 / DA40(I,J,K+3)
           DD19 = DD20 / DA40(I,J,K+4)
           DD84 = DD58 - DD76
           DD85 = DD59 - DD77
           DD86 = DD60 - DD78
           DD87 = DD16 - DD19
           DA30(I,J,K+3) = DD87
           DA30(I,J,K+2) = DD86
           DA30(I,J,K+1) = DD85
           DA30(I,J,K) = DD84
          END DO
          DO K=II14,NN-1,1
           DD17 = DA10(I,J,K) * DA20(I,J,K)
           DD18 = 1D0 + DA30(I,J,K)
           DD16 = DD17 / DD18
           DD22 = DREAL (CD10(I,J,K-1))
           DD24 = DIMAG (CD20(I,J,K+1))
           DD23 = 1D0 + DD24
           DD21 = DD22 / DD23
           DD20 = DD21 * DA20(I+1,J,K)
           DD19 = DD20 / DA40(I,J,K+1)
           DD88 = DD16 - DD19
           DA30(I,J,K) = DD88
          END DO
          DA20(I,I,J) = DA30(I,J,J) + DA10(I,J,2)
         END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
        END IF
       END DO

       RETURN 
      END
