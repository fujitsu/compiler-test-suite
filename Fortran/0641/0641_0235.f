      PROGRAM MAIN
       IMPLICIT REAL*8 (A-B,D,O-Z), LOGICAL*4 (L), COMPLEX*16 (C)
       DIMENSION DA10(20,20), DA20(20,20), DA30(20,20), DB10(20,20,20), 
     X   DB20(20,20,20), DB30(20,20,20)
       DIMENSION CD10(20,20), CD20(20,20), CD30(20,20)
       PARAMETER (JC1 = 1, JC2 = 2, JC3 = 3, JC4 = 10, JC5 = 20)
       DATA DA10/400*1.0D0/ 
       DATA DA20/400*2.D0/ 
       DATA DA30/400*3.D0/ 
       DATA DB10/8000*4.D0/ 
       DATA DB20/8000*5.D0/ 
       DATA DB30/8000*3.D0/ 
       DATA CD10/400*(-1.D0,2.D0)/ 
       DATA CD20/400*(3.D0,-2.D0)/ 
       EQUIVALENCE (CD30(1,1), DB30(1,1,1))
       INTEGER N4, N3, N2, N1
       PARAMETER (N4 = 15, N3 = 10, N2 = 2, N1 = 1)
       DOUBLE PRECISION DD80, DD79, DD78, DD77, DD76, DD75, DD74, DD73, 
     X   DD72, DD71, DD70, DD69, DD68, DD67, DD66, DD65, DD64, DD63, 
     X   DD62, DD61, DD60, DD59, DD58, DD57, DD56, DD55, DD54, DD53, 
     X   DD52, DD51, DD50, DD49, DD48, DD47, DD46, DD45, DD44, DD43, 
     X   DD42, DD41
       DOUBLE PRECISION DD40, DD39, DD38, DD37, DD36, DD35, DD34, DD33, 
     X   DD32, DD31, DD30, DD29, DD28, DD27, DD26, DD25, DD24, DD23, 
     X   DD22, DD21, DD20, DD19, DD18, DD17, DD16, DD15, DD14, DD13, 
     X   DD12, DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1
C$OMP PARALLEL SHARED (DA30,DB30,DA10,DA20,DB10,DB20) PRIVATE (DD1,DD2,
C$OMP& DD3,DD4,DD9,DD10,DD11,DD12,DD13,DD14,DD15,DD16,DD17,DD18,DD19,
C$OMP& DD20,DD37,DD38,DD39,DD40,DD41,DD42,DD43,DD44,DD45,DD46,DD47,DD48,
C$OMP& DD49,DD50,DD51,DD52,DD53,DD54,DD55,DD56,DD57,DD58,DD59,DD60,DD61,
C$OMP& DD62,DD63,DD64,DD65,DD66,DD67,DD68,DD21,DD22,DD23,DD24,DD25,DD26,
C$OMP& DD27,DD28,DD29,DD30,DD31,DD32,DD33,DD34,DD35,DD36,J,K,I,DD5,DD6,
C$OMP& DD7,DD8)
C$OMP DO 
       DO J=1,17,4

        DO K=1,9
         DO I=1,17,4
          DD9 = DA30(I,J) / DB30(I,J,K)
          DD10 = DA30(I+1,J) / DB30(I+1,J,K)
          DD11 = DA30(I+2,J) / DB30(I+2,J,K)
          DD2 = DA30(I+3,J) / DB30(I+3,J,K)
          DD12 = DA30(I,J+1) / DB30(I,J+1,K)
          DD13 = DA30(I+1,J+1) / DB30(I+1,J+1,K)
          DD14 = DA30(I+2,J+1) / DB30(I+2,J+1,K)
          DD3 = DA30(I+3,J+1) / DB30(I+3,J+1,K)
          DD15 = DA30(I,J+2) / DB30(I,J+2,K)
          DD16 = DA30(I+1,J+2) / DB30(I+1,J+2,K)
          DD17 = DA30(I+2,J+2) / DB30(I+2,J+2,K)
          DD4 = DA30(I+3,J+2) / DB30(I+3,J+2,K)
          DD18 = DA30(I,J+3) / DB30(I,J+3,K)
          DD19 = DA30(I+1,J+3) / DB30(I+1,J+3,K)
          DD20 = DA30(I+2,J+3) / DB30(I+2,J+3,K)
          DD1 = DA30(I+3,J+3) / DB30(I+3,J+3,K)
          DD37 = DA10(I,J) + DD9
          DD38 = DA10(I+1,J) + DD10
          DD39 = DA10(I+2,J) + DD11
          DD40 = DA10(I+3,J) + DD2
          DD41 = DA10(I,J+1) + DD12
          DD42 = DA10(I+1,J+1) + DD13
          DD43 = DA10(I+2,J+1) + DD14
          DD44 = DA10(I+3,J+1) + DD3
          DD45 = DA10(I,J+2) + DD15
          DD46 = DA10(I+1,J+2) + DD16
          DD47 = DA10(I+2,J+2) + DD17
          DD48 = DA10(I+3,J+2) + DD4
          DD49 = DA10(I,J+3) + DD18
          DD50 = DA10(I+1,J+3) + DD19
          DD51 = DA10(I+2,J+3) + DD20
          DD52 = DA10(I+3,J+3) + DD1
          DD53 = DA20(I,J) + DD37
          DD54 = DA20(I+1,J) + DD38
          DD55 = DA20(I+2,J) + DD39
          DD56 = DA20(I+3,J) + DD40
          DD57 = DA20(I,J+1) + DD41
          DD58 = DA20(I+1,J+1) + DD42
          DD59 = DA20(I+2,J+1) + DD43
          DD60 = DA20(I+3,J+1) + DD44
          DD61 = DA20(I,J+2) + DD45
          DD62 = DA20(I+1,J+2) + DD46
          DD63 = DA20(I+2,J+2) + DD47
          DD64 = DA20(I+3,J+2) + DD48
          DD65 = DA20(I,J+3) + DD49
          DD66 = DA20(I+1,J+3) + DD50
          DD67 = DA20(I+2,J+3) + DD51
          DD68 = DA20(I+3,J+3) + DD52
          DD21 = DA30(I,J) - DD53
          DD22 = DA30(I+1,J) - DD54
          DD23 = DA30(I+2,J) - DD55
          DD24 = DA30(I+3,J) - DD56
          DD25 = DA30(I,J+1) - DD57
          DD26 = DA30(I+1,J+1) - DD58
          DD27 = DA30(I+2,J+1) - DD59
          DD28 = DA30(I+3,J+1) - DD60
          DD29 = DA30(I,J+2) - DD61
          DD30 = DA30(I+1,J+2) - DD62
          DD31 = DA30(I+2,J+2) - DD63
          DD32 = DA30(I+3,J+2) - DD64
          DD33 = DA30(I,J+3) - DD65
          DD34 = DA30(I+1,J+3) - DD66
          DD35 = DA30(I+2,J+3) - DD67
          DD36 = DA30(I+3,J+3) - DD68
          DA30(I+3,J+3) = DD36
          DA30(I+2,J+3) = DD35
          DA30(I+1,J+3) = DD34
          DA30(I,J+3) = DD33
          DA30(I+3,J+2) = DD32
          DA30(I+2,J+2) = DD31
          DA30(I+1,J+2) = DD30
          DA30(I,J+2) = DD29
          DA30(I+3,J+1) = DD28
          DA30(I+2,J+1) = DD27
          DA30(I+1,J+1) = DD26
          DA30(I,J+1) = DD25
          DA30(I+3,J) = DD24
          DA30(I+2,J) = DD23
          DA30(I+1,J) = DD22
          DA30(I,J) = DD21
          DA20(I+3,J+3) = DD68
          DA20(I+2,J+3) = DD67
          DA20(I+1,J+3) = DD66
          DA20(I,J+3) = DD65
          DA20(I+3,J+2) = DD64
          DA20(I+2,J+2) = DD63
          DA20(I+1,J+2) = DD62
          DA20(I,J+2) = DD61
          DA20(I+3,J+1) = DD60
          DA20(I+2,J+1) = DD59
          DA20(I+1,J+1) = DD58
          DA20(I,J+1) = DD57
          DA20(I+3,J) = DD56
          DA20(I+2,J) = DD55
          DA20(I+1,J) = DD54
          DA20(I,J) = DD53
          DA10(I+3,J+3) = DD52
          DA10(I+2,J+3) = DD51
          DA10(I+1,J+3) = DD50
          DA10(I,J+3) = DD49
          DA10(I+3,J+2) = DD48
          DA10(I+2,J+2) = DD47
          DA10(I+1,J+2) = DD46
          DA10(I,J+2) = DD45
          DA10(I+3,J+1) = DD44
          DA10(I+2,J+1) = DD43
          DA10(I+1,J+1) = DD42
          DA10(I,J+1) = DD41
          DA10(I+3,J) = DD40
          DA10(I+2,J) = DD39
          DA10(I+1,J) = DD38
          DA10(I,J) = DD37
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO K=10,15
        DO J=13,5,-4
         DD5 = DB10(1,J-1,K)
         DD6 = DB10(1,J-2,K)
         DD7 = DB10(1,J-3,K)
         DD8 = DB10(1,J-4,K)

         DO I=17,5,-4
          DB20(I,J,K) = DD5 - DB30(1,J-1,K)
          DB20(I-1,J,K) = DD5 - DB30(1,J-1,K)
          DB20(I-2,J,K) = DD5 - DB30(1,J-1,K)
          DB20(I-3,J,K) = DD5 - DB30(1,J-1,K)
          DB20(I,J-1,K) = DD6 - DB30(1,J-2,K)
          DB20(I-1,J-1,K) = DD6 - DB30(1,J-2,K)
          DB20(I-2,J-1,K) = DD6 - DB30(1,J-2,K)
          DB20(I-3,J-1,K) = DD6 - DB30(1,J-2,K)
          DB20(I,J-2,K) = DD7 - DB30(1,J-3,K)
          DB20(I-1,J-2,K) = DD7 - DB30(1,J-3,K)
          DB20(I-2,J-2,K) = DD7 - DB30(1,J-3,K)
          DB20(I-3,J-2,K) = DD7 - DB30(1,J-3,K)
          DB20(I,J-3,K) = DD8 - DB30(1,J-4,K)
          DB20(I-1,J-3,K) = DD8 - DB30(1,J-4,K)
          DB20(I-2,J-3,K) = DD8 - DB30(1,J-4,K)
          DB20(I-3,J-3,K) = DD8 - DB30(1,J-4,K)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO J=13,3,-2
        DO K=10,15

         DO I=17,5,-4
          DD69 = DB20(I+1,J-1,K-1) + DB30(I,J,K-1)
          DD70 = DB20(I,J-1,K-1) + DB30(I-1,J,K-1)
          DD71 = DB20(I-1,J-1,K-1) + DB30(I-2,J,K-1)
          DD72 = DB20(I-2,J-1,K-1) + DB30(I-3,J,K-1)
          DD73 = DB20(I,J,K-1) - DB10(I,J+2,K-1)
          DD74 = DB20(I-1,J,K-1) - DB10(I-1,J+2,K-1)
          DD75 = DB20(I-2,J,K-1) - DB10(I-2,J+2,K-1)
          DD76 = DB20(I-3,J,K-1) - DB10(I-3,J+2,K-1)
          DD77 = DB20(I+1,J-2,K-1) + DB30(I,J-1,K-1)
          DD78 = DB20(I,J-2,K-1) + DB30(I-1,J-1,K-1)
          DD79 = DB20(I-1,J-2,K-1) + DB30(I-2,J-1,K-1)
          DD80 = DB20(I-2,J-2,K-1) + DB30(I-3,J-1,K-1)
          DB30(I,J-1,K) = DB20(I,J-1,K-1) - DB10(I,J+1,K-1)
          DB30(I-1,J-1,K) = DB20(I-1,J-1,K-1) - DB10(I-1,J+1,K-1)
          DB30(I-2,J-1,K) = DB20(I-2,J-1,K-1) - DB10(I-2,J+1,K-1)
          DB30(I-3,J-1,K) = DB20(I-3,J-1,K-1) - DB10(I-3,J+1,K-1)
          DB10(I-3,J-1,K) = DD80
          DB10(I-2,J-1,K) = DD79
          DB10(I-1,J-1,K) = DD78
          DB10(I,J-1,K) = DD77
          DB30(I-3,J,K) = DD76
          DB30(I-2,J,K) = DD75
          DB30(I-1,J,K) = DD74
          DB30(I,J,K) = DD73
          DB10(I-3,J,K) = DD72
          DB10(I-2,J,K) = DD71
          DB10(I-1,J,K) = DD70
          DB10(I,J,K) = DD69
         END DO
        END DO
       END DO
C$OMP PARALLEL SHARED (DB30,CD20,DB10,CD10,DA10,DB20) PRIVATE (J,K,I,DX,
C$OMP& DY,DZ)
C$OMP DO 
       DO J=1,20
        DO K=3,13,3

         DO I=1,20
          DX = DB30(I,J,K) - DIMAG (CD20(I,J))
          DY = DMIN1 (DB30(I,J,K), DB10(I,J,K+2)) + DIMAG (CD10(I,J))
          IF (DX .GT. DY) THEN
           DZ = DX - DA10(I,J)
           DB20(I,J,K) = DY
          ELSE
           IF (DX .GT. DIMAG (CD20(I,J))) THEN
            DZ = DY * DREAL (CD20(I,J))
            DB10(I,J,K+1) = DX
           ELSE
            DZ = 1D0
           END IF
          END IF
          CD10(I,J) = DCMPLX (DX, DZ)
          CD20(I,J) = DCMPLX (DZ, DY)
          DX = DB30(I,J,K+1) - DIMAG (CD20(I,J))
          DY = DMIN1 (DB30(I,J,K+1), DB10(I,J,K+3)) + DIMAG (CD10(I,J))
          IF (DX .GT. DY) THEN
           DZ = DX - DA10(I,J)
           DB20(I,J,K+1) = DY
          ELSE
           IF (DX .GT. DIMAG (CD20(I,J))) THEN
            DZ = DY * DREAL (CD20(I,J))
            DB10(I,J,K+2) = DX
           ELSE
            DZ = 1D0
           END IF
          END IF
          CD10(I,J) = DCMPLX (DX, DZ)
          CD20(I,J) = DCMPLX (DZ, DY)
          DX = DB30(I,J,K+2) - DIMAG (CD20(I,J))
          DY = DMIN1 (DB30(I,J,K+2), DB10(I,J,K+4)) + DIMAG (CD10(I,J))
          IF (DX .GT. DY) THEN
           DZ = DX - DA10(I,J)
           DB20(I,J,K+2) = DY
          ELSE
           IF (DX .GT. DIMAG (CD20(I,J))) THEN
            DZ = DY * DREAL (CD20(I,J))
            DB10(I,J,K+3) = DX
           ELSE
            DZ = 1D0
           END IF
          END IF
          CD10(I,J) = DCMPLX (DX, DZ)
          CD20(I,J) = DCMPLX (DZ, DY)
         END DO
        END DO

        DO I=1,20
         DX = DB30(I,J,15) - DIMAG (CD20(I,J))
         DY = DMIN1 (DB30(I,J,15), DB10(I,J,17)) + DIMAG (CD10(I,J))
         IF (DX .GT. DY) THEN
          DZ = DX - DA10(I,J)
          DB20(I,J,15) = DY
         ELSE
          IF (DX .GT. DIMAG (CD20(I,J))) THEN
           DZ = DY * DREAL (CD20(I,J))
           DB10(I,J,16) = DX
          ELSE
           DZ = 1D0
          END IF
         END IF
         CD10(I,J) = DCMPLX (DX, DZ)
         CD20(I,J) = DCMPLX (DZ, DY)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, 99999) ' (DA10) ', ((DA10(K1,K2), K1=1,10), K2=1,10)
       WRITE (6, 99999) ' (DA20) ', ((DA20(K1,K2), K1=1,10), K2=1,10)
       WRITE (6, 99999) ' (DA30) ', ((DA30(K1,K2), K1=1,10), K2=1,10)
       WRITE (6, 99999) ' (CD10) ', ((CD10(K1,K2), K1=1,10), K2=1,10)
       WRITE (6, 99999) ' (CD20) ', ((CD20(K1,K2), K1=1,10), K2=1,10)
       WRITE (6, 99999) ' (DB10) ', (((DB10(K1,K2,K3), K1=1,10), K2=1,10
     X   ), K3=1,5)
       WRITE (6, 99999) ' (DB20) ', (((DB20(K1,K2,K3), K1=1,10), K2=1,10
     X   ), K3=1,5)
       WRITE (6, 99999) ' (DB30) ', (((DB30(K1,K2,K3), K1=1,10), K2=1,10
     X   ), K3=1,5)
99999  FORMAT(A,(G20.6))
       STOP 
      END
