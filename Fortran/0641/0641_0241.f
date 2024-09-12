      PROGRAM MAIN
       IMPLICIT REAL*8 (A-B,D,O-Z), COMPLEX*16 (C)
       DIMENSION DA10(20,20), DA20(20,20), DA30(20,20), DB10(20,20,20), 
     X   DB20(20,20,20), DB30(20,20,20)
       DIMENSION CD10(20,20), CD20(20,20), CD30(20,20)
       PARAMETER (JC5 = 20)
       INTEGER N1, NN
       PARAMETER (N1 = 1, NN = 14)
       DATA DA10/400*1.0D0/ 
       DATA DA20/400*2.D0/ 
       DATA DA30/400*3.D0/ 
       DATA DB10/8000*4.D0/ 
       DATA DB20/8000*5.D0/ 
       DATA DB30/8000*3.D0/ 
       DATA CD10/400*(-1.D0,2.D0)/ 
       DATA CD20/400*(3.D0,-2.D0)/ 
       DATA CD30/400*(2.D0,0.1D0)/ 
       INTEGER I31
       DOUBLE PRECISION DD132, DD131, DD130, DD129, DD128, DD127, DD126
     X   , DD125, DD124, DD123, DD122, DD121, DD120, DD119, DD118, DD117
     X   , DD116, DD115, DD114, DD113, DD112, DD111, DD110, DD109, DD108
     X   , DD107, DD106, DD105, DD104, DD103, DD102, DD101, DD100, DD99
     X   , DD98, DD97, DD96, DD95, DD94, DD93
       DOUBLE PRECISION DD92, DD91, DD90, DD89, DD88, DD87, DD86, DD85, 
     X   DD84, DD83, DD82, DD81, DD80, DD79, DD78, DD77, DD76, DD75, 
     X   DD74, DD73, DD72, DD71, DD70, DD69, DD68, DD67, DD66, DD65, 
     X   DD64, DD63, DD62, DD61, DD60, DD59, DD58, DD57, DD56, DD55, 
     X   DD54, DD53
       DOUBLE PRECISION DD52, DD51, DD50, DD49, DD48, DD47, DD46, DD45, 
     X   DD44, DD43, DD42, DD41, DD40, DD39, DD38, DD37, DD36, DD35, 
     X   DD34, DD33, DD32, DD31, DD30, DD29, DD28, DD27, DD26, DD25, 
     X   DD24, DD23, DD22, DD21, DD20, DD19, DD18, DD17, DD16, DD15, 
     X   DD14, DD13
       DOUBLE PRECISION DD12, DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, 
     X   DD3, DD2, DD1
       COMPLEX*16 DC1
       DO I2=2,12,3
        DD5 = DB10(I2,15,2)
        DD6 = DB10(I2+1,15,2)
        DD7 = DB10(I2+2,15,2)

        DO I1=1,11,4
         DA20(I1+2,I2) = DIMAG (CD30(I1+1,I2))
         DA20(I1+3,I2) = DIMAG (CD30(I1+2,I2))
         DA20(I1+4,I2) = DIMAG (CD30(I1+3,I2))
         DA20(I1+5,I2) = DIMAG (CD30(I1+4,I2))
         DA20(I1+2,I2+1) = DIMAG (CD30(I1+1,I2+1))
         DA20(I1+3,I2+1) = DIMAG (CD30(I1+2,I2+1))
         DA20(I1+4,I2+1) = DIMAG (CD30(I1+3,I2+1))
         DA20(I1+5,I2+1) = DIMAG (CD30(I1+4,I2+1))
         DA20(I1+2,I2+2) = DIMAG (CD30(I1+1,I2+2))
         DA20(I1+3,I2+2) = DIMAG (CD30(I1+2,I2+2))
         DA20(I1+4,I2+2) = DIMAG (CD30(I1+3,I2+2))
         DA20(I1+5,I2+2) = DIMAG (CD30(I1+4,I2+2))
         DA30(I1+2,I2) = DD5
         DA30(I1+3,I2) = DD5
         DA30(I1+4,I2) = DD5
         DA30(I1+5,I2) = DD5
         DA30(I1+2,I2+1) = DD6
         DA30(I1+3,I2+1) = DD6
         DA30(I1+4,I2+1) = DD6
         DA30(I1+5,I2+1) = DD6
         DA30(I1+2,I2+2) = DD7
         DA30(I1+3,I2+2) = DD7
         DA30(I1+4,I2+2) = DD7
         DA30(I1+5,I2+2) = DD7
        END DO
        DO I1=13,14,1
         DA20(I1+2,I2) = DIMAG (CD30(I1+1,I2))
         DA20(I1+2,I2+1) = DIMAG (CD30(I1+1,I2+1))
         DA20(I1+2,I2+2) = DIMAG (CD30(I1+1,I2+2))
         DA30(I1+2,I2) = DD5
         DA30(I1+2,I2+1) = DD6
         DA30(I1+2,I2+2) = DD7
        END DO
       END DO
       DD8 = DB10(14,15,2)

       DO I1=1,11,4
        DA20(I1+2,14) = DIMAG (CD30(I1+1,14))
        DA20(I1+3,14) = DIMAG (CD30(I1+2,14))
        DA20(I1+4,14) = DIMAG (CD30(I1+3,14))
        DA20(I1+5,14) = DIMAG (CD30(I1+4,14))
        DA30(I1+2,14) = DD8
        DA30(I1+3,14) = DD8
        DA30(I1+4,14) = DD8
        DA30(I1+5,14) = DD8
       END DO
       DO I1=13,14,1
        DA20(I1+2,14) = DIMAG (CD30(I1+1,14))
        DA30(I1+2,14) = DD8
       END DO
       DO I2=2,14

        DO I1=1,11,4
         DA10(I1+2,I2) = DREAL (CD30(I1,I2+1))
         DX = DIMAG (CD10(I1,I2)) + DA10(I1+2,I2+1)
         DY = DREAL (CD20(I1,I2)) + DA20(I1+2,I2-1)
         IF (DX - DY) 39, 38, 37
   37    CD30(I1,I2) = DCMPLX (DX, DY)
         GO TO 39
   38    DA30(I1+2,I2) = DMIN1 (DX, DY)
   39    DA10(I1+3,I2) = DREAL (CD30(I1+1,I2+1))
         DX = DIMAG (CD10(I1+1,I2)) + DA10(I1+3,I2+1)
         DY = DREAL (CD20(I1+1,I2)) + DA20(I1+3,I2-1)
         IF (DX - DY) 6, 5, 4
    4    CD30(I1+1,I2) = DCMPLX (DX, DY)
         GO TO 6
    5    DA30(I1+3,I2) = DMIN1 (DX, DY)
    6    DA10(I1+4,I2) = DREAL (CD30(I1+2,I2+1))
         DX = DIMAG (CD10(I1+2,I2)) + DA10(I1+4,I2+1)
         DY = DREAL (CD20(I1+2,I2)) + DA20(I1+4,I2-1)
         IF (DX - DY) 9, 8, 7
    7    CD30(I1+2,I2) = DCMPLX (DX, DY)
         GO TO 9
    8    DA30(I1+4,I2) = DMIN1 (DX, DY)
    9    DA10(I1+5,I2) = DREAL (CD30(I1+3,I2+1))
         DX = DIMAG (CD10(I1+3,I2)) + DA10(I1+5,I2+1)
         DY = DREAL (CD20(I1+3,I2)) + DA20(I1+5,I2-1)
         IF (DX - DY) 13, 12, 11
   11    CD30(I1+3,I2) = DCMPLX (DX, DY)
         GO TO 13
   12    DA30(I1+5,I2) = DMIN1 (DX, DY)
   13    CONTINUE
        END DO
        DO I1=13,14,1
         DA10(I1+2,I2) = DREAL (CD30(I1,I2+1))
         DX = DIMAG (CD10(I1,I2)) + DA10(I1+2,I2+1)
         DY = DREAL (CD20(I1,I2)) + DA20(I1+2,I2-1)
         IF (DX - DY) 3, 2, 1
    1    CD30(I1,I2) = DCMPLX (DX, DY)
         GO TO 3
    2    DA30(I1+2,I2) = DMIN1 (DX, DY)
    3    CONTINUE
        END DO
       END DO
C$OMP PARALLEL SHARED (DA20,DA10,DB30,DB20,DB10) PRIVATE (DD9,DD10,DD11,
C$OMP& DD12,DD13,DD14,DD15,DD16,DD17,DD18,DD19,DD20,DD21,DD22,DD23,DD24,
C$OMP& DD25,DD26,DD27,DD28,DD29,DD30,DD31,DD32,DD33,DD34,DD35,DD36,DD37,
C$OMP& DD38,DD39,DD40,DD41,DD42,DD43,DD44,DD45,DD46,DD47,DD48,DD89,DD90,
C$OMP& DD91,DD92,DD93,DD94,DD95,DD96,DD97,DD98,DD99,DD100,DD101,DD102,
C$OMP& DD103,DD104,I4,I1,I31,I2)
C$OMP DO 
       DO I4=2,11,4

        DO I1=1,11,4
         DD9 = DA20(I1,I4)
         DD10 = DA20(I1,I4+1)
         DD11 = DA20(I1,I4+2)
         DD12 = DA20(I1,I4+3)
         DD13 = DA10(I1,I4)
         DD14 = DA10(I1,I4+1)
         DD15 = DA10(I1,I4+2)
         DD16 = DA10(I1,I4+3)
         DD17 = DA20(I1+1,I4)
         DD18 = DA20(I1+1,I4+1)
         DD19 = DA20(I1+1,I4+2)
         DD20 = DA20(I1+1,I4+3)
         DD21 = DA10(I1+1,I4)
         DD22 = DA10(I1+1,I4+1)
         DD23 = DA10(I1+1,I4+2)
         DD24 = DA10(I1+1,I4+3)
         DD25 = DA20(I1+2,I4)
         DD26 = DA20(I1+2,I4+1)
         DD27 = DA20(I1+2,I4+2)
         DD28 = DA20(I1+2,I4+3)
         DD29 = DA10(I1+2,I4)
         DD30 = DA10(I1+2,I4+1)
         DD31 = DA10(I1+2,I4+2)
         DD32 = DA10(I1+2,I4+3)
         DD33 = DA20(I1+3,I4)
         DD34 = DA20(I1+3,I4+1)
         DD35 = DA20(I1+3,I4+2)
         DD36 = DA20(I1+3,I4+3)
         DD37 = DA10(I1+3,I4)
         DD38 = DA10(I1+3,I4+1)
         DD39 = DA10(I1+3,I4+2)
         DD40 = DA10(I1+3,I4+3)
         DO I31=2,14
          DO I2=2,13,2
           DD89 = DB30(I2,I31,I4) - DD33
           DD90 = DB30(I2+1,I31,I4) - DD33
           DD91 = DB30(I2,I31,I4+1) - DD34
           DD92 = DB30(I2+1,I31,I4+1) - DD34
           DD93 = DB30(I2,I31,I4+2) - DD35
           DD94 = DB30(I2+1,I31,I4+2) - DD35
           DD95 = DB30(I2,I31,I4+3) - DD36
           DD96 = DB30(I2+1,I31,I4+3) - DD36
           DD97 = DB30(I2,I31,I4) - DD37
           DD98 = DB30(I2+1,I31,I4) - DD37
           DD99 = DB30(I2,I31,I4+1) - DD38
           DD100 = DB30(I2+1,I31,I4+1) - DD38
           DD101 = DB30(I2,I31,I4+2) - DD39
           DD102 = DB30(I2+1,I31,I4+2) - DD39
           DD103 = DB30(I2,I31,I4+3) - DD40
           DD104 = DB30(I2+1,I31,I4+3) - DD40
           DB20(I2+1,I31,I4+3) = DD104
           DB20(I2,I31,I4+3) = DD103
           DB20(I2+1,I31,I4+2) = DD102
           DB20(I2,I31,I4+2) = DD101
           DB20(I2+1,I31,I4+1) = DD100
           DB20(I2,I31,I4+1) = DD99
           DB20(I2+1,I31,I4) = DD98
           DB20(I2,I31,I4) = DD97
           DB10(I2+1,I31,I4+3) = DD96
           DB10(I2,I31,I4+3) = DD95
           DB10(I2+1,I31,I4+2) = DD94
           DB10(I2,I31,I4+2) = DD93
           DB10(I2+1,I31,I4+1) = DD92
           DB10(I2,I31,I4+1) = DD91
           DB10(I2+1,I31,I4) = DD90
           DB10(I2,I31,I4) = DD89
          END DO
          DB10(14,I31,I4) = DB30(14,I31,I4) - DD9
          DB10(14,I31,I4+1) = DB30(14,I31,I4+1) - DD10
          DB10(14,I31,I4+2) = DB30(14,I31,I4+2) - DD11
          DB10(14,I31,I4+3) = DB30(14,I31,I4+3) - DD12
          DB20(14,I31,I4) = DB30(14,I31,I4) - DD13
          DB20(14,I31,I4+1) = DB30(14,I31,I4+1) - DD14
          DB20(14,I31,I4+2) = DB30(14,I31,I4+2) - DD15
          DB20(14,I31,I4+3) = DB30(14,I31,I4+3) - DD16
          DB10(14,I31,I4) = DB30(14,I31,I4) - DD17
          DB10(14,I31,I4+1) = DB30(14,I31,I4+1) - DD18
          DB10(14,I31,I4+2) = DB30(14,I31,I4+2) - DD19
          DB10(14,I31,I4+3) = DB30(14,I31,I4+3) - DD20
          DB20(14,I31,I4) = DB30(14,I31,I4) - DD21
          DB20(14,I31,I4+1) = DB30(14,I31,I4+1) - DD22
          DB20(14,I31,I4+2) = DB30(14,I31,I4+2) - DD23
          DB20(14,I31,I4+3) = DB30(14,I31,I4+3) - DD24
          DB10(14,I31,I4) = DB30(14,I31,I4) - DD25
          DB10(14,I31,I4+1) = DB30(14,I31,I4+1) - DD26
          DB10(14,I31,I4+2) = DB30(14,I31,I4+2) - DD27
          DB10(14,I31,I4+3) = DB30(14,I31,I4+3) - DD28
          DB20(14,I31,I4) = DB30(14,I31,I4) - DD29
          DB20(14,I31,I4+1) = DB30(14,I31,I4+1) - DD30
          DB20(14,I31,I4+2) = DB30(14,I31,I4+2) - DD31
          DB20(14,I31,I4+3) = DB30(14,I31,I4+3) - DD32
          DB10(14,I31,I4) = DB30(14,I31,I4) - DD33
          DB10(14,I31,I4+1) = DB30(14,I31,I4+1) - DD34
          DB10(14,I31,I4+2) = DB30(14,I31,I4+2) - DD35
          DB10(14,I31,I4+3) = DB30(14,I31,I4+3) - DD36
          DB20(14,I31,I4) = DB30(14,I31,I4) - DD37
          DB20(14,I31,I4+1) = DB30(14,I31,I4+1) - DD38
          DB20(14,I31,I4+2) = DB30(14,I31,I4+2) - DD39
          DB20(14,I31,I4+3) = DB30(14,I31,I4+3) - DD40
         END DO
        END DO
        DO I1=13,14,1
         DD41 = DA20(I1,I4)
         DD42 = DA20(I1,I4+1)
         DD43 = DA20(I1,I4+2)
         DD44 = DA20(I1,I4+3)
         DD45 = DA10(I1,I4)
         DD46 = DA10(I1,I4+1)
         DD47 = DA10(I1,I4+2)
         DD48 = DA10(I1,I4+3)
         DO I31=2,14
          DO I2=2,11,4
           DB10(I2,I31,I4) = DB30(I2,I31,I4) - DD41
           DB10(I2+1,I31,I4) = DB30(I2+1,I31,I4) - DD41
           DB10(I2+2,I31,I4) = DB30(I2+2,I31,I4) - DD41
           DB10(I2+3,I31,I4) = DB30(I2+3,I31,I4) - DD41
           DB10(I2,I31,I4+1) = DB30(I2,I31,I4+1) - DD42
           DB10(I2+1,I31,I4+1) = DB30(I2+1,I31,I4+1) - DD42
           DB10(I2+2,I31,I4+1) = DB30(I2+2,I31,I4+1) - DD42
           DB10(I2+3,I31,I4+1) = DB30(I2+3,I31,I4+1) - DD42
           DB10(I2,I31,I4+2) = DB30(I2,I31,I4+2) - DD43
           DB10(I2+1,I31,I4+2) = DB30(I2+1,I31,I4+2) - DD43
           DB10(I2+2,I31,I4+2) = DB30(I2+2,I31,I4+2) - DD43
           DB10(I2+3,I31,I4+2) = DB30(I2+3,I31,I4+2) - DD43
           DB10(I2,I31,I4+3) = DB30(I2,I31,I4+3) - DD44
           DB10(I2+1,I31,I4+3) = DB30(I2+1,I31,I4+3) - DD44
           DB10(I2+2,I31,I4+3) = DB30(I2+2,I31,I4+3) - DD44
           DB10(I2+3,I31,I4+3) = DB30(I2+3,I31,I4+3) - DD44
           DB20(I2,I31,I4) = DB30(I2,I31,I4) - DD45
           DB20(I2+1,I31,I4) = DB30(I2+1,I31,I4) - DD45
           DB20(I2+2,I31,I4) = DB30(I2+2,I31,I4) - DD45
           DB20(I2+3,I31,I4) = DB30(I2+3,I31,I4) - DD45
           DB20(I2,I31,I4+1) = DB30(I2,I31,I4+1) - DD46
           DB20(I2+1,I31,I4+1) = DB30(I2+1,I31,I4+1) - DD46
           DB20(I2+2,I31,I4+1) = DB30(I2+2,I31,I4+1) - DD46
           DB20(I2+3,I31,I4+1) = DB30(I2+3,I31,I4+1) - DD46
           DB20(I2,I31,I4+2) = DB30(I2,I31,I4+2) - DD47
           DB20(I2+1,I31,I4+2) = DB30(I2+1,I31,I4+2) - DD47
           DB20(I2+2,I31,I4+2) = DB30(I2+2,I31,I4+2) - DD47
           DB20(I2+3,I31,I4+2) = DB30(I2+3,I31,I4+2) - DD47
           DB20(I2,I31,I4+3) = DB30(I2,I31,I4+3) - DD48
           DB20(I2+1,I31,I4+3) = DB30(I2+1,I31,I4+3) - DD48
           DB20(I2+2,I31,I4+3) = DB30(I2+2,I31,I4+3) - DD48
           DB20(I2+3,I31,I4+3) = DB30(I2+3,I31,I4+3) - DD48
          END DO
          DB10(14,I31,I4) = DB30(14,I31,I4) - DD41
          DB10(14,I31,I4+1) = DB30(14,I31,I4+1) - DD42
          DB10(14,I31,I4+2) = DB30(14,I31,I4+2) - DD43
          DB10(14,I31,I4+3) = DB30(14,I31,I4+3) - DD44
          DB20(14,I31,I4) = DB30(14,I31,I4) - DD45
          DB20(14,I31,I4+1) = DB30(14,I31,I4+1) - DD46
          DB20(14,I31,I4+2) = DB30(14,I31,I4+2) - DD47
          DB20(14,I31,I4+3) = DB30(14,I31,I4+3) - DD48
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       DO I1=1,11,4
        DD49 = DA20(I1,14)
        DD50 = DA10(I1,14)
        DD51 = DA20(I1+1,14)
        DD52 = DA10(I1+1,14)
        DD53 = DA20(I1+2,14)
        DD54 = DA10(I1+2,14)
        DD55 = DA20(I1+3,14)
        DD56 = DA10(I1+3,14)
        DO I31=2,14
         DO I2=2,11,4
          DD105 = DB30(I2,I31,14) - DD55
          DD106 = DB30(I2+1,I31,14) - DD55
          DD107 = DB30(I2+2,I31,14) - DD55
          DD108 = DB30(I2+3,I31,14) - DD55
          DD109 = DB30(I2,I31,14) - DD56
          DD110 = DB30(I2+1,I31,14) - DD56
          DD111 = DB30(I2+2,I31,14) - DD56
          DD112 = DB30(I2+3,I31,14) - DD56
          DB20(I2+3,I31,14) = DD112
          DB20(I2+2,I31,14) = DD111
          DB20(I2+1,I31,14) = DD110
          DB20(I2,I31,14) = DD109
          DB10(I2+3,I31,14) = DD108
          DB10(I2+2,I31,14) = DD107
          DB10(I2+1,I31,14) = DD106
          DB10(I2,I31,14) = DD105
         END DO
         DB10(14,I31,14) = DB30(14,I31,14) - DD49
         DB20(14,I31,14) = DB30(14,I31,14) - DD50
         DB10(14,I31,14) = DB30(14,I31,14) - DD51
         DB20(14,I31,14) = DB30(14,I31,14) - DD52
         DB10(14,I31,14) = DB30(14,I31,14) - DD53
         DB20(14,I31,14) = DB30(14,I31,14) - DD54
         DB10(14,I31,14) = DB30(14,I31,14) - DD55
         DB20(14,I31,14) = DB30(14,I31,14) - DD56
        END DO
       END DO
       DO I1=13,14,1
        DD57 = DA20(I1,14)
        DD58 = DA10(I1,14)
        DO I31=2,14
         DO I2=2,11,4
          DB10(I2,I31,14) = DB30(I2,I31,14) - DD57
          DB10(I2+1,I31,14) = DB30(I2+1,I31,14) - DD57
          DB10(I2+2,I31,14) = DB30(I2+2,I31,14) - DD57
          DB10(I2+3,I31,14) = DB30(I2+3,I31,14) - DD57
          DB20(I2,I31,14) = DB30(I2,I31,14) - DD58
          DB20(I2+1,I31,14) = DB30(I2+1,I31,14) - DD58
          DB20(I2+2,I31,14) = DB30(I2+2,I31,14) - DD58
          DB20(I2+3,I31,14) = DB30(I2+3,I31,14) - DD58
         END DO
         DB10(14,I31,14) = DB30(14,I31,14) - DD57
         DB20(14,I31,14) = DB30(14,I31,14) - DD58
        END DO
       END DO

       WRITE (6, *) ' (DA10) ', ((DA10(I,J), I=1,10), J=1,10)
       WRITE (6, *) ' (DA20) ', ((DA20(I,J), I=1,10), J=1,10)
       WRITE (6, *) ' (DA30) ', ((DA30(I,J), I=1,10), J=1,10)
       WRITE (6, *) ' (CD30) ', ((CD30(I,J), I=1,10), J=1,10)
       WRITE (6, *) ' (DB10) ', (((DB10(I,J,K), I=1,10), J=1,10), K=1,10
     X   )
       WRITE (6, *) ' (DB20) ', (((DB20(I,J,K), I=1,10), J=1,10), K=1,10
     X   )

       DO J1=2,14
        DX = DIMAG (CD10(J1,14)) - DA10(J1,14)
        DY = DREAL (CD20(J1,14)) - DA20(J1,14)
        IF (DX .GT. DY) THEN
         DZ = DREAL (CD30(J1,14))
        ELSE
         DZ = DIMAG (CD30(J1,14))
        END IF
        DC1 = DCMPLX (DX, DY)
        DO J2=2,11,4
         CD10(J1,J2) = DC1
         CD10(J1,J2+1) = DC1
         CD10(J1,J2+2) = DC1
         CD10(J1,J2+3) = DC1
        END DO
        CD10(J1,14) = DC1
        DO J3=2,11,4
         DD59 = DX * DA10(J1,J3)
         DD60 = DX * DA10(J1,J3+1)
         DD61 = DX * DA10(J1,J3+2)
         DD62 = DX * DA10(J1,J3+3)
         DD63 = DY * DA20(J1-1,J3)
         DD64 = DY * DA20(J1-1,J3+1)
         DD65 = DY * DA20(J1-1,J3+2)
         DD66 = DY * DA20(J1-1,J3+3)
         DO J2=2,11,4
          DD71 = DD59
          DD72 = DD59
          DD73 = DD59
          DD2 = DD59
          DD74 = DD60
          DD75 = DD60
          DD76 = DD60
          DD3 = DD60
          DD77 = DD61
          DD78 = DD61
          DD79 = DD61
          DD4 = DD61
          DD80 = DD62
          DD81 = DD62
          DD82 = DD62
          DD1 = DD62
          DB10(J1,J2,J3) = DB20(J1,J2,J3) - DD71
          DB10(J1,J2+1,J3) = DB20(J1,J2+1,J3) - DD72
          DB10(J1,J2+2,J3) = DB20(J1,J2+2,J3) - DD73
          DB10(J1,J2+3,J3) = DB20(J1,J2+3,J3) - DD2
          DB10(J1,J2,J3+1) = DB20(J1,J2,J3+1) - DD74
          DB10(J1,J2+1,J3+1) = DB20(J1,J2+1,J3+1) - DD75
          DB10(J1,J2+2,J3+1) = DB20(J1,J2+2,J3+1) - DD76
          DB10(J1,J2+3,J3+1) = DB20(J1,J2+3,J3+1) - DD3
          DB10(J1,J2,J3+2) = DB20(J1,J2,J3+2) - DD77
          DB10(J1,J2+1,J3+2) = DB20(J1,J2+1,J3+2) - DD78
          DB10(J1,J2+2,J3+2) = DB20(J1,J2+2,J3+2) - DD79
          DB10(J1,J2+3,J3+2) = DB20(J1,J2+3,J3+2) - DD4
          DB10(J1,J2,J3+3) = DB20(J1,J2,J3+3) - DD80
          DB10(J1,J2+1,J3+3) = DB20(J1,J2+1,J3+3) - DD81
          DB10(J1,J2+2,J3+3) = DB20(J1,J2+2,J3+3) - DD82
          DB10(J1,J2+3,J3+3) = DB20(J1,J2+3,J3+3) - DD1
          DD71 = DD63
          DD72 = DD63
          DD73 = DD63
          DD2 = DD63
          DD74 = DD64
          DD75 = DD64
          DD76 = DD64
          DD3 = DD64
          DD77 = DD65
          DD78 = DD65
          DD79 = DD65
          DD4 = DD65
          DD80 = DD66
          DD81 = DD66
          DD82 = DD66
          DD1 = DD66
          DD113 = DB30(J1,J2,J3) - DD71
          DD114 = DB30(J1,J2+1,J3) - DD72
          DD115 = DB30(J1,J2+2,J3) - DD73
          DD116 = DB30(J1,J2+3,J3) - DD2
          DD117 = DB30(J1,J2,J3+1) - DD74
          DD118 = DB30(J1,J2+1,J3+1) - DD75
          DD119 = DB30(J1,J2+2,J3+1) - DD76
          DD120 = DB30(J1,J2+3,J3+1) - DD3
          DD121 = DB30(J1,J2,J3+2) - DD77
          DD122 = DB30(J1,J2+1,J3+2) - DD78
          DD123 = DB30(J1,J2+2,J3+2) - DD79
          DD124 = DB30(J1,J2+3,J3+2) - DD4
          DD125 = DB30(J1,J2,J3+3) - DD80
          DD126 = DB30(J1,J2+1,J3+3) - DD81
          DD127 = DB30(J1,J2+2,J3+3) - DD82
          DD128 = DB30(J1,J2+3,J3+3) - DD1
          DB20(J1,J2+3,J3+3) = DD128
          DB20(J1,J2+2,J3+3) = DD127
          DB20(J1,J2+1,J3+3) = DD126
          DB20(J1,J2,J3+3) = DD125
          DB20(J1,J2+3,J3+2) = DD124
          DB20(J1,J2+2,J3+2) = DD123
          DB20(J1,J2+1,J3+2) = DD122
          DB20(J1,J2,J3+2) = DD121
          DB20(J1,J2+3,J3+1) = DD120
          DB20(J1,J2+2,J3+1) = DD119
          DB20(J1,J2+1,J3+1) = DD118
          DB20(J1,J2,J3+1) = DD117
          DB20(J1,J2+3,J3) = DD116
          DB20(J1,J2+2,J3) = DD115
          DB20(J1,J2+1,J3) = DD114
          DB20(J1,J2,J3) = DD113
         END DO
         DD2 = DD59
         DD3 = DD60
         DD4 = DD61
         DD1 = DD62
         DB10(J1,14,J3) = DB20(J1,14,J3) - DD2
         DB10(J1,14,J3+1) = DB20(J1,14,J3+1) - DD3
         DB10(J1,14,J3+2) = DB20(J1,14,J3+2) - DD4
         DB10(J1,14,J3+3) = DB20(J1,14,J3+3) - DD1
         DD2 = DD63
         DD3 = DD64
         DD4 = DD65
         DD1 = DD66
         DB20(J1,14,J3) = DB30(J1,14,J3) - DD2
         DB20(J1,14,J3+1) = DB30(J1,14,J3+1) - DD3
         DB20(J1,14,J3+2) = DB30(J1,14,J3+2) - DD4
         DB20(J1,14,J3+3) = DB30(J1,14,J3+3) - DD1
        END DO
        DD67 = DX * DA10(J1,14)
        DD68 = DY * DA20(J1-1,14)
        DO J2=2,11,4
         DD83 = DD67
         DD84 = DD67
         DD85 = DD67
         DD1 = DD67
         DB10(J1,J2,14) = DB20(J1,J2,14) - DD83
         DB10(J1,J2+1,14) = DB20(J1,J2+1,14) - DD84
         DB10(J1,J2+2,14) = DB20(J1,J2+2,14) - DD85
         DB10(J1,J2+3,14) = DB20(J1,J2+3,14) - DD1
         DD83 = DD68
         DD84 = DD68
         DD85 = DD68
         DD1 = DD68
         DD129 = DB30(J1,J2,14) - DD83
         DD130 = DB30(J1,J2+1,14) - DD84
         DD131 = DB30(J1,J2+2,14) - DD85
         DD132 = DB30(J1,J2+3,14) - DD1
         DB20(J1,J2+3,14) = DD132
         DB20(J1,J2+2,14) = DD131
         DB20(J1,J2+1,14) = DD130
         DB20(J1,J2,14) = DD129
        END DO
        DD1 = DD67
        DB10(J1,14,14) = DB20(J1,14,14) - DD1
        DD1 = DD68
        DB20(J1,14,14) = DB30(J1,14,14) - DD1
        DD69 = DMIN1 (DX, DY)
        DO J2=2,14
         CD20(J1,J2) = DCMPLX (DY, DZ)
         DA10(J1-1,J2) = DD69 + DZ
         IF (DA10(J1,J2) .GT. DA30(J1,J2)) THEN
          DZ = 0D0
         END IF
         CD30(J1,J2) = DCMPLX (DZ, DX)
         DO J3=2,11,4
          DD86 = DZ * DA30(J1+1,J3)
          DD87 = DZ * DA30(J1+1,J3+1)
          DD88 = DZ * DA30(J1+1,J3+2)
          DD70 = DZ * DA30(J1+1,J3+3)
          DB30(J1,J2,J3) = DB10(J1,J2,J3) - DD86
          DB30(J1,J2,J3+1) = DB10(J1,J2,J3+1) - DD87
          DB30(J1,J2,J3+2) = DB10(J1,J2,J3+2) - DD88
          DB30(J1,J2,J3+3) = DB10(J1,J2,J3+3) - DD70
         END DO
         DD70 = DZ * DA30(J1+1,14)
         DB30(J1,J2,14) = DB10(J1,J2,14) - DD70
         DA30(J1,J2) = DMAX1 (DA30(J1,J2+1), DY)
        END DO
        DO J2=2,11,4
         DA20(J1,J2) = DMAX1 (DA20(J1,J2+1), DX)
         DA20(J1,J2+1) = DMAX1 (DA20(J1,J2+2), DX)
         DA20(J1,J2+2) = DMAX1 (DA20(J1,J2+3), DX)
         DA20(J1,J2+3) = DMAX1 (DA20(J1,J2+4), DX)
        END DO
        DA20(J1,14) = DMAX1 (DA20(J1,15), DX)
       END DO

       WRITE (6, *) ' (DA20) ', ((DA20(I,J), I=1,10), J=1,10)
       WRITE (6, *) ' (DA30) ', ((DA30(I,J), I=1,10), J=1,10)
       WRITE (6, *) ' (CD10) ', ((CD10(I,J), I=1,10), J=1,10)
       WRITE (6, *) ' (CD20) ', ((CD20(I,J), I=1,10), J=1,10)
       WRITE (6, *) ' (CD30) ', ((CD30(I,J), I=1,10), J=1,10)
       WRITE (6, *) ' (DB20) ', (((DB20(I,J,K), I=1,10), J=1,10), K=1,10
     X   )
       WRITE (6, *) ' (DB30) ', (((DB30(I,J,K), I=1,10), J=1,10), K=1,10
     X   )

       STOP 
      END
