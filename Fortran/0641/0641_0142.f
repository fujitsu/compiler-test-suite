      PROGRAM MAIN
       IMPLICIT REAL*8 (D), COMPLEX*16 (C)
       DIMENSION DA10(20), DA20(20), DA30(20), DA40(20), DB10(20,20), 
     X   DB20(20,20), DB30(20,20), DC10(20,20,20), DC20(20,20,20), DC30(
     X   20,20,20)
       DIMENSION CD10(20), CD20(20,20), CD30(20,20,20)

       DATA DA10/20*1.D0/ 
       DATA DA20/20*2.D0/ 
       DATA DA30/20*3.D0/ 
       DATA DA40/20*4.D0/ 
       DATA DB10/400*2.D0/ 
       DATA DB20/400*3.D0/ 
       DATA DB30/400*4.D0/ 
       DATA DC10/8000*3.D0/ 
       DATA DC20/8000*5.D0/ 
       DATA DC30/8000*2.D0/ 
       DATA CD10/20*(2.D0,1.D0)/ 
       DATA CD20/400*(2.D0,3.D0)/ 
       DATA CD30/8000*(3.D0,5.D0)/ 
       INTEGER II6, II5, II4, II3, II2, II1, K1, J1, I1
       DOUBLE PRECISION DD35, DD34, DD33, DD32, DD31, DD30, DD29, DD28, 
     X   DD27, DD26, DD25, DD24, DD23, DD22, DD21, DD20, DD19, DD18, 
     X   DD17, DD16, DD15, DD14, DD13, DD12, DD11, DD10, DD9, DD8, DD7, 
     X   DD6, DD5, DD4, DD3, DD2, DD1
       COMPLEX*16 DC1

       DO I1=1,6,5
        DA10(I1) = DA20(I1+1) + DA30(I1)
        DA10(I1+1) = DA20(I1+2) + DA30(I1+1)
        DA10(I1+2) = DA20(I1+3) + DA30(I1+2)
        DA10(I1+3) = DA20(I1+4) + DA30(I1+3)
        DA10(I1+4) = DA20(I1+5) + DA30(I1+4)
       END DO

       DO I1=1,6,5
        DA20(I1) = DA40(I1+1) - DA10(I1)
        DA20(I1+1) = DA40(I1+2) - DA10(I1+1)
        DA20(I1+2) = DA40(I1+3) - DA10(I1+2)
        DA20(I1+3) = DA40(I1+4) - DA10(I1+3)
        DA20(I1+4) = DA40(I1+5) - DA10(I1+4)
       END DO

       DO I1=1,6,5
        DA40(I1) = DA20(I1+10) + DB10(I1,20)
        DA40(I1+1) = DA20(I1+11) + DB10(I1+1,20)
        DA40(I1+2) = DA20(I1+12) + DB10(I1+2,20)
        DA40(I1+3) = DA20(I1+13) + DB10(I1+3,20)
        DA40(I1+4) = DA20(I1+14) + DB10(I1+4,20)
       END DO

C$OMP PARALLEL SHARED (DB10,DB20,DB30,DC10,DC20) PRIVATE (II2,II1,I1,J1,
C$OMP& K1)
C$OMP DO 
       DO I1=1,6,5
        DO J1=11,20
         DB10(I1,J1) = DB20(J1,I1+1) * DB30(J1,I1)
         DB10(I1+1,J1) = DB20(J1,I1+2) * DB30(J1,I1+1)
         DB10(I1+2,J1) = DB20(J1,I1+3) * DB30(J1,I1+2)
         DB10(I1+3,J1) = DB20(J1,I1+4) * DB30(J1,I1+3)
         DB10(I1+4,J1) = DB20(J1,I1+5) * DB30(J1,I1+4)
         DB30(I1,J1) = DB20(J1,I1+1) * DC10(J1,I1,10)
         DB30(I1+1,J1) = DB20(J1,I1+2) * DC10(J1,I1+1,10)
         DB30(I1+2,J1) = DB20(J1,I1+3) * DC10(J1,I1+2,10)
         DB30(I1+3,J1) = DB20(J1,I1+4) * DC10(J1,I1+3,10)
         DB30(I1+4,J1) = DB20(J1,I1+5) * DC10(J1,I1+4,10)
         II2 = (J1 - 9) / 4
         II1 = J1 + II2 * (-4)
         DO K1=J1,13,-4
          DC10(K1,I1,10) = DC20(I1,J1,K1) + DB30(I1,K1)
          DC10(K1-1,I1,10) = DC20(I1,J1,K1-1) + DB30(I1,K1-1)
          DC10(K1-2,I1,10) = DC20(I1,J1,K1-2) + DB30(I1,K1-2)
          DC10(K1-3,I1,10) = DC20(I1,J1,K1-3) + DB30(I1,K1-3)
          DC10(K1,I1+1,10) = DC20(I1+1,J1,K1) + DB30(I1+1,K1)
          DC10(K1-1,I1+1,10) = DC20(I1+1,J1,K1-1) + DB30(I1+1,K1-1)
          DC10(K1-2,I1+1,10) = DC20(I1+1,J1,K1-2) + DB30(I1+1,K1-2)
          DC10(K1-3,I1+1,10) = DC20(I1+1,J1,K1-3) + DB30(I1+1,K1-3)
          DC10(K1,I1+2,10) = DC20(I1+2,J1,K1) + DB30(I1+2,K1)
          DC10(K1-1,I1+2,10) = DC20(I1+2,J1,K1-1) + DB30(I1+2,K1-1)
          DC10(K1-2,I1+2,10) = DC20(I1+2,J1,K1-2) + DB30(I1+2,K1-2)
          DC10(K1-3,I1+2,10) = DC20(I1+2,J1,K1-3) + DB30(I1+2,K1-3)
          DC10(K1,I1+3,10) = DC20(I1+3,J1,K1) + DB30(I1+3,K1)
          DC10(K1-1,I1+3,10) = DC20(I1+3,J1,K1-1) + DB30(I1+3,K1-1)
          DC10(K1-2,I1+3,10) = DC20(I1+3,J1,K1-2) + DB30(I1+3,K1-2)
          DC10(K1-3,I1+3,10) = DC20(I1+3,J1,K1-3) + DB30(I1+3,K1-3)
          DC10(K1,I1+4,10) = DC20(I1+4,J1,K1) + DB30(I1+4,K1)
          DC10(K1-1,I1+4,10) = DC20(I1+4,J1,K1-1) + DB30(I1+4,K1-1)
          DC10(K1-2,I1+4,10) = DC20(I1+4,J1,K1-2) + DB30(I1+4,K1-2)
          DC10(K1-3,I1+4,10) = DC20(I1+4,J1,K1-3) + DB30(I1+4,K1-3)
         END DO
         DO K1=II1,10,-1
          DC10(K1,I1,10) = DC20(I1,J1,K1) + DB30(I1,K1)
          DC10(K1,I1+1,10) = DC20(I1+1,J1,K1) + DB30(I1+1,K1)
          DC10(K1,I1+2,10) = DC20(I1+2,J1,K1) + DB30(I1+2,K1)
          DC10(K1,I1+3,10) = DC20(I1+3,J1,K1) + DB30(I1+3,K1)
          DC10(K1,I1+4,10) = DC20(I1+4,J1,K1) + DB30(I1+4,K1)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO J1=11,16,5
        DO I1=1,6,5
         DB20(J1,I1) = DMIN1 (DB10(I1,J1), DB30(I1,J1))
         DB20(J1,I1+1) = DMIN1 (DB10(I1+1,J1), DB30(I1+1,J1))
         DB20(J1,I1+2) = DMIN1 (DB10(I1+2,J1), DB30(I1+2,J1))
         DB20(J1,I1+3) = DMIN1 (DB10(I1+3,J1), DB30(I1+3,J1))
         DB20(J1,I1+4) = DMIN1 (DB10(I1+4,J1), DB30(I1+4,J1))
         DB20(J1+1,I1) = DMIN1 (DB10(I1,J1+1), DB30(I1,J1+1))
         DB20(J1+1,I1+1) = DMIN1 (DB10(I1+1,J1+1), DB30(I1+1,J1+1))
         DB20(J1+1,I1+2) = DMIN1 (DB10(I1+2,J1+1), DB30(I1+2,J1+1))
         DB20(J1+1,I1+3) = DMIN1 (DB10(I1+3,J1+1), DB30(I1+3,J1+1))
         DB20(J1+1,I1+4) = DMIN1 (DB10(I1+4,J1+1), DB30(I1+4,J1+1))
         DB20(J1+2,I1) = DMIN1 (DB10(I1,J1+2), DB30(I1,J1+2))
         DB20(J1+2,I1+1) = DMIN1 (DB10(I1+1,J1+2), DB30(I1+1,J1+2))
         DB20(J1+2,I1+2) = DMIN1 (DB10(I1+2,J1+2), DB30(I1+2,J1+2))
         DB20(J1+2,I1+3) = DMIN1 (DB10(I1+3,J1+2), DB30(I1+3,J1+2))
         DB20(J1+2,I1+4) = DMIN1 (DB10(I1+4,J1+2), DB30(I1+4,J1+2))
         DB20(J1+3,I1) = DMIN1 (DB10(I1,J1+3), DB30(I1,J1+3))
         DB20(J1+3,I1+1) = DMIN1 (DB10(I1+1,J1+3), DB30(I1+1,J1+3))
         DB20(J1+3,I1+2) = DMIN1 (DB10(I1+2,J1+3), DB30(I1+2,J1+3))
         DB20(J1+3,I1+3) = DMIN1 (DB10(I1+3,J1+3), DB30(I1+3,J1+3))
         DB20(J1+3,I1+4) = DMIN1 (DB10(I1+4,J1+3), DB30(I1+4,J1+3))
         DB20(J1+4,I1) = DMIN1 (DB10(I1,J1+4), DB30(I1,J1+4))
         DB20(J1+4,I1+1) = DMIN1 (DB10(I1+1,J1+4), DB30(I1+1,J1+4))
         DB20(J1+4,I1+2) = DMIN1 (DB10(I1+2,J1+4), DB30(I1+2,J1+4))
         DB20(J1+4,I1+3) = DMIN1 (DB10(I1+3,J1+4), DB30(I1+3,J1+4))
         DB20(J1+4,I1+4) = DMIN1 (DB10(I1+4,J1+4), DB30(I1+4,J1+4))
        END DO
       END DO
       I = 11
       WRITE (6, *) ' (DA10) '
       WRITE (6, 444) (DA10(K), K=1,10)
       WRITE (6, *) ' (DA20) '
       WRITE (6, 444) (DA20(K), K=1,10)
       WRITE (6, *) ' (DA40) '
       WRITE (6, 444) (DA40(K), K=1,10)
       WRITE (6, *) ' (DB10) '
       WRITE (6, 444) ((DB10(I,J), I=1,10), J=11,20)
       WRITE (6, *) ' (DB30) '
       WRITE (6, 444) ((DB30(I,J), I=1,10), J=11,20)
       WRITE (6, *) ' (DB20) '
       WRITE (6, 444) ((DB20(I,J), I=11,20), J=1,10)
       WRITE (6, *) ' (DC10) '
       WRITE (6, 444) ((DC10(I,J,10), I=20,10,-1), J=1,10)

       DO I1=1,10
        DX = DNINT (DSQRT (DA10(I1)))
        DY = DNINT (DA20(I1) * 2D0 / DA40(I1+10))
        CD10(I1) = DCMPLX (DX, DY)
        CD20(I1+10,I1) = DCMPLX (DY, DX)
        DO J1=I1+10,10,-1
         IF (DB10(I1,J1) .GT. DB30(I1,J1)) THEN
          DB20(I1+10,J1) = DB10(I1,J1)
         ELSE
          DB20(I1,J1) = DB30(I1,J1)
         END IF
        END DO
        DX = DA30(I1)
        DY = DA30(I1+10)
        CD20(I1,I1) = DCMPLX (DX, DY) + CD10(I1+10)
       END DO
C$OMP PARALLEL SHARED (DC10,DC30,DC20,CD30) PRIVATE (DD6,DD7,II4,II3,
C$OMP& DD10,DD11,DD12,DD13,DD14,DD15,DD22,DD23,DD24,DD25,DD26,DD27,DD28,
C$OMP& DD29,DD30,DD31,K1,I1,J1)
C$OMP DO 
       DO K1=20,2,-2

        DO I1=1,10
         II4 = (I1 + 1) / 4
         II3 = I1 + II4 * (-4) + 10
         DO J1=I1+10,13,-4
          DD22 = DC10(I1,J1,K1) + DC30(I1+10,J1,K1)
          DD23 = DC10(I1,J1-1,K1) + DC30(I1+10,J1-1,K1)
          DD24 = DC10(I1,J1-2,K1) + DC30(I1+10,J1-2,K1)
          DD25 = DC10(I1,J1-3,K1) + DC30(I1+10,J1-3,K1)
          DD26 = DC10(I1,J1,K1) * 2D0
          DD27 = DC10(I1,J1-1,K1) * 2D0
          DD28 = DC10(I1,J1-2,K1) * 2D0
          DD29 = DC10(I1,J1-3,K1) * 2D0
          DD10 = DMAX1 (DD22, DD26)
          DD11 = DMAX1 (DD23, DD27)
          DD12 = DMAX1 (DD24, DD28)
          DD6 = DMAX1 (DD25, DD29)
          DD13 = DMAX1 (DC20(I1,J1,K1-1), DC30(I1,J1,K1-1))
          DD14 = DMAX1 (DC20(I1,J1-1,K1-1), DC30(I1,J1-1,K1-1))
          DD15 = DMAX1 (DC20(I1,J1-2,K1-1), DC30(I1,J1-2,K1-1))
          DD7 = DMAX1 (DC20(I1,J1-3,K1-1), DC30(I1,J1-3,K1-1))
          CD30(I1,J1,K1) = DCMPLX (DD10, DD13)
          CD30(I1,J1-1,K1) = DCMPLX (DD11, DD14)
          CD30(I1,J1-2,K1) = DCMPLX (DD12, DD15)
          CD30(I1,J1-3,K1) = DCMPLX (DD6, DD7)
          DC30(I1,J1-3,K1) = DD29
          DC30(I1,J1-2,K1) = DD28
          DC30(I1,J1-1,K1) = DD27
          DC30(I1,J1,K1) = DD26
          DC20(I1,J1-3,K1) = DD25
          DC20(I1,J1-2,K1) = DD24
          DC20(I1,J1-1,K1) = DD23
          DC20(I1,J1,K1) = DD22
         END DO
         DO J1=II3,10,-1
          DD30 = DC10(I1,J1,K1) + DC30(I1+10,J1,K1)
          DD31 = DC10(I1,J1,K1) * 2D0
          DD6 = DMAX1 (DD30, DD31)
          DD7 = DMAX1 (DC20(I1,J1,K1-1), DC30(I1,J1,K1-1))
          CD30(I1,J1,K1) = DCMPLX (DD6, DD7)
          DC30(I1,J1,K1) = DD31
          DC20(I1,J1,K1) = DD30
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       DO I1=1,10
        II6 = (I1 + 1) / 4
        II5 = I1 + II6 * (-4) + 10
        DO J1=I1+10,13,-4
         DB30(I1+10,J1) = DC10(I1,J1,20) - DB20(I1+10,J1)
         DB30(I1+10,J1-1) = DC10(I1,J1-1,20) - DB20(I1+10,J1-1)
         DB30(I1+10,J1-2) = DC10(I1,J1-2,20) - DB20(I1+10,J1-2)
         DB30(I1+10,J1-3) = DC10(I1,J1-3,20) - DB20(I1+10,J1-3)
        END DO
        DO J1=II5,10,-1
         DB30(I1+10,J1) = DC10(I1,J1,20) - DB20(I1+10,J1)
        END DO
       END DO
       I = 11
       WRITE (6, *) ' (CD10) '
       WRITE (6, 444) CD10
       WRITE (6, *) ' (DB20) '
       WRITE (6, 444) ((DB20(I,J), I=1,20), J=20,10,-1)
       WRITE (6, *) ' (DB30) '
       WRITE (6, 444) ((DB30(I,J), I=11,20), J=20,10,-1)
       WRITE (6, *) ' (CD20) '
       WRITE (6, 444) (CD20(K,K), K=1,10)
       WRITE (6, *) ' (DC20) '
       WRITE (6, 444) (((DC20(I,J,K), I=1,10), J=20,10,-1), K=20,2,-2)
       WRITE (6, *) ' (DC30) '
       WRITE (6, 444) (((DC30(I,J,K), I=1,10), J=20,10,-1), K=20,2,-2)
       WRITE (6, *) ' (CD30) '
       WRITE (6, *) (((CD30(I,J,K), I=1,10), J=20,10,-1), K=20,2,-2)

       DO I1=1,17,4
        DD16 = DMIN1 (DA20(I1), DA40(I1))
        DD17 = DMIN1 (DA20(I1+1), DA40(I1+1))
        DD18 = DMIN1 (DA20(I1+2), DA40(I1+2))
        DD8 = DMIN1 (DA20(I1+3), DA40(I1+3))
        DD32 = DD16 * DA10(I1)
        DD33 = DD17 * DA10(I1+1)
        DD34 = DD18 * DA10(I1+2)
        DD35 = DD8 * DA10(I1+3)
        DB20(I1,15) = DD32 - DC20(I1,15,10)
        DB20(I1+1,15) = DD33 - DC20(I1+1,15,10)
        DB20(I1+2,15) = DD34 - DC20(I1+2,15,10)
        DB20(I1+3,15) = DD35 - DC20(I1+3,15,10)
        DA30(I1+3) = DD35
        DA30(I1+2) = DD34
        DA30(I1+1) = DD33
        DA30(I1) = DD32
       END DO
C$OMP PARALLEL SHARED (CD10,DB30,DB10,DB20,CD20,CD30,DA10,DC20,DC10) 
C$OMP& PRIVATE (DC1,J1,I1,DD5,DD1,DD2,DD3,DD4,K1)
C$OMP DO 
       DO J1=5,15
        DC1 = CD10(J1)
        DO I1=1,17,4
         DB30(I1,J1) = DB10(I1,J1) - DB20(I1,J1)
         DB30(I1+1,J1) = DB10(I1+1,J1) - DB20(I1+1,J1)
         DB30(I1+2,J1) = DB10(I1+2,J1) - DB20(I1+2,J1)
         DB30(I1+3,J1) = DB10(I1+3,J1) - DB20(I1+3,J1)
         CD20(I1,J1) = CD30(I1,J1,J1) + DC1
         CD20(I1+1,J1) = CD30(I1+1,J1,J1) + DC1
         CD20(I1+2,J1) = CD30(I1+2,J1,J1) + DC1
         CD20(I1+3,J1) = CD30(I1+3,J1,J1) + DC1
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
       DD5 = DA10(10)
C$OMP DO 
       DO J1=5,15
        DO K1=2,7,4
         DD1 = DA10(K1)
         DD2 = DA10(K1+1)
         DD3 = DA10(K1+2)
         DD4 = DA10(K1+3)
         DO I1=1,17,4
          DC20(I1,J1,K1) = DC10(I1,J1,K1) + DD1
          DC20(I1+1,J1,K1) = DC10(I1+1,J1,K1) + DD1
          DC20(I1+2,J1,K1) = DC10(I1+2,J1,K1) + DD1
          DC20(I1+3,J1,K1) = DC10(I1+3,J1,K1) + DD1
          DC20(I1,J1,K1+1) = DC10(I1,J1,K1+1) + DD2
          DC20(I1+1,J1,K1+1) = DC10(I1+1,J1,K1+1) + DD2
          DC20(I1+2,J1,K1+1) = DC10(I1+2,J1,K1+1) + DD2
          DC20(I1+3,J1,K1+1) = DC10(I1+3,J1,K1+1) + DD2
          DC20(I1,J1,K1+2) = DC10(I1,J1,K1+2) + DD3
          DC20(I1+1,J1,K1+2) = DC10(I1+1,J1,K1+2) + DD3
          DC20(I1+2,J1,K1+2) = DC10(I1+2,J1,K1+2) + DD3
          DC20(I1+3,J1,K1+2) = DC10(I1+3,J1,K1+2) + DD3
          DC20(I1,J1,K1+3) = DC10(I1,J1,K1+3) + DD4
          DC20(I1+1,J1,K1+3) = DC10(I1+1,J1,K1+3) + DD4
          DC20(I1+2,J1,K1+3) = DC10(I1+2,J1,K1+3) + DD4
          DC20(I1+3,J1,K1+3) = DC10(I1+3,J1,K1+3) + DD4
         END DO
        END DO
        DO I1=1,17,4
         DC20(I1,J1,10) = DC10(I1,J1,10) + DD5
         DC20(I1+1,J1,10) = DC10(I1+1,J1,10) + DD5
         DC20(I1+2,J1,10) = DC10(I1+2,J1,10) + DD5
         DC20(I1+3,J1,10) = DC10(I1+3,J1,10) + DD5
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I1=1,17,4
        DD19 = DIMAG (CD10(I1))
        DD20 = DIMAG (CD10(I1+1))
        DD21 = DIMAG (CD10(I1+2))
        DD9 = DIMAG (CD10(I1+3))
        DA40(I1) = DB30(I1,5) - DD19
        DA40(I1+1) = DB30(I1+1,5) - DD20
        DA40(I1+2) = DB30(I1+2,5) - DD21
        DA40(I1+3) = DB30(I1+3,5) - DD9
       END DO
       I = 21
       WRITE (6, *) ' (DA30) '
       WRITE (6, 444) DA30
       WRITE (6, *) ' (DA40) '
       WRITE (6, 444) DA40
       WRITE (6, *) ' (DB20) '
       WRITE (6, 444) (DB20(K,15), K=1,20)
       WRITE (6, *) ' (DB30) '
       WRITE (6, 444) ((DB30(I,J), I=1,20), J=5,15)
       WRITE (6, *) ' (CD20) '
       WRITE (6, 444) ((CD20(I,J), I=1,20), J=5,15)
       WRITE (6, *) ' (DC20) '
       WRITE (6, 444) DC20

  444  FORMAT(10G20.6)
       STOP 
      END
