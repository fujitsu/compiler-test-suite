      PROGRAM MAIN
       IMPLICIT REAL*8 (A-B,D,O-Z), COMPLEX*16 (C)
       DIMENSION DA10(20,20), DA20(20,20), DA30(20,20), DB10(20,20,20), 
     X   DB20(20,20,20), DB30(20,20,20)
       DIMENSION CD10(20,20), CD20(20,20), CD30(20,20)
       PARAMETER (JC5 = 20)
       INTEGER N1, NN
       PARAMETER (N1 = 4, NN = 14)
       DATA DA10/400*1.0D0/ 
       DATA DA20/400*2.D0/ 
       DATA DA30/400*3.D0/ 
       DATA DB10/8000*4.D0/ 
       DATA DB20/8000*5.D0/ 
       DATA DB30/8000*3.D0/ 
       DATA CD10/400*(-1.D0,2.D0)/ 
       DATA CD20/400*(3.D0,-2.D0)/ 
       DATA CD30/400*(2.D0,0.1D0)/ 
       DOUBLE PRECISION DD119, DD118, DD117, DD116, DD115, DD114, DD113
     X   , DD112, DD111, DD110, DD109, DD108, DD107, DD106, DD105, DD104
     X   , DD103, DD102, DD101, DD100, DD99, DD98, DD97, DD96, DD95, 
     X   DD94, DD93, DD92, DD91, DD90, DD89, DD88, DD87, DD86, DD85, 
     X   DD84, DD83, DD82, DD81, DD80
       DOUBLE PRECISION DD79, DD78, DD77, DD76, DD75, DD74, DD73, DD72, 
     X   DD71, DD70, DD69, DD68, DD67, DD66, DD65, DD64, DD63, DD62, 
     X   DD61, DD60, DD59, DD58, DD57, DD56, DD55, DD54, DD53, DD52, 
     X   DD51, DD50, DD49, DD48, DD47, DD46, DD45, DD44, DD43, DD42, 
     X   DD41, DD40
       DOUBLE PRECISION DD39, DD38, DD37, DD36, DD35, DD34, DD33, DD32, 
     X   DD31, DD30, DD29, DD28, DD27, DD26, DD25, DD24, DD23, DD22, 
     X   DD21, DD20, DD19, DD18, DD17, DD16, DD15, DD14, DD13, DD12, 
     X   DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1
       COMPLEX*16 DC3, DC2, DC1

       DD1 = DIMAG (CD10(2,1)) + DREAL (CD20(2,14))
       DD2 = DIMAG (CD10(3,1)) + DREAL (CD20(3,14))
       DX = DIMAG (CD10(4,1)) + DREAL (CD20(4,14))
       DD3 = DREAL (CD10(2,14)) + DIMAG (CD30(2,14))
       DD4 = DREAL (CD10(3,14)) + DIMAG (CD30(3,14))
       DY = DREAL (CD10(4,14)) + DIMAG (CD30(4,14))
       DD1 = DSQRT (DMAX1 (DD1, DD3))
       DD2 = DSQRT (DMAX1 (DD2, DD4))
       DX = DSQRT (DMAX1 (DX, DY))
       DC1 = DCMPLX (DD1, DD3)
       DC2 = DCMPLX (DD2, DD4)
       DC3 = DCMPLX (DX, DY)
       DO I2=2,11,4
        CD10(2,I2+1) = DC1
        CD10(2,I2+2) = DC1
        CD10(2,I2+3) = DC1
        CD10(2,I2+4) = DC1
        CD10(3,I2+2) = DC2
        CD10(3,I2+3) = DC2
        CD10(3,I2+4) = DC2
        CD10(3,I2+5) = DC2
        CD10(4,I2+3) = DC3
        CD10(4,I2+4) = DC3
        CD10(4,I2+5) = DC3
        CD10(4,I2+6) = DC3
       END DO
       CD10(2,15) = DC1
       CD10(3,16) = DC2
       CD10(4,17) = DC3

       DO I1=2,4
        DO I2=2,11,4
         DD40 = DA20(I1,I1+1) - DA30(I2+1,I1-1)
         DD41 = DA20(I1,I1+1) - DA30(I2+2,I1-1)
         DD42 = DA20(I1,I1+1) - DA30(I2+3,I1-1)
         DD43 = DA20(I1,I1+1) - DA30(I2+4,I1-1)
         DA20(I1+I2-1,I1) = DA30(I2,I1) - DD40
         DA20(I1+I2,I1) = DA30(I2+1,I1) - DD41
         DA20(I1+I2+1,I1) = DA30(I2+2,I1) - DD42
         DA20(I1+I2+2,I1) = DA30(I2+3,I1) - DD43
         DA10(I1+I2+2,I2+3) = DD43
         DA10(I1+I2+1,I2+2) = DD42
         DA10(I1+I2,I2+1) = DD41
         DA10(I1+I2-1,I2) = DD40
        END DO
        DA10(I1+13,14) = DA20(I1,I1+1) - DA30(15,I1-1)
        DA20(I1+13,I1) = DA30(14,I1) - DA10(I1+13,14)
       END DO
       DD12 = DA10(2,1)
       DD13 = DA10(4,1)
       DD14 = DA10(6,1)
       DD15 = DA10(8,1)
       DD16 = DA10(10,1)
       DD17 = DA10(12,1)
       DD18 = DA10(14,1)
C$OMP PARALLEL SHARED (DB10,DA30,DB30,DD12,DD13,DD14,DD15,DD16,DD17,DD18
C$OMP& ,I3) PRIVATE (DD44,DD45,DD46,DD47,DD48,DD49,DD50,DD51,DD52,DD53,
C$OMP& DD54,DD55,DD56,DD57,DD58,DD59,DD60,DD61,DD62,DD63,DD64,DD65,DD66,
C$OMP& DD67,DD68,DD69,DD70,DD71,DD72,DD73,DD74,DD75,DD76,I2)
C$OMP DO LASTPRIVATE (I3)
       DO I2=2,14
        DD44 = DB10(2,I2,1) - DA30(2,I2)
        DD45 = DB10(3,I2,1) - DA30(3,I2)
        DD46 = DB10(4,I2,1) - DA30(4,I2)
        DD47 = DB10(2,I2,3) - DA30(2,I2)
        DD48 = DB10(3,I2,3) - DA30(3,I2)
        DD49 = DB10(4,I2,3) - DA30(4,I2)
        DD50 = DB10(2,I2,5) - DA30(2,I2)
        DD51 = DB10(3,I2,5) - DA30(3,I2)
        DD52 = DB10(4,I2,5) - DA30(4,I2)
        DD53 = DB10(2,I2,7) - DA30(2,I2)
        DD54 = DB10(3,I2,7) - DA30(3,I2)
        DD55 = DB10(4,I2,7) - DA30(4,I2)
        DD56 = DB30(2,I2,5) * DD12
        DD57 = DB30(3,I2,5) * DD12
        DD58 = DB30(4,I2,5) * DD12
        DD59 = DB30(2,I2,5) * DD13
        DD60 = DB30(3,I2,5) * DD13
        DD61 = DB30(4,I2,5) * DD13
        DD62 = DB30(2,I2,5) * DD14
        DD63 = DB30(3,I2,5) * DD14
        DD64 = DB30(4,I2,5) * DD14
        DD65 = DB30(2,I2,5) * DD15
        DD66 = DB30(3,I2,5) * DD15
        DD67 = DB30(4,I2,5) * DD15
        DD68 = DB10(2,I2,9) - DA30(2,I2)
        DD69 = DB10(3,I2,9) - DA30(3,I2)
        DD70 = DB10(4,I2,9) - DA30(4,I2)
        DD71 = DB10(2,I2,11) - DA30(2,I2)
        DD72 = DB10(3,I2,11) - DA30(3,I2)
        DD73 = DB10(4,I2,11) - DA30(4,I2)
        DD74 = DB10(2,I2,13) - DA30(2,I2)
        DD75 = DB10(3,I2,13) - DA30(3,I2)
        DD76 = DB10(4,I2,13) - DA30(4,I2)
        DB10(2,I2,10) = DB30(2,I2,5) * DD16
        DB10(3,I2,10) = DB30(3,I2,5) * DD16
        DB10(4,I2,10) = DB30(4,I2,5) * DD16
        DB10(2,I2,12) = DB30(2,I2,5) * DD17
        DB10(3,I2,12) = DB30(3,I2,5) * DD17
        DB10(4,I2,12) = DB30(4,I2,5) * DD17
        DB10(2,I2,14) = DB30(2,I2,5) * DD18
        DB10(3,I2,14) = DB30(3,I2,5) * DD18
        DB10(4,I2,14) = DB30(4,I2,5) * DD18
        DB30(4,I2,14) = DD76
        DB30(3,I2,14) = DD75
        DB30(2,I2,14) = DD74
        DB30(4,I2,12) = DD73
        DB30(3,I2,12) = DD72
        DB30(2,I2,12) = DD71
        DB30(4,I2,10) = DD70
        DB30(3,I2,10) = DD69
        DB30(2,I2,10) = DD68
        DB10(4,I2,8) = DD67
        DB10(3,I2,8) = DD66
        DB10(2,I2,8) = DD65
        DB10(4,I2,6) = DD64
        DB10(3,I2,6) = DD63
        DB10(2,I2,6) = DD62
        DB10(4,I2,4) = DD61
        DB10(3,I2,4) = DD60
        DB10(2,I2,4) = DD59
        DB10(4,I2,2) = DD58
        DB10(3,I2,2) = DD57
        DB10(2,I2,2) = DD56
        DB30(4,I2,8) = DD55
        DB30(3,I2,8) = DD54
        DB30(2,I2,8) = DD53
        DB30(4,I2,6) = DD52
        DB30(3,I2,6) = DD51
        DB30(2,I2,6) = DD50
        DB30(4,I2,4) = DD49
        DB30(3,I2,4) = DD48
        DB30(2,I2,4) = DD47
        DB30(4,I2,2) = DD46
        DB30(3,I2,2) = DD45
        DB30(2,I2,2) = DD44
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I2=2,11,4
        DO I3=2,14,2
         DD21 = DREAL (CD20(2,I3))
         DD22 = DREAL (CD20(3,I3))
         DD19 = DREAL (CD20(4,I3))
         DD77 = DB20(2,I2,3) + DD21
         DD78 = DB20(3,I2,3) + DD22
         DD79 = DB20(4,I2,3) + DD19
         DB20(2,I2,I3) = DD77
         DD21 = DREAL (CD20(2,I3))
         DB20(3,I2,I3) = DD78
         DD22 = DREAL (CD20(3,I3))
         DB20(4,I2,I3) = DD79
         DD19 = DREAL (CD20(4,I3))
         DD80 = DB20(2,I2+1,3) + DD21
         DD81 = DB20(3,I2+1,3) + DD22
         DD82 = DB20(4,I2+1,3) + DD19
         DB20(2,I2+1,I3) = DD80
         DD21 = DREAL (CD20(2,I3))
         DB20(3,I2+1,I3) = DD81
         DD22 = DREAL (CD20(3,I3))
         DB20(4,I2+1,I3) = DD82
         DD19 = DREAL (CD20(4,I3))
         DD83 = DB20(2,I2+2,3) + DD21
         DD84 = DB20(3,I2+2,3) + DD22
         DD85 = DB20(4,I2+2,3) + DD19
         DB20(2,I2+2,I3) = DD83
         DD21 = DREAL (CD20(2,I3))
         DB20(3,I2+2,I3) = DD84
         DD22 = DREAL (CD20(3,I3))
         DB20(4,I2+2,I3) = DD85
         DD19 = DREAL (CD20(4,I3))
         DD86 = DB20(2,I2+3,3) + DD21
         DD87 = DB20(3,I2+3,3) + DD22
         DB20(4,I2+3,I3) = DB20(4,I2+3,3) + DD19
         DB20(3,I2+3,I3) = DD87
         DB20(2,I2+3,I3) = DD86
        END DO
       END DO
       DD23 = DREAL (CD20(2,2))
       DD24 = DREAL (CD20(3,2))
       DD6 = DREAL (CD20(4,2))
       DD25 = DREAL (CD20(2,4))
       DD26 = DREAL (CD20(3,4))
       DD7 = DREAL (CD20(4,4))
       DD27 = DREAL (CD20(2,6))
       DD28 = DREAL (CD20(3,6))
       DD8 = DREAL (CD20(4,6))
       DD29 = DREAL (CD20(2,8))
       DD30 = DREAL (CD20(3,8))
       DD9 = DREAL (CD20(4,8))
       DD31 = DREAL (CD20(2,10))
       DD32 = DREAL (CD20(3,10))
       DD10 = DREAL (CD20(4,10))
       DD33 = DREAL (CD20(2,12))
       DD34 = DREAL (CD20(3,12))
       DD11 = DREAL (CD20(4,12))
       DD35 = DREAL (CD20(2,14))
       DD36 = DREAL (CD20(3,14))
       DD5 = DREAL (CD20(4,14))
       DB20(2,14,2) = DB20(2,14,3) + DD23
       DB20(3,14,2) = DB20(3,14,3) + DD24
       DB20(4,14,2) = DB20(4,14,3) + DD6
       DB20(2,14,4) = DB20(2,14,3) + DD25
       DB20(3,14,4) = DB20(3,14,3) + DD26
       DB20(4,14,4) = DB20(4,14,3) + DD7
       DB20(2,14,6) = DB20(2,14,3) + DD27
       DB20(3,14,6) = DB20(3,14,3) + DD28
       DB20(4,14,6) = DB20(4,14,3) + DD8
       DB20(2,14,8) = DB20(2,14,3) + DD29
       DB20(3,14,8) = DB20(3,14,3) + DD30
       DB20(4,14,8) = DB20(4,14,3) + DD9
       DB20(2,14,10) = DB20(2,14,3) + DD31
       DB20(3,14,10) = DB20(3,14,3) + DD32
       DB20(4,14,10) = DB20(4,14,3) + DD10
       DB20(2,14,12) = DB20(2,14,3) + DD33
       DB20(3,14,12) = DB20(3,14,3) + DD34
       DB20(4,14,12) = DB20(4,14,3) + DD11
       DB20(2,14,14) = DB20(2,14,3) + DD35
       DB20(3,14,14) = DB20(3,14,3) + DD36
       DB20(4,14,14) = DB20(4,14,3) + DD5

       WRITE (6, *) ' (DA10) ', ((DA10(I,J), I=1,10), J=1,10)
       WRITE (6, *) ' (DA20) ', ((DA20(I,J), I=1,10), J=1,10)
       WRITE (6, *) ' (CD10) ', (CD10(I,1), I=1,10)
       WRITE (6, *) ' (DB10) ', (((DB10(I,J,K), I=1,10), J=1,10), K=1,10
     X   )
       WRITE (6, *) ' (DB20) ', (((DB20(I,J,K), I=1,10), J=1,10), K=1,10
     X   )
       WRITE (6, *) ' (DB30) ', (((DB30(I,J,K), I=1,10), J=1,10), K=1,10
     X   )
C$OMP PARALLEL SHARED (CD10,DA30,DA20,DB20,DB30,DB10,DA10,CD30,CD20) 
C$OMP& PRIVATE (DD20,DD37,DD38,DD39,J2,J1,DD89,DD91,DD93,DD95,DD97,DD99,
C$OMP& DD101,DD103,DD105,DD107,DD109,DD111,DD113,DD115,DD117,DD119,DD88,
C$OMP& DD90,DD92,DD94,DD96,DD98,DD100,DD102,DD104,DD106,DD108,DD110,
C$OMP& DD112,DD114,DD116,DD118,J3)
C$OMP DO 
       DO J2=1,20

        DO J1=1,17,4
         DD37 = DIMAG (CD10(J1,J2))
         DD38 = DIMAG (CD10(J1+1,J2))
         DD39 = DIMAG (CD10(J1+2,J2))
         DD20 = DIMAG (CD10(J1+3,J2))
         DA30(J1,J2) = DD37 - DA20(J1,J2)
         DA30(J1+1,J2) = DD38 - DA20(J1+1,J2)
         DA30(J1+2,J2) = DD39 - DA20(J1+2,J2)
         DA30(J1+3,J2) = DD20 - DA20(J1+3,J2)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO J2=1,17,4
        DO J3=1,14

         DO J1=1,17,4
          DD89 = DB20(J1,J2,J2) + DB30(J1,J2,J3)
          DD91 = DB20(J1+1,J2,J2) + DB30(J1+1,J2,J3)
          DD93 = DB20(J1+2,J2,J2) + DB30(J1+2,J2,J3)
          DD95 = DB20(J1+3,J2,J2) + DB30(J1+3,J2,J3)
          DD97 = DB20(J1,J2+1,J2+1) + DB30(J1,J2+1,J3)
          DD99 = DB20(J1+1,J2+1,J2+1) + DB30(J1+1,J2+1,J3)
          DD101 = DB20(J1+2,J2+1,J2+1) + DB30(J1+2,J2+1,J3)
          DD103 = DB20(J1+3,J2+1,J2+1) + DB30(J1+3,J2+1,J3)
          DD105 = DB20(J1,J2+2,J2+2) + DB30(J1,J2+2,J3)
          DD107 = DB20(J1+1,J2+2,J2+2) + DB30(J1+1,J2+2,J3)
          DD109 = DB20(J1+2,J2+2,J2+2) + DB30(J1+2,J2+2,J3)
          DD111 = DB20(J1+3,J2+2,J2+2) + DB30(J1+3,J2+2,J3)
          DD113 = DB20(J1,J2+3,J2+3) + DB30(J1,J2+3,J3)
          DD115 = DB20(J1+1,J2+3,J2+3) + DB30(J1+1,J2+3,J3)
          DD117 = DB20(J1+2,J2+3,J2+3) + DB30(J1+2,J2+3,J3)
          DD119 = DB20(J1+3,J2+3,J2+3) + DB30(J1+3,J2+3,J3)
          DD88 = DD89 * DB30(J1,J2,J3)
          DD90 = DD91 * DB30(J1+1,J2,J3)
          DD92 = DD93 * DB30(J1+2,J2,J3)
          DD94 = DD95 * DB30(J1+3,J2,J3)
          DD96 = DD97 * DB30(J1,J2+1,J3)
          DD98 = DD99 * DB30(J1+1,J2+1,J3)
          DD100 = DD101 * DB30(J1+2,J2+1,J3)
          DD102 = DD103 * DB30(J1+3,J2+1,J3)
          DD104 = DD105 * DB30(J1,J2+2,J3)
          DD106 = DD107 * DB30(J1+1,J2+2,J3)
          DD108 = DD109 * DB30(J1+2,J2+2,J3)
          DD110 = DD111 * DB30(J1+3,J2+2,J3)
          DD112 = DD113 * DB30(J1,J2+3,J3)
          DD114 = DD115 * DB30(J1+1,J2+3,J3)
          DD116 = DD117 * DB30(J1+2,J2+3,J3)
          DD118 = DD119 * DB30(J1+3,J2+3,J3)
          DB20(J1+3,J2+3,J2+3) = DD118
          DB20(J1+2,J2+3,J2+3) = DD116
          DB20(J1+1,J2+3,J2+3) = DD114
          DB20(J1,J2+3,J2+3) = DD112
          DB20(J1+3,J2+2,J2+2) = DD110
          DB20(J1+2,J2+2,J2+2) = DD108
          DB20(J1+1,J2+2,J2+2) = DD106
          DB20(J1,J2+2,J2+2) = DD104
          DB20(J1+3,J2+1,J2+1) = DD102
          DB20(J1+2,J2+1,J2+1) = DD100
          DB20(J1+1,J2+1,J2+1) = DD98
          DB20(J1,J2+1,J2+1) = DD96
          DB20(J1+3,J2,J2) = DD94
          DB20(J1+2,J2,J2) = DD92
          DB20(J1+1,J2,J2) = DD90
          DB20(J1,J2,J2) = DD88
          DB10(J1+3,J2+3,J1+3) = DD119
          DB10(J1+2,J2+3,J1+2) = DD117
          DB10(J1+1,J2+3,J1+1) = DD115
          DB10(J1,J2+3,J1) = DD113
          DB10(J1+3,J2+2,J1+3) = DD111
          DB10(J1+2,J2+2,J1+2) = DD109
          DB10(J1+1,J2+2,J1+1) = DD107
          DB10(J1,J2+2,J1) = DD105
          DB10(J1+3,J2+1,J1+3) = DD103
          DB10(J1+2,J2+1,J1+2) = DD101
          DB10(J1+1,J2+1,J1+1) = DD99
          DB10(J1,J2+1,J1) = DD97
          DB10(J1+3,J2,J1+3) = DD95
          DB10(J1+2,J2,J1+2) = DD93
          DB10(J1+1,J2,J1+1) = DD91
          DB10(J1,J2,J1) = DD89
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO J2=1,20

        DO J1=1,20
         IF (DA30(J1,J2) .GT. 5D0) THEN
          DA10(J1,J2) = DIMAG (CD30(J1,J2))
         END IF
         DB30(J1,J2,1) = DREAL (CD20(J1,J2)) - DA30(J1,J2)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) ' (DA10) ', ((DA10(I,J), I=1,10), J=1,10)
       WRITE (6, *) ' (DA30) ', ((DA30(I,J), I=1,10), J=1,10)
       WRITE (6, *) ' (DB10) ', (((DB10(I,J,K), I=1,10), J=1,10), K=1,10
     X   )
       WRITE (6, *) ' (DB20) ', (((DB20(I,J,K), I=1,10), J=1,10), K=1,10
     X   )
       WRITE (6, *) ' (DB30) ', ((DB30(I,J,1), I=1,10), J=1,10)
       STOP 
      END
