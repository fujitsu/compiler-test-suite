      PROGRAM MAIN
       IMPLICIT REAL*8 (A-B,D,O-Z), COMPLEX*16 (C)
       DIMENSION DA10(20,20), DA20(20,20), DA30(20,20), DB10(20,20,20), 
     X   DB20(20,20,20), DB30(20,20,20)
       DIMENSION CD10(20,20), CD20(20,20), CD30(20,20)
       PARAMETER (JC5 = 20)
       INTEGER NN
       PARAMETER (NN = 14)
       DATA DA10/400*1.0D0/ 
       DATA DA20/400*2.D0/ 
       DATA DA30/400*3.D0/ 
       DATA DB10/8000*4.D0/ 
       DATA DB20/8000*5.D0/ 
       DATA DB30/8000*3.D0/ 
       DATA CD10/400*(-1.D0,2.D0)/ 
       DATA CD20/400*(3.D0,-2.D0)/ 
       DATA CD30/400*(2.D0,0.1D0)/ 
       DOUBLE PRECISION DD86, DD85, DD84, DD83, DD82, DD81, DD80, DD79, 
     X   DD78, DD77, DD76, DD75, DD74, DD73, DD72, DD71, DD70, DD69, 
     X   DD68, DD67, DD66, DD65, DD64, DD63, DD62, DD61, DD60, DD59, 
     X   DD58, DD57, DD56, DD55, DD54, DD53, DD52, DD51, DD50, DD49, 
     X   DD48, DD47
       DOUBLE PRECISION DD46, DD45, DD44, DD43, DD42, DD41, DD40, DD39, 
     X   DD38, DD37, DD36, DD35, DD34, DD33, DD32, DD31, DD30, DD29, 
     X   DD28, DD27, DD26, DD25, DD24, DD23, DD22, DD21, DD20, DD19, 
     X   DD18, DD17, DD16, DD15, DD14, DD13, DD12, DD11, DD10, DD9, DD8
     X   , DD7
       DOUBLE PRECISION DD6, DD5, DD4, DD3, DD2, DD1

       DO I1=1,11,4
        DA10(I1,I1) = DFLOAT (I1)
        DA10(I1+1,I1+1) = DFLOAT (I1 + 1)
        DA10(I1+2,I1+2) = DFLOAT (I1 + 2)
        DA10(I1+3,I1+3) = DFLOAT (I1 + 3)
       END DO
       DO I1=13,14,1
        DA10(I1,I1) = DFLOAT (I1)
       END DO
       DO I2=1,11,4

        DO I1=1,11,4
         DA20(I2+1,I1) = DA30(I1,I2+1) - DA10(I1,1)
         DA20(I2+1,I1+1) = DA30(I1+1,I2+1) - DA10(I1+1,1)
         DA20(I2+1,I1+2) = DA30(I1+2,I2+1) - DA10(I1+2,1)
         DA20(I2+1,I1+3) = DA30(I1+3,I2+1) - DA10(I1+3,1)
         DA20(I2+2,I1) = DA30(I1,I2+2) - DA10(I1,1)
         DA20(I2+2,I1+1) = DA30(I1+1,I2+2) - DA10(I1+1,1)
         DA20(I2+2,I1+2) = DA30(I1+2,I2+2) - DA10(I1+2,1)
         DA20(I2+2,I1+3) = DA30(I1+3,I2+2) - DA10(I1+3,1)
         DA20(I2+3,I1) = DA30(I1,I2+3) - DA10(I1,1)
         DA20(I2+3,I1+1) = DA30(I1+1,I2+3) - DA10(I1+1,1)
         DA20(I2+3,I1+2) = DA30(I1+2,I2+3) - DA10(I1+2,1)
         DA20(I2+3,I1+3) = DA30(I1+3,I2+3) - DA10(I1+3,1)
         DA20(I2+4,I1) = DA30(I1,I2+4) - DA10(I1,1)
         DA20(I2+4,I1+1) = DA30(I1+1,I2+4) - DA10(I1+1,1)
         DA20(I2+4,I1+2) = DA30(I1+2,I2+4) - DA10(I1+2,1)
         DA20(I2+4,I1+3) = DA30(I1+3,I2+4) - DA10(I1+3,1)
        END DO
        DO I1=13,14,1
         DA20(I2+1,I1) = DA30(I1,I2+1) - DA10(I1,1)
         DA20(I2+2,I1) = DA30(I1,I2+2) - DA10(I1,1)
         DA20(I2+3,I1) = DA30(I1,I2+3) - DA10(I1,1)
         DA20(I2+4,I1) = DA30(I1,I2+4) - DA10(I1,1)
        END DO
       END DO
       DO I2=13,14,1

        DO I1=1,11,4
         DA20(I2+1,I1) = DA30(I1,I2+1) - DA10(I1,1)
         DA20(I2+1,I1+1) = DA30(I1+1,I2+1) - DA10(I1+1,1)
         DA20(I2+1,I1+2) = DA30(I1+2,I2+1) - DA10(I1+2,1)
         DA20(I2+1,I1+3) = DA30(I1+3,I2+1) - DA10(I1+3,1)
        END DO
        DO I1=13,14,1
         DA20(I2+1,I1) = DA30(I1,I2+1) - DA10(I1,1)
        END DO
       END DO
C$OMP PARALLEL SHARED (CD20,CD30,CD10,DB20,DB30,DB10) PRIVATE (DD9,DD10,
C$OMP& DD21,DD22,DD23,DD24,DD75,DD76,DD77,DD78,I3,I1,DX,DY,I4,DZ,I2)
       DO I2=1,14
C$OMP DO 
        DO I3=I2+1,14
         DD9 = DREAL (CD20(I2,I3))
         DD10 = DIMAG (CD30(I2,I3))

         DO I1=1,14
          DX = DIMAG (CD10(I1,I3)) + DD9
          DY = DREAL (CD10(I1,I3)) - DD10
          CD10(I1,I3) = DCMPLX (DX, DY)
          DO I4=2,11,4
           DD22 = DB20(I4,I2,I1) * DB30(I4,I3,I2)
           DD23 = DB20(I4+1,I2,I1) * DB30(I4+1,I3,I2)
           DD24 = DB20(I4+2,I2,I1) * DB30(I4+2,I3,I2)
           DD21 = DB20(I4+3,I2,I1) * DB30(I4+3,I3,I2)
           DD75 = DX - DD22
           DD76 = DX - DD23
           DD77 = DX - DD24
           DD78 = DX - DD21
           DB10(I4,I3,I1) = DD75
           DD22 = DB10(I4,I2,I1) * DB30(I4,I3,I2)
           DB10(I4+1,I3,I1) = DD76
           DD23 = DB10(I4+1,I2,I1) * DB30(I4+1,I3,I2)
           DB10(I4+2,I3,I1) = DD77
           DD24 = DB10(I4+2,I2,I1) * DB30(I4+2,I3,I2)
           DB10(I4+3,I3,I1) = DD78
           DD21 = DB10(I4+3,I2,I1) * DB30(I4+3,I3,I2)
           DB20(I4,I3,I1) = DY + DD22
           DB20(I4+1,I3,I1) = DY + DD23
           DB20(I4+2,I3,I1) = DY + DD24
           DB20(I4+3,I3,I1) = DY + DD21
          END DO
          DD21 = DB20(14,I2,I1) * DB30(14,I3,I2)
          DB10(14,I3,I1) = DX - DD21
          DD21 = DB10(14,I2,I1) * DB30(14,I3,I2)
          DB20(14,I3,I1) = DY + DD21
          DZ = DREAL (CD10(I1,I2)) + DIMAG (CD10(I1,I2))
          DZ = DABS (DZ)
          DB30(2,I3,I2) = DSQRT (DZ)
         END DO
        END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
       END DO
C$OMP END PARALLEL 
       DO I2=1,11,4
        DD11 = DA20(1,I2)
        DD12 = DA20(1,I2+1)
        DD13 = DA20(1,I2+2)
        DD14 = DA20(1,I2+3)

        DO I1=1,11,4
         DA30(I1,I2) = DA10(I1,I1+1) - DD11
         DA30(I1+1,I2) = DA10(I1+1,I1+2) - DD11
         DA30(I1+2,I2) = DA10(I1+2,I1+3) - DD11
         DA30(I1+3,I2) = DA10(I1+3,I1+4) - DD11
         DA30(I1,I2+1) = DA10(I1,I1+1) - DD12
         DA30(I1+1,I2+1) = DA10(I1+1,I1+2) - DD12
         DA30(I1+2,I2+1) = DA10(I1+2,I1+3) - DD12
         DA30(I1+3,I2+1) = DA10(I1+3,I1+4) - DD12
         DA30(I1,I2+2) = DA10(I1,I1+1) - DD13
         DA30(I1+1,I2+2) = DA10(I1+1,I1+2) - DD13
         DA30(I1+2,I2+2) = DA10(I1+2,I1+3) - DD13
         DA30(I1+3,I2+2) = DA10(I1+3,I1+4) - DD13
         DA30(I1,I2+3) = DA10(I1,I1+1) - DD14
         DA30(I1+1,I2+3) = DA10(I1+1,I1+2) - DD14
         DA30(I1+2,I2+3) = DA10(I1+2,I1+3) - DD14
         DA30(I1+3,I2+3) = DA10(I1+3,I1+4) - DD14
        END DO
        DO I1=13,14,1
         DA30(I1,I2) = DA10(I1,I1+1) - DD11
         DA30(I1,I2+1) = DA10(I1,I1+1) - DD12
         DA30(I1,I2+2) = DA10(I1,I1+1) - DD13
         DA30(I1,I2+3) = DA10(I1,I1+1) - DD14
        END DO
       END DO
       DO I2=13,14,1
        DD15 = DA20(1,I2)

        DO I1=1,11,4
         DA30(I1,I2) = DA10(I1,I1+1) - DD15
         DA30(I1+1,I2) = DA10(I1+1,I1+2) - DD15
         DA30(I1+2,I2) = DA10(I1+2,I1+3) - DD15
         DA30(I1+3,I2) = DA10(I1+3,I1+4) - DD15
        END DO
        DO I1=13,14,1
         DA30(I1,I2) = DA10(I1,I1+1) - DD15
        END DO
       END DO

       WRITE (6, 9999) ' (DA10) ', (DA10(I,I), I=1,10)
       WRITE (6, 9999) ' (DA20) ', ((DA20(I,J), I=1,10), J=1,10)
       WRITE (6, 9999) ' (DA30) ', ((DA30(I,J), I=1,10), J=1,10)
       WRITE (6, 9999) ' (CD10) ', ((CD10(I,J), I=1,10), J=1,10)
       WRITE (6, 9999) ' (DB10) ', (((DB10(I,J,K), I=1,10), J=1,10), K=1
     X   ,10)
       WRITE (6, 9999) ' (DB20) ', (((DB20(I,J,K), I=1,10), J=1,10), K=1
     X   ,10)
       WRITE (6, 9999) ' (DB30) ', ((DB30(2,J,K), J=1,10), K=1,10)

       DO J2=2,11,4
        DD16 = DA30(7,J2)
        DD17 = DA30(7,J2+1)
        DD18 = DA30(7,J2+2)
        DD19 = DA30(7,J2+3)
        DD25 = DA10(J2,3) - DA20(2,J2)
        DD26 = DA10(J2,4) - DA20(3,J2)
        DD27 = DA10(J2,5) - DA20(4,J2)
        DD28 = DA10(J2,6) - DA20(5,J2)
        DD29 = DA10(J2,7) - DA20(6,J2)
        DD3 = DA10(J2,8) - DA20(7,J2)
        DD30 = DA10(J2+1,3) - DA20(2,J2+1)
        DD31 = DA10(J2+1,4) - DA20(3,J2+1)
        DD32 = DA10(J2+1,5) - DA20(4,J2+1)
        DD33 = DA10(J2+1,6) - DA20(5,J2+1)
        DD34 = DA10(J2+1,7) - DA20(6,J2+1)
        DD4 = DA10(J2+1,8) - DA20(7,J2+1)
        DD35 = DA10(J2+2,3) - DA20(2,J2+2)
        DD36 = DA10(J2+2,4) - DA20(3,J2+2)
        DD37 = DA10(J2+2,5) - DA20(4,J2+2)
        DD38 = DA10(J2+2,6) - DA20(5,J2+2)
        DD39 = DA10(J2+2,7) - DA20(6,J2+2)
        DD5 = DA10(J2+2,8) - DA20(7,J2+2)
        DD40 = DA10(J2+3,3) - DA20(2,J2+3)
        DD41 = DA10(J2+3,4) - DA20(3,J2+3)
        DD42 = DA10(J2+3,5) - DA20(4,J2+3)
        DD43 = DA10(J2+3,6) - DA20(5,J2+3)
        DD44 = DA10(J2+3,7) - DA20(6,J2+3)
        DD1 = DA10(J2+3,8) - DA20(7,J2+3)
        DD45 = DA10(J2,3) + DD16
        DD46 = DA10(J2,4) + DD16
        DD47 = DA10(J2,5) + DD16
        DD48 = DA10(J2,6) + DD16
        DD49 = DA10(J2,7) + DD16
        DD6 = DA10(J2,8) + DD16
        DD50 = DA10(J2+1,3) + DD17
        DD51 = DA10(J2+1,4) + DD17
        DD52 = DA10(J2+1,5) + DD17
        DD53 = DA10(J2+1,6) + DD17
        DD54 = DA10(J2+1,7) + DD17
        DD7 = DA10(J2+1,8) + DD17
        DD55 = DA10(J2+2,3) + DD18
        DD56 = DA10(J2+2,4) + DD18
        DD57 = DA10(J2+2,5) + DD18
        DD58 = DA10(J2+2,6) + DD18
        DD59 = DA10(J2+2,7) + DD18
        DD8 = DA10(J2+2,8) + DD18
        DD60 = DA10(J2+3,3) + DD19
        DD61 = DA10(J2+3,4) + DD19
        DD62 = DA10(J2+3,5) + DD19
        DD63 = DA10(J2+3,6) + DD19
        DD64 = DA10(J2+3,7) + DD19
        DD2 = DA10(J2+3,8) + DD19
        CD30(3,J2) = DCMPLX (DD25, DD45)
        CD30(4,J2) = DCMPLX (DD26, DD46)
        CD30(5,J2) = DCMPLX (DD27, DD47)
        CD30(6,J2) = DCMPLX (DD28, DD48)
        CD30(7,J2) = DCMPLX (DD29, DD49)
        CD30(8,J2) = DCMPLX (DD3, DD6)
        CD30(3,J2+1) = DCMPLX (DD30, DD50)
        CD30(4,J2+1) = DCMPLX (DD31, DD51)
        CD30(5,J2+1) = DCMPLX (DD32, DD52)
        CD30(6,J2+1) = DCMPLX (DD33, DD53)
        CD30(7,J2+1) = DCMPLX (DD34, DD54)
        CD30(8,J2+1) = DCMPLX (DD4, DD7)
        CD30(3,J2+2) = DCMPLX (DD35, DD55)
        CD30(4,J2+2) = DCMPLX (DD36, DD56)
        CD30(5,J2+2) = DCMPLX (DD37, DD57)
        CD30(6,J2+2) = DCMPLX (DD38, DD58)
        CD30(7,J2+2) = DCMPLX (DD39, DD59)
        CD30(8,J2+2) = DCMPLX (DD5, DD8)
        CD30(3,J2+3) = DCMPLX (DD40, DD60)
        CD30(4,J2+3) = DCMPLX (DD41, DD61)
        CD30(5,J2+3) = DCMPLX (DD42, DD62)
        CD30(6,J2+3) = DCMPLX (DD43, DD63)
        CD30(7,J2+3) = DCMPLX (DD44, DD64)
        CD30(8,J2+3) = DCMPLX (DD1, DD2)
       END DO
       DD20 = DA30(7,14)
       DD65 = DA10(14,3) - DA20(2,14)
       DD66 = DA10(14,4) - DA20(3,14)
       DD67 = DA10(14,5) - DA20(4,14)
       DD68 = DA10(14,6) - DA20(5,14)
       DD69 = DA10(14,7) - DA20(6,14)
       DD1 = DA10(14,8) - DA20(7,14)
       DD70 = DA10(14,3) + DD20
       DD71 = DA10(14,4) + DD20
       DD72 = DA10(14,5) + DD20
       DD73 = DA10(14,6) + DD20
       DD74 = DA10(14,7) + DD20
       DD2 = DA10(14,8) + DD20
       CD30(3,14) = DCMPLX (DD65, DD70)
       CD30(4,14) = DCMPLX (DD66, DD71)
       CD30(5,14) = DCMPLX (DD67, DD72)
       CD30(6,14) = DCMPLX (DD68, DD73)
       CD30(7,14) = DCMPLX (DD69, DD74)
       CD30(8,14) = DCMPLX (DD1, DD2)
       DO J1=2,7
        CD20(7,J1) = CD10(7,J1)
        DO J2=2,14
         IF (DA10(J2-1,J1+1) .GT. 5D0) THEN
          CD10(J1,J1) = CD10(J1,J1) + CD30(J1,J2-1)
         END IF
        END DO
       END DO
C$OMP PARALLEL SHARED (DB20,DB10,DB30) PRIVATE (DD79,DD80,DD81,DD82,DD83
C$OMP& ,DD84,DD85,DD86,J3,J2,J1)
C$OMP DO 
       DO J3=2,11,4
        DO J2=2,14
         DO J1=2,6,2
          DD79 = DB20(J1,J2-1,J3) - DB10(J1,J2,J3)
          DD80 = DB20(J1+1,J2-1,J3) - DB10(J1+1,J2,J3)
          DD81 = DB20(J1,J2-1,J3+1) - DB10(J1,J2,J3+1)
          DD82 = DB20(J1+1,J2-1,J3+1) - DB10(J1+1,J2,J3+1)
          DD83 = DB20(J1,J2-1,J3+2) - DB10(J1,J2,J3+2)
          DD84 = DB20(J1+1,J2-1,J3+2) - DB10(J1+1,J2,J3+2)
          DD85 = DB20(J1,J2-1,J3+3) - DB10(J1,J2,J3+3)
          DD86 = DB20(J1+1,J2-1,J3+3) - DB10(J1+1,J2,J3+3)
          DB20(J1,J2,J3) = DB30(J1,J2-1,J3) + DB10(J3,J2,J1)
          DB20(J1+1,J2,J3) = DB30(J1+1,J2-1,J3) + DB10(J3,J2,J1+1)
          DB20(J1,J2,J3+1) = DB30(J1,J2-1,J3+1) + DB10(J3+1,J2,J1)
          DB20(J1+1,J2,J3+1) = DB30(J1+1,J2-1,J3+1) + DB10(J3+1,J2,J1+1)
          DB20(J1,J2,J3+2) = DB30(J1,J2-1,J3+2) + DB10(J3+2,J2,J1)
          DB20(J1+1,J2,J3+2) = DB30(J1+1,J2-1,J3+2) + DB10(J3+2,J2,J1+1)
          DB20(J1,J2,J3+3) = DB30(J1,J2-1,J3+3) + DB10(J3+3,J2,J1)
          DB20(J1+1,J2,J3+3) = DB30(J1+1,J2-1,J3+3) + DB10(J3+3,J2,J1+1)
          DB30(J1+1,J2,J3+3) = DD86
          DB30(J1,J2,J3+3) = DD85
          DB30(J1+1,J2,J3+2) = DD84
          DB30(J1,J2,J3+2) = DD83
          DB30(J1+1,J2,J3+1) = DD82
          DB30(J1,J2,J3+1) = DD81
          DB30(J1+1,J2,J3) = DD80
          DB30(J1,J2,J3) = DD79
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO J2=2,14
        DB30(2,J2,14) = DB20(2,J2-1,14) - DB10(2,J2,14)
        DB30(3,J2,14) = DB20(3,J2-1,14) - DB10(3,J2,14)
        DB30(4,J2,14) = DB20(4,J2-1,14) - DB10(4,J2,14)
        DB30(5,J2,14) = DB20(5,J2-1,14) - DB10(5,J2,14)
        DB30(6,J2,14) = DB20(6,J2-1,14) - DB10(6,J2,14)
        DB30(7,J2,14) = DB20(7,J2-1,14) - DB10(7,J2,14)
        DB20(2,J2,14) = DB30(2,J2-1,14) + DB10(14,J2,2)
        DB20(3,J2,14) = DB30(3,J2-1,14) + DB10(14,J2,3)
        DB20(4,J2,14) = DB30(4,J2-1,14) + DB10(14,J2,4)
        DB20(5,J2,14) = DB30(5,J2-1,14) + DB10(14,J2,5)
        DB20(6,J2,14) = DB30(6,J2-1,14) + DB10(14,J2,6)
        DB20(7,J2,14) = DB30(7,J2-1,14) + DB10(14,J2,7)
       END DO

       WRITE (6, 9999) ' (CD10) ', (CD10(I,I), I=1,20)
       WRITE (6, 9999) ' (CD20) ', (CD20(7,J), I=1,20)
       WRITE (6, 9999) ' (CD30) ', ((CD30(I,J), I=1,10), J=1,10)
       WRITE (6, 9999) ' (DB20) ', (((DB20(I,J,K), I=1,10), J=1,10), K=1
     X   ,10)
       WRITE (6, 9999) ' (DB30) ', (((DB30(I,J,K), I=1,10), J=1,10), K=1
     X   ,10)
 9999  FORMAT(A,(G20.6))

       STOP 
      END
