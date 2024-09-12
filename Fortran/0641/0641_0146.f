      PROGRAM MAIN
       IMPLICIT REAL*8 (D), COMPLEX*16 (C)
       DIMENSION DA10(20), DA20(20), DA30(20), DA40(20), DB10(20,20), 
     X   DB20(20,20), DB30(20,20), DC10(20,20,20), DC20(20,20,20), DC30(
     X   20,20,20)
       DIMENSION CD10(20), CD20(20), CD30(20,20), CD40(20,20,20)
       INTEGER IT3, IT2, IT1
       PARAMETER (IT3 = 10, IT2 = 2, IT1 = 1)
       DATA DA10/20*1.D0/ 
       DATA DA20/20*2.D0/ 
       DATA DA30/20*3.D0/ 
       DATA DA40/20*4.D0/ 
       DATA DB10/400*1.D0/ 
       DATA DB20/400*2.D0/ 
       DATA DB30/400*4.D0/ 
       DATA DC10/8000*2.D0/ 
       DATA DC20/8000*10.D0/ 
       DATA DC30/8000*1.D0/ 
       DATA CD10/20*(2.D0,1.D0)/ 
       DATA CD20/20*(2.D0,4.D0)/ 
       DATA CD30/400*(3.D0,2.D0)/ 
       DATA CD40/8000*(4.D0,5.D0)/ 
       INTEGER II10, II9, II8, II7, II6, II5, II4, II3, II2, II1, K11, 
     X   I1
       DOUBLE PRECISION DD109, DD108, DD107, DD106, DD105, DD104, DD103
     X   , DD102, DD101, DD100, DD99, DD98, DD97, DD96, DD95, DD94, DD93
     X   , DD92, DD91, DD90, DD89, DD88, DD87, DD86, DD85, DD84, DD83, 
     X   DD82, DD81, DD80, DD79, DD78, DD77, DD76, DD75, DD74, DD73, 
     X   DD72, DD71, DD70
       DOUBLE PRECISION DD69, DD68, DD67, DD66, DD65, DD64, DD63, DD62, 
     X   DD61, DD60, DD59, DD58, DD57, DD56, DD55, DD54, DD53, DD52, 
     X   DD51, DD50, DD49, DD48, DD47, DD46, DD45, DD44, DD43, DD42, 
     X   DD41, DD40, DD39, DD38, DD37, DD36, DD35, DD34, DD33, DD32, 
     X   DD31, DD30
       DOUBLE PRECISION DD29, DD28, DD27, DD26, DD25, DD24, DD23, DD22, 
     X   DD21, DD20, DD19, DD18, DD17, DD16, DD15, DD14, DD13, DD12, 
     X   DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1
       COMPLEX*16 DC29, DC28, DC27, DC26, DC25, DC24, DC23, DC22, DC21, 
     X   DC19, DC18, DC17, DC16, DC15, DC14, DC13, DC12, DC11, DC9, DC8
     X   , DC7, DC6, DC5, DC4, DC3, DC2, DC1

       DO I1=1,6,5
        DD100 = DA20(I1) + DA40(I1+10)
        DD101 = DA20(I1+1) + DA40(I1+11)
        DD102 = DA20(I1+2) + DA40(I1+12)
        DD103 = DA20(I1+3) + DA40(I1+13)
        DD104 = DA20(I1+4) + DA40(I1+14)
        DD90 = DA30(I1+10) + DA10(I1+10)
        DD91 = DA30(I1+11) + DA10(I1+11)
        DD92 = DA30(I1+12) + DA10(I1+12)
        DD93 = DA30(I1+13) + DA10(I1+13)
        DD94 = DA30(I1+14) + DA10(I1+14)
        DD95 = DA40(I1+10) + DA20(I1)
        DD96 = DA40(I1+11) + DA20(I1+1)
        DD97 = DA40(I1+12) + DA20(I1+2)
        DD98 = DA40(I1+13) + DA20(I1+3)
        DD99 = DA40(I1+14) + DA20(I1+4)
        DC3 = DCMPLX (DD95, DD90)
        DC4 = DCMPLX (DD96, DD91)
        DC5 = DCMPLX (DD97, DD92)
        DC6 = DCMPLX (DD98, DD93)
        DC1 = DCMPLX (DD99, DD94)
        DC15 = CD10(I1+10) + DC3
        DC16 = CD10(I1+11) + DC4
        DC17 = CD10(I1+12) + DC5
        DC18 = CD10(I1+13) + DC6
        CD10(I1+4) = CD10(I1+14) + DC1
        CD10(I1+3) = DC18
        CD10(I1+2) = DC17
        CD10(I1+1) = DC16
        CD10(I1) = DC15
        DA30(I1+4) = DD99
        DA30(I1+3) = DD98
        DA30(I1+2) = DD97
        DA30(I1+1) = DD96
        DA30(I1) = DD95
        DA40(I1+4) = DD94
        DA40(I1+3) = DD93
        DA40(I1+2) = DD92
        DA40(I1+1) = DD91
        DA40(I1) = DD90
        DA10(I1+4) = DD104
        DA10(I1+3) = DD103
        DA10(I1+2) = DD102
        DA10(I1+1) = DD101
        DA10(I1) = DD100
       END DO

       DO I1=1,10
        DB20(I1,1) = DB10(I1,1) * DB30(I1+10,1)
        DB20(I1,3) = DB10(I1,3) * DB30(I1+10,3)
        DB20(I1,5) = DB10(I1,5) * DB30(I1+10,5)
        DB20(I1,7) = DB10(I1,7) * DB30(I1+10,7)
        DB20(I1,9) = DB10(I1,9) * DB30(I1+10,9)
        DB20(I1,11) = DB10(I1,11) * DB30(I1+10,11)
        DB20(I1,13) = DB10(I1,13) * DB30(I1+10,13)
        DB20(I1,15) = DB10(I1,15) * DB30(I1+10,15)
        DD22 = DB20(I1,1)
        DD23 = DB20(I1,3)
        DD24 = DB20(I1,5)
        DD25 = DB20(I1,7)
        DD26 = DB20(I1,9)
        DD27 = DB20(I1,11)
        DD28 = DB20(I1,13)
        DX1 = DB20(I1,15)
        DD29 = DIMAG (CD30(I1,1))
        DD30 = DIMAG (CD30(I1,3))
        DD31 = DIMAG (CD30(I1,5))
        DD32 = DIMAG (CD30(I1,7))
        DD33 = DIMAG (CD30(I1,9))
        DD34 = DIMAG (CD30(I1,11))
        DD35 = DIMAG (CD30(I1,13))
        DD14 = DIMAG (CD30(I1,15))
        DD22 = MAX (DD22, DD29)
        DD23 = MAX (DD23, DD30)
        DD24 = MAX (DD24, DD31)
        DD25 = MAX (DD25, DD32)
        DD26 = MAX (DD26, DD33)
        DD27 = MAX (DD27, DD34)
        DD28 = MAX (DD28, DD35)
        DX1 = MAX (DX1, DD14)
        DD29 = DB20(I1+10,1) * 2D0
        DD30 = DB20(I1+10,3) * 2D0
        DD31 = DB20(I1+10,5) * 2D0
        DD32 = DB20(I1+10,7) * 2D0
        DD33 = DB20(I1+10,9) * 2D0
        DD34 = DB20(I1+10,11) * 2D0
        DD35 = DB20(I1+10,13) * 2D0
        DD14 = DB20(I1+10,15) * 2D0
        DC7 = DCMPLX (DD22, DD29)
        DC8 = DCMPLX (DD23, DD30)
        DC9 = DCMPLX (DD24, DD31)
        DC11 = DCMPLX (DD25, DD32)
        DC12 = DCMPLX (DD26, DD33)
        DC13 = DCMPLX (DD27, DD34)
        DC14 = DCMPLX (DD28, DD35)
        DC2 = DCMPLX (DX1, DD14)
        CD30(I1,1) = CD30(I1,1) + DC7
        CD30(I1,3) = CD30(I1,3) + DC8
        CD30(I1,5) = CD30(I1,5) + DC9
        CD30(I1,7) = CD30(I1,7) + DC11
        CD30(I1,9) = CD30(I1,9) + DC12
        CD30(I1,11) = CD30(I1,11) + DC13
        CD30(I1,13) = CD30(I1,13) + DC14
        CD30(I1,15) = CD30(I1,15) + DC2
        II2 = (I1 + 9) / 4
        II1 = II2 * 4 + 2
        DO K2=2,10
         DO J2=2,I1+7,4
          DB30(J2,K2) = DB20(J2,K2) - DC30(I1,J2,K2)
          DB20(I1,K2) = DB10(J2,K2) - DC20(I1,J2,K2)
          DB10(J2,K2) = DMAX1 (DB30(I1,K2), DB20(I1,K2))
          DB30(J2+1,K2) = DB20(J2+1,K2) - DC30(I1,J2+1,K2)
          DB20(I1,K2) = DB10(J2+1,K2) - DC20(I1,J2+1,K2)
          DB10(J2+1,K2) = DMAX1 (DB30(I1,K2), DB20(I1,K2))
          DB30(J2+2,K2) = DB20(J2+2,K2) - DC30(I1,J2+2,K2)
          DB20(I1,K2) = DB10(J2+2,K2) - DC20(I1,J2+2,K2)
          DB10(J2+2,K2) = DMAX1 (DB30(I1,K2), DB20(I1,K2))
          DB30(J2+3,K2) = DB20(J2+3,K2) - DC30(I1,J2+3,K2)
          DB20(I1,K2) = DB10(J2+3,K2) - DC20(I1,J2+3,K2)
          DB10(J2+3,K2) = DMAX1 (DB30(I1,K2), DB20(I1,K2))
         END DO
         DO J2=II1,I1+10,1
          DB30(J2,K2) = DB20(J2,K2) - DC30(I1,J2,K2)
          DB20(I1,K2) = DB10(J2,K2) - DC20(I1,J2,K2)
          DB10(J2,K2) = DMAX1 (DB30(I1,K2), DB20(I1,K2))
         END DO
        END DO
        II4 = (I1 + 9) / 4
        II3 = II4 * 4 + 2
        DO J2=2,I1+7,4
         DX3 = 1D0 + DSQRT (DABS (DB10(J2,10)))
         CD30(I1,J2) = DCMPLX (DX3, DMOD (DB20(I1+10,J2), DB30(J2,10)))
         DX3 = 1D0 + DSQRT (DABS (DB10(J2+1,10)))
         CD30(I1,J2+1) = DCMPLX (DX3, DMOD (DB20(I1+10,J2+1), DB30(J2+1,
     X     10)))
         DX3 = 1D0 + DSQRT (DABS (DB10(J2+2,10)))
         CD30(I1,J2+2) = DCMPLX (DX3, DMOD (DB20(I1+10,J2+2), DB30(J2+2,
     X     10)))
         DX3 = 1D0 + DSQRT (DABS (DB10(J2+3,10)))
         CD30(I1,J2+3) = DCMPLX (DX3, DMOD (DB20(I1+10,J2+3), DB30(J2+3,
     X     10)))
        END DO
        DO J2=II3,I1+10,1
         DX3 = 1D0 + DSQRT (DABS (DB10(J2,10)))
         CD30(I1,J2) = DCMPLX (DX3, DMOD (DB20(I1+10,J2), DB30(J2,10)))
        END DO
       END DO
       DO J1=1,9,8
        DO K11=2,10,2
         DO I1=1,6,5
          DC10(I1,J1,K11) = DC20(I1,J1+1,K11+2) + DC30(I1,J1,K11+1)
          DC10(I1+1,J1,K11) = DC20(I1+1,J1+1,K11+2) + DC30(I1+1,J1,K11+1
     X      )
          DC10(I1+2,J1,K11) = DC20(I1+2,J1+1,K11+2) + DC30(I1+2,J1,K11+1
     X      )
          DC10(I1+3,J1,K11) = DC20(I1+3,J1+1,K11+2) + DC30(I1+3,J1,K11+1
     X      )
          DC10(I1+4,J1,K11) = DC20(I1+4,J1+1,K11+2) + DC30(I1+4,J1,K11+1
     X      )
          DC10(I1,J1+2,K11) = DC20(I1,J1+3,K11+2) + DC30(I1,J1+2,K11+1)
          DC10(I1+1,J1+2,K11) = DC20(I1+1,J1+3,K11+2) + DC30(I1+1,J1+2,
     X      K11+1)
          DC10(I1+2,J1+2,K11) = DC20(I1+2,J1+3,K11+2) + DC30(I1+2,J1+2,
     X      K11+1)
          DC10(I1+3,J1+2,K11) = DC20(I1+3,J1+3,K11+2) + DC30(I1+3,J1+2,
     X      K11+1)
          DC10(I1+4,J1+2,K11) = DC20(I1+4,J1+3,K11+2) + DC30(I1+4,J1+2,
     X      K11+1)
          DC10(I1,J1+4,K11) = DC20(I1,J1+5,K11+2) + DC30(I1,J1+4,K11+1)
          DC10(I1+1,J1+4,K11) = DC20(I1+1,J1+5,K11+2) + DC30(I1+1,J1+4,
     X      K11+1)
          DC10(I1+2,J1+4,K11) = DC20(I1+2,J1+5,K11+2) + DC30(I1+2,J1+4,
     X      K11+1)
          DC10(I1+3,J1+4,K11) = DC20(I1+3,J1+5,K11+2) + DC30(I1+3,J1+4,
     X      K11+1)
          DC10(I1+4,J1+4,K11) = DC20(I1+4,J1+5,K11+2) + DC30(I1+4,J1+4,
     X      K11+1)
          DC10(I1,J1+6,K11) = DC20(I1,J1+7,K11+2) + DC30(I1,J1+6,K11+1)
          DC10(I1+1,J1+6,K11) = DC20(I1+1,J1+7,K11+2) + DC30(I1+1,J1+6,
     X      K11+1)
          DC10(I1+2,J1+6,K11) = DC20(I1+2,J1+7,K11+2) + DC30(I1+2,J1+6,
     X      K11+1)
          DC10(I1+3,J1+6,K11) = DC20(I1+3,J1+7,K11+2) + DC30(I1+3,J1+6,
     X      K11+1)
          DC10(I1+4,J1+6,K11) = DC20(I1+4,J1+7,K11+2) + DC30(I1+4,J1+6,
     X      K11+1)
         END DO
        END DO
       END DO
C$OMP PARALLEL SHARED (DC10,DC30,CD40,DC20) PRIVATE (DD15,DD16,DD17,DD18
C$OMP& ,DD36,DD37,DD38,DD39,DD40,DD41,DD42,DD43,DD44,DD45,DD46,DD47,DD48
C$OMP& ,DD49,DD50,DD51,J1,K11,I1,II6,II5,K2,J2)
C$OMP DO 
       DO J1=1,15,2
        DO K11=2,10,2
         DO I1=1,6,5
          DD36 = DC10(I1,J1,K11-1) * 2D0
          DD37 = DC10(I1+1,J1,K11-1) * 2D0
          DD38 = DC10(I1+2,J1,K11-1) * 2D0
          DD39 = DC10(I1+3,J1,K11-1) * 2D0
          DD16 = DC10(I1+4,J1,K11-1) * 2D0
          DD40 = DD36 - DC30(I1,J1,K11)
          DD41 = DD37 - DC30(I1+1,J1,K11)
          DD42 = DD38 - DC30(I1+2,J1,K11)
          DD43 = DD39 - DC30(I1+3,J1,K11)
          DD15 = DD16 - DC30(I1+4,J1,K11)
          DD44 = DIMAG (CD40(I1,J1,K11+2))
          DD45 = DIMAG (CD40(I1+1,J1,K11+2))
          DD46 = DIMAG (CD40(I1+2,J1,K11+2))
          DD47 = DIMAG (CD40(I1+3,J1,K11+2))
          DD18 = DIMAG (CD40(I1+4,J1,K11+2))
          DD48 = DC20(I1,J1+2,K11) + DD44
          DD49 = DC20(I1+1,J1+2,K11) + DD45
          DD50 = DC20(I1+2,J1+2,K11) + DD46
          DD51 = DC20(I1+3,J1+2,K11) + DD47
          DD17 = DC20(I1+4,J1+2,K11) + DD18
          CD40(I1,J1,K11) = DCMPLX (DD40, DD48)
          CD40(I1+1,J1,K11) = DCMPLX (DD41, DD49)
          CD40(I1+2,J1,K11) = DCMPLX (DD42, DD50)
          CD40(I1+3,J1,K11) = DCMPLX (DD43, DD51)
          CD40(I1+4,J1,K11) = DCMPLX (DD15, DD17)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO K2=2,10
        DO I1=1,10
         II6 = (I1 + 9) / 4
         II5 = II6 * 4 + 2
         DO J2=2,I1+7,4
          DC20(I1,J2,K2) = DC10(I1,J2,K2+1)
          DC20(I1,J2+1,K2) = DC10(I1,J2+1,K2+1)
          DC20(I1,J2+2,K2) = DC10(I1,J2+2,K2+1)
          DC20(I1,J2+3,K2) = DC10(I1,J2+3,K2+1)
         END DO
         DO J2=II5,I1+10,1
          DC20(I1,J2,K2) = DC10(I1,J2,K2+1)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       I = 11
       WRITE (6, 9999) ' (DA10) ', (DA10(K), K=1,10)
       WRITE (6, 9999) ' (DA30) ', (DA30(K), K=1,10)
       WRITE (6, 9999) ' (DA40) ', (DA40(K), K=1,10)
       WRITE (6, 9999) ' (CD10) ', (CD10(K), K=1,10)
       WRITE (6, 9999) ' (DB10) ', ((DB10(I,J), I=1,15), J=1,15)
       WRITE (6, 9999) ' (DB20) ', ((DB20(I,J), I=1,15), J=1,15)
       WRITE (6, 9999) ' (DB30) ', ((DB30(I,J), I=1,15), J=1,15)
       WRITE (6, 9999) ' (CD30) ', ((CD30(I,J), I=1,15), J=1,15)
       WRITE (6, 9999) ' (DC10) ', (((DC10(I,J,K), I=1,10), J=1,15,2), K
     X   =2,10,2)
       WRITE (6, 9999) ' (DC20) ', (((DC20(I,J,K), I=1,10), J=1,15), K=1
     X   ,10)
       WRITE (6, 9999) ' (CD40) ', (((CD40(I,J,K), I=1,10), J=1,10), K=1
     X   ,10)
C$OMP PARALLEL SHARED (DC10,DC20,DC30,CD40) PRIVATE (DD1,DD2,DD19,DD52,
C$OMP& DD53,DD54,DD55,DD56,DD57,DD58,DD59,DD60,DD61,DD62,DD63,DD64,DD65,
C$OMP& DD66,DD67,DD68,DD69,DD70,DD71,DC19,DC21,DC22,DC23,DC24,DC25,DC26,
C$OMP& DC27,DC28,DC29,K11,J1,I1,DX1,DY1)
C$OMP DO 
       DO K11=1,10
        DO J1=11,19,2

         DO I1=1,11,10
          DD52 = DC10(I1,J1,K11) + DC20(I1,J1,K11)
          DD53 = DC10(I1+2,J1,K11) + DC20(I1+2,J1,K11)
          DD54 = DC10(I1+4,J1,K11) + DC20(I1+4,J1,K11)
          DD55 = DC10(I1+6,J1,K11) + DC20(I1+6,J1,K11)
          DD1 = DC10(I1+8,J1,K11) + DC20(I1+8,J1,K11)
          DD56 = DC10(I1,J1+1,K11) + DC20(I1,J1+1,K11)
          DD57 = DC10(I1+2,J1+1,K11) + DC20(I1+2,J1+1,K11)
          DD58 = DC10(I1+4,J1+1,K11) + DC20(I1+4,J1+1,K11)
          DD59 = DC10(I1+6,J1+1,K11) + DC20(I1+6,J1+1,K11)
          DX1 = DC10(I1+8,J1+1,K11) + DC20(I1+8,J1+1,K11)
          DD60 = DC10(I1,J1,K11) + DC30(I1,J1,K11)
          DD61 = DC10(I1+2,J1,K11) + DC30(I1+2,J1,K11)
          DD62 = DC10(I1+4,J1,K11) + DC30(I1+4,J1,K11)
          DD63 = DC10(I1+6,J1,K11) + DC30(I1+6,J1,K11)
          DD2 = DC10(I1+8,J1,K11) + DC30(I1+8,J1,K11)
          DD64 = DC10(I1,J1+1,K11) + DC30(I1,J1+1,K11)
          DD65 = DC10(I1+2,J1+1,K11) + DC30(I1+2,J1+1,K11)
          DD66 = DC10(I1+4,J1+1,K11) + DC30(I1+4,J1+1,K11)
          DD67 = DC10(I1+6,J1+1,K11) + DC30(I1+6,J1+1,K11)
          DY1 = DC10(I1+8,J1+1,K11) + DC30(I1+8,J1+1,K11)
          DD68 = DREAL (CD40(I1,J1,K11))
          DD69 = DREAL (CD40(I1+2,J1,K11))
          DD70 = DREAL (CD40(I1+4,J1,K11))
          DD71 = DREAL (CD40(I1+6,J1,K11))
          DD19 = DREAL (CD40(I1+8,J1,K11))
          DD52 = MAX (DD52, DD68)
          DD53 = MAX (DD53, DD69)
          DD54 = MAX (DD54, DD70)
          DD55 = MAX (DD55, DD71)
          DD1 = MAX (DD1, DD19)
          DD68 = DREAL (CD40(I1,J1+1,K11))
          DD69 = DREAL (CD40(I1+2,J1+1,K11))
          DD70 = DREAL (CD40(I1+4,J1+1,K11))
          DD71 = DREAL (CD40(I1+6,J1+1,K11))
          DD19 = DREAL (CD40(I1+8,J1+1,K11))
          DD56 = MAX (DD56, DD68)
          DD57 = MAX (DD57, DD69)
          DD58 = MAX (DD58, DD70)
          DD59 = MAX (DD59, DD71)
          DX1 = MAX (DX1, DD19)
          DD68 = DIMAG (CD40(I1,J1,K11))
          DD69 = DIMAG (CD40(I1+2,J1,K11))
          DD70 = DIMAG (CD40(I1+4,J1,K11))
          DD71 = DIMAG (CD40(I1+6,J1,K11))
          DD19 = DIMAG (CD40(I1+8,J1,K11))
          DD60 = MAX (DD60, DD68)
          DD61 = MAX (DD61, DD69)
          DD62 = MAX (DD62, DD70)
          DD63 = MAX (DD63, DD71)
          DD2 = MAX (DD2, DD19)
          DD68 = DIMAG (CD40(I1,J1+1,K11))
          DD69 = DIMAG (CD40(I1+2,J1+1,K11))
          DD70 = DIMAG (CD40(I1+4,J1+1,K11))
          DD71 = DIMAG (CD40(I1+6,J1+1,K11))
          DD19 = DIMAG (CD40(I1+8,J1+1,K11))
          DD64 = MAX (DD64, DD68)
          DD65 = MAX (DD65, DD69)
          DD66 = MAX (DD66, DD70)
          DD67 = MAX (DD67, DD71)
          DY1 = MAX (DY1, DD19)
          DC19 = DCMPLX (DD52, DD60)
          DC21 = DCMPLX (DD53, DD61)
          DC22 = DCMPLX (DD54, DD62)
          DC23 = DCMPLX (DD55, DD63)
          DC24 = DCMPLX (DD1, DD2)
          DC25 = DCMPLX (DD56, DD64)
          DC26 = DCMPLX (DD57, DD65)
          DC27 = DCMPLX (DD58, DD66)
          DC28 = DCMPLX (DD59, DD67)
          DC29 = DCMPLX (DX1, DY1)
          CD40(I1+8,J1+1,K11) = DC29
          CD40(I1+6,J1+1,K11) = DC28
          CD40(I1+4,J1+1,K11) = DC27
          CD40(I1+2,J1+1,K11) = DC26
          CD40(I1,J1+1,K11) = DC25
          CD40(I1+8,J1,K11) = DC24
          CD40(I1+6,J1,K11) = DC23
          CD40(I1+4,J1,K11) = DC22
          CD40(I1+2,J1,K11) = DC21
          CD40(I1,J1,K11) = DC19
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO J1=11,17,4

        DO I1=1,11,10
         DD72 = DC30(I1,J1,J1) / DC20(I1,J1,11)
         DD73 = DC30(I1+2,J1,J1) / DC20(I1+2,J1,11)
         DD74 = DC30(I1+4,J1,J1) / DC20(I1+4,J1,11)
         DD75 = DC30(I1+6,J1,J1) / DC20(I1+6,J1,11)
         DD20 = DC30(I1+8,J1,J1) / DC20(I1+8,J1,11)
         DC10(I1,J1,1) = DNINT (DD72)
         DC10(I1+2,J1,1) = DNINT (DD73)
         DC10(I1+4,J1,1) = DNINT (DD74)
         DC10(I1+6,J1,1) = DNINT (DD75)
         DC10(I1+8,J1,1) = DNINT (DD20)
         DD72 = DC30(I1,J1+1,J1+1) / DC20(I1,J1+1,11)
         DD73 = DC30(I1+2,J1+1,J1+1) / DC20(I1+2,J1+1,11)
         DD74 = DC30(I1+4,J1+1,J1+1) / DC20(I1+4,J1+1,11)
         DD75 = DC30(I1+6,J1+1,J1+1) / DC20(I1+6,J1+1,11)
         DD20 = DC30(I1+8,J1+1,J1+1) / DC20(I1+8,J1+1,11)
         DC10(I1,J1+1,1) = DNINT (DD72)
         DC10(I1+2,J1+1,1) = DNINT (DD73)
         DC10(I1+4,J1+1,1) = DNINT (DD74)
         DC10(I1+6,J1+1,1) = DNINT (DD75)
         DC10(I1+8,J1+1,1) = DNINT (DD20)
         DD72 = DC30(I1,J1+2,J1+2) / DC20(I1,J1+2,11)
         DD73 = DC30(I1+2,J1+2,J1+2) / DC20(I1+2,J1+2,11)
         DD74 = DC30(I1+4,J1+2,J1+2) / DC20(I1+4,J1+2,11)
         DD75 = DC30(I1+6,J1+2,J1+2) / DC20(I1+6,J1+2,11)
         DD20 = DC30(I1+8,J1+2,J1+2) / DC20(I1+8,J1+2,11)
         DC10(I1,J1+2,1) = DNINT (DD72)
         DC10(I1+2,J1+2,1) = DNINT (DD73)
         DC10(I1+4,J1+2,1) = DNINT (DD74)
         DC10(I1+6,J1+2,1) = DNINT (DD75)
         DC10(I1+8,J1+2,1) = DNINT (DD20)
         DD72 = DC30(I1,J1+3,J1+3) / DC20(I1,J1+3,11)
         DD73 = DC30(I1+2,J1+3,J1+3) / DC20(I1+2,J1+3,11)
         DD74 = DC30(I1+4,J1+3,J1+3) / DC20(I1+4,J1+3,11)
         DD75 = DC30(I1+6,J1+3,J1+3) / DC20(I1+6,J1+3,11)
         DD20 = DC30(I1+8,J1+3,J1+3) / DC20(I1+8,J1+3,11)
         DC10(I1,J1+3,1) = DNINT (DD72)
         DC10(I1+2,J1+3,1) = DNINT (DD73)
         DC10(I1+4,J1+3,1) = DNINT (DD74)
         DC10(I1+6,J1+3,1) = DNINT (DD75)
         DC10(I1+8,J1+3,1) = DNINT (DD20)
        END DO
       END DO
       DO J1=19,20,1

        DO I1=1,11,10
         DD76 = DC30(I1,J1,J1) / DC20(I1,J1,11)
         DD77 = DC30(I1+2,J1,J1) / DC20(I1+2,J1,11)
         DD78 = DC30(I1+4,J1,J1) / DC20(I1+4,J1,11)
         DD79 = DC30(I1+6,J1,J1) / DC20(I1+6,J1,11)
         DD21 = DC30(I1+8,J1,J1) / DC20(I1+8,J1,11)
         DC10(I1,J1,1) = DNINT (DD76)
         DC10(I1+2,J1,1) = DNINT (DD77)
         DC10(I1+4,J1,1) = DNINT (DD78)
         DC10(I1+6,J1,1) = DNINT (DD79)
         DC10(I1+8,J1,1) = DNINT (DD21)
        END DO
       END DO

       DO I1=1,19,2
        DD12 = DA10(I1)
        DO J2=2,10
         DD12 = DD12 + DMOD (DA20(J2), DA30(J2))
         IF (J2 .GT. 0) THEN
          DD11 = DIMAG (CD20(J2))
          II8 = J2 / 4
          II7 = II8 * 4 + 1
          DO K2=1,J2-3,4
           DA20(K2) = DA40(K2) - DD11
           DA20(K2+1) = DA40(K2+1) - DD11
           DA20(K2+2) = DA40(K2+2) - DD11
           DA20(K2+3) = DA40(K2+3) - DD11
          END DO
          DO K2=II7,J2,1
           DA20(K2) = DA40(K2) - DD11
          END DO
         END IF
         II10 = J2 / 4
         II9 = II10 * 4 + 1
         DO K2=1,J2-3,4
          DD105 = DA40(K2) * 2D0
          DD106 = DA40(K2+1) * 2D0
          DD107 = DA40(K2+2) * 2D0
          DD108 = DA40(K2+3) * 2D0
          CD20(K2) = DCMPLX (DA20(K2), DD105)
          CD20(K2+1) = DCMPLX (DA20(K2+1), DD106)
          CD20(K2+2) = DCMPLX (DA20(K2+2), DD107)
          CD20(K2+3) = DCMPLX (DA20(K2+3), DD108)
          DA30(K2+3) = DD108
          DA30(K2+2) = DD107
          DA30(K2+1) = DD106
          DA30(K2) = DD105
         END DO
         DO K2=II9,J2,1
          DD109 = DA40(K2) * 2D0
          CD20(K2) = DCMPLX (DA20(K2), DD109)
          DA30(K2) = DD109
         END DO
        END DO
        DA10(I1) = DD12
        DA40(I1+1) = DA40(I1) + DNINT (DSQRT (DA10(I1+1)))
        DD13 = DA10(I1)
        DO J3=20,15,-5
         DB10(10,J3) = DA40(J3) + DD13 - DA20(J3)
         DB10(10,J3-1) = DA40(J3-1) + DD13 - DA20(J3-1)
         DB10(10,J3-2) = DA40(J3-2) + DD13 - DA20(J3-2)
         DB10(10,J3-3) = DA40(J3-3) + DD13 - DA20(J3-3)
         DB10(10,J3-4) = DA40(J3-4) + DD13 - DA20(J3-4)
         DO K3=10,2,-2
          DD80 = DB10(K3,J3) - DB20(K3,J3)
          DD3 = DB10(K3-1,J3) - DB20(K3-1,J3)
          DD81 = DB10(K3,J3-1) - DB20(K3,J3-1)
          DD4 = DB10(K3-1,J3-1) - DB20(K3-1,J3-1)
          DD82 = DB10(K3,J3-2) - DB20(K3,J3-2)
          DD5 = DB10(K3-1,J3-2) - DB20(K3-1,J3-2)
          DD83 = DB10(K3,J3-3) - DB20(K3,J3-3)
          DD6 = DB10(K3-1,J3-3) - DB20(K3-1,J3-3)
          DD84 = DB10(K3,J3-4) - DB20(K3,J3-4)
          DX3 = DB10(K3-1,J3-4) - DB20(K3-1,J3-4)
          DD85 = DB10(K3,J3) - DB30(K3,J3)
          DD7 = DB10(K3-1,J3) - DB30(K3-1,J3)
          DD86 = DB10(K3,J3-1) - DB30(K3,J3-1)
          DD8 = DB10(K3-1,J3-1) - DB30(K3-1,J3-1)
          DD87 = DB10(K3,J3-2) - DB30(K3,J3-2)
          DD9 = DB10(K3-1,J3-2) - DB30(K3-1,J3-2)
          DD88 = DB10(K3,J3-3) - DB30(K3,J3-3)
          DD10 = DB10(K3-1,J3-3) - DB30(K3-1,J3-3)
          DD89 = DB10(K3,J3-4) - DB30(K3,J3-4)
          DY3 = DB10(K3-1,J3-4) - DB30(K3-1,J3-4)
          DB30(J3,K3) = DMAX1 (DD80, DD85)
          DB30(J3,K3-1) = DMAX1 (DD3, DD7)
          DB30(J3-1,K3) = DMAX1 (DD81, DD86)
          DB30(J3-1,K3-1) = DMAX1 (DD4, DD8)
          DB30(J3-2,K3) = DMAX1 (DD82, DD87)
          DB30(J3-2,K3-1) = DMAX1 (DD5, DD9)
          DB30(J3-3,K3) = DMAX1 (DD83, DD88)
          DB30(J3-3,K3-1) = DMAX1 (DD6, DD10)
          DB30(J3-4,K3) = DMAX1 (DD84, DD89)
          DB30(J3-4,K3-1) = DMAX1 (DX3, DY3)
          CD30(J3,K3) = DCMPLX (DD80, DD85)
          CD30(J3,K3-1) = DCMPLX (DD3, DD7)
          CD30(J3-1,K3) = DCMPLX (DD81, DD86)
          CD30(J3-1,K3-1) = DCMPLX (DD4, DD8)
          CD30(J3-2,K3) = DCMPLX (DD82, DD87)
          CD30(J3-2,K3-1) = DCMPLX (DD5, DD9)
          CD30(J3-3,K3) = DCMPLX (DD83, DD88)
          CD30(J3-3,K3-1) = DCMPLX (DD6, DD10)
          CD30(J3-4,K3) = DCMPLX (DD84, DD89)
          CD30(J3-4,K3-1) = DCMPLX (DX3, DY3)
         END DO
         DA20(J3) = DB30(J3,10) - DD13
         DA20(J3-1) = DB30(J3-1,10) - DD13
         DA20(J3-2) = DB30(J3-2,10) - DD13
         DA20(J3-3) = DB30(J3-3,10) - DD13
         DA20(J3-4) = DB30(J3-4,10) - DD13
        END DO
       END DO
       I = 21
       WRITE (6, 9999) ' (DA10) ', DA10
       WRITE (6, 9999) ' (DA20) ', DA20
       WRITE (6, 9999) ' (DA30) ', DA30
       WRITE (6, 9999) ' (DA40) ', DA40
       WRITE (6, 9999) ' (CD20) ', CD20
       WRITE (6, 9999) ' (DB30) ', ((DB30(I,J), I=20,11,-1), J=10,1,-1)
       WRITE (6, 9999) ' (CD30) ', ((CD30(I,J), I=20,11,-1), J=10,1,-1)
       WRITE (6, 9999) ' (DB10) ', (DB10(10,K), K=20,11,-1)
       WRITE (6, 9999) ' (CD40) ', (((CD40(I,J,K), I=1,10), J=1,20), K=1
     X   ,10)
       WRITE (6, 9999) ' (DC10) ', ((DC10(I,J,1), I=1,19,2), J=11,20)
 9999  FORMAT(A,(G20.6))

       STOP 
      END
