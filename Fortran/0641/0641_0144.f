      PROGRAM MAIN
       IMPLICIT REAL*8 (D), COMPLEX*16 (C)
       DIMENSION DA10(30), DA20(30), DB10(20,20), DB20(20,20), DB30(20,
     X   20), DC10(20,20,20), DC20(20,20,20), DC30(20,20,20)
       DIMENSION CD10(30), CD20(30), CD30(20,20), CD40(20,20), CD50(20,
     X   20,20)
       DATA DA10/30*1.D0/ 
       DATA DA20/30*2.D0/ 
       DATA DB10/400*3.D0/ 
       DATA DB20/400*4.D0/ 
       DATA DB30/400*5.D0/ 
       DATA DC10/8000*2.0D0/ 
       DATA DC20/8000*4.D0/ 
       DATA DC30/8000*6.D0/ 
       DATA CD10/30*(1.D0,2.D0)/ 
       DATA CD20/30*(4.D0,2.D0)/ 
       DATA CD30/400*(2.D0,1.D0)/ 
       DATA CD40/400*(5.D0,3.D0)/ 
       DATA CD50/8000*(6.D0,3.D0)/ 
       INTEGER II8, II7, II6, II5, II4, II3, II2, II1, K1, J1, I1
       DOUBLE PRECISION DD21, DD20, DD19, DD18, DD17, DD16, DD15, DD14, 
     X   DD13, DD12, DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2
     X   , DD1
       COMPLEX*16 DC1

       DO I1=11,20
        II4 = (I1 - 1) / 4
        II3 = I1 + II4 * (-4)
        DO J1=I1,5,-4
         DD4 = 2D0 + DB20(I1,J1)
         DD5 = 2D0 + DB20(I1,J1-1)
         DD6 = 2D0 + DB20(I1,J1-2)
         DD3 = 2D0 + DB20(I1,J1-3)
         DB10(I1,J1) = DD4 + DB30(J1,I1)
         DB10(I1,J1-1) = DD5 + DB30(J1-1,I1)
         DB10(I1,J1-2) = DD6 + DB30(J1-2,I1)
         DB10(I1,J1-3) = DD3 + DB30(J1-3,I1)
        END DO
        DO J1=II3,2,-1
         DD3 = 2D0 + DB20(I1,J1)
         DB10(I1,J1) = DD3 + DB30(J1,I1)
        END DO
       END DO
C$OMP PARALLEL SHARED (DA10,DA20,CD20,DB10,CD30,CD10,DC10,DC20,DC30) 
C$OMP& PRIVATE (I1,DVAL1,DY1,J1,DX2,DY2,II1,II6,II5,K1,II2,II8,II7)
C$OMP DO 
       DO I1=11,20
        DVAL1 = DA10(I1) + DA20(I1)
        DY1 = DIMAG (CD20(I1-10))
        DA10(I1+10) = DA20(I1+10) + DY1
        DO J1=I1,2,-1
         DX2 = DNINT (DSQRT (DB10(I1,J1)))
         DY2 = 0D0
         IF (DB10(I1,J1) .GT. 10D0) THEN
          DY2 = DB10(I1,J1)
         END IF
         CD30(I1,J1) = DCMPLX (DX2, DY2)
        END DO
        CD10(I1-10) = DCMPLX (DREAL (CD10(I1-10) + CD20(I1-10)), DY1)
        DA20(I1+10) = DABS (DA10(I1) - DA20(I1)) + DVAL1
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO K1=1,10,2
        II1 = K1 * 2
        DO I1=11,20
         II6 = (I1 - 1) / 4
         II5 = I1 + II6 * (-4)
         DO J1=I1,5,-4
          DC10(I1,J1,K1) = DC20(I1,J1,K1+1) + DC30(I1,J1,II1)
          DC10(I1,J1-1,K1) = DC20(I1,J1-1,K1+1) + DC30(I1,J1-1,II1)
          DC10(I1,J1-2,K1) = DC20(I1,J1-2,K1+1) + DC30(I1,J1-2,II1)
          DC10(I1,J1-3,K1) = DC20(I1,J1-3,K1+1) + DC30(I1,J1-3,II1)
         END DO
         DO J1=II5,2,-1
          DC10(I1,J1,K1) = DC20(I1,J1,K1+1) + DC30(I1,J1,II1)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO I1=11,20
        II8 = (I1 - 1) / 4
        II7 = I1 + II8 * (-4)
        DO K1=1,10,2
         II2 = K1 * 2 - 1
         DO J1=I1,5,-4
          DC20(I1,J1,K1) = DC10(I1-1,J1,K1+1) * DC30(I1,J1,II2)
          DC30(I1,J1,K1) = DNINT (DC20(I1,J1-1,K1) / DC10(I1,J1,K1+1))
          DC20(I1,J1-1,K1) = DC10(I1-1,J1-1,K1+1) * DC30(I1,J1-1,II2)
          DC30(I1,J1-1,K1) = DNINT (DC20(I1,J1-2,K1) / DC10(I1,J1-1,K1+1
     X      ))
          DC20(I1,J1-2,K1) = DC10(I1-1,J1-2,K1+1) * DC30(I1,J1-2,II2)
          DC30(I1,J1-2,K1) = DNINT (DC20(I1,J1-3,K1) / DC10(I1,J1-2,K1+1
     X      ))
          DC20(I1,J1-3,K1) = DC10(I1-1,J1-3,K1+1) * DC30(I1,J1-3,II2)
          DC30(I1,J1-3,K1) = DNINT (DC20(I1,J1-4,K1) / DC10(I1,J1-3,K1+1
     X      ))
         END DO
         DO J1=II7,2,-1
          DC20(I1,J1,K1) = DC10(I1-1,J1,K1+1) * DC30(I1,J1,II2)
          DC30(I1,J1,K1) = DNINT (DC20(I1,J1-1,K1) / DC10(I1,J1,K1+1))
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       I = 21
       WRITE (6, *) ' (DA10) ', (DA10(K), K=11,20)
       WRITE (6, *) ' (DA20) ', (DA20(K), K=11,20)
       WRITE (6, *) ' (CD10) ', (CD10(K), K=1,10)
       WRITE (6, *) ' (DB10) ', ((DB10(I,J), I=11,20), J=2,20)
       WRITE (6, *) ' (CD30) ', ((CD30(I,J), I=11,20), J=2,20)
       WRITE (6, *) ' (DC10) ', (((DC10(I,J,K), I=11,20), J=2,20), K=1,
     X   10,2)
       WRITE (6, *) ' (DC20) ', (((DC20(I,J,K), I=11,20), J=2,20), K=1,
     X   10,2)
       WRITE (6, *) ' (DC30) ', (((DC30(I,J,K), I=11,20), J=2,20), K=1,
     X   10,2)

       DO J1=20,11,-1
        IF (J1 .LE. 19) THEN
         DO I1=2,12,4
          DC10(I1,J1,J1) = DC20(I1,I1,J1) - DC30(I1,J1,I1)
          DC30(I1,I1,J1) = DC10(J1,J1,I1) - DC20(I1,I1,J1)
          DC10(I1+1,J1,J1) = DC20(I1+1,I1+1,J1) - DC30(I1+1,J1,I1+1)
          DC30(I1+1,I1+1,J1) = DC10(J1,J1,I1+1) - DC20(I1+1,I1+1,J1)
          DC10(I1+2,J1,J1) = DC20(I1+2,I1+2,J1) - DC30(I1+2,J1,I1+2)
          DC30(I1+2,I1+2,J1) = DC10(J1,J1,I1+2) - DC20(I1+2,I1+2,J1)
          DC10(I1+3,J1,J1) = DC20(I1+3,I1+3,J1) - DC30(I1+3,J1,I1+3)
          DC30(I1+3,I1+3,J1) = DC10(J1,J1,I1+3) - DC20(I1+3,I1+3,J1)
         END DO
         DO I1=14,15,1
          DC10(I1,J1,J1) = DC20(I1,I1,J1) - DC30(I1,J1,I1)
          DC30(I1,I1,J1) = DC10(J1,J1,I1) - DC20(I1,I1,J1)
         END DO
        ELSE
         DO I1=2,12,4
          DC10(I1,J1,J1) = DC20(I1,I1,J1) - DC30(I1,J1,I1)
          DC30(I1,I1,J1) = DC10(J1,J1,I1) - DC20(I1,I1,J1)
          DC10(I1+1,J1,J1) = DC20(I1+1,I1+1,J1) - DC30(I1+1,J1,I1+1)
          DC30(I1+1,I1+1,J1) = DC10(J1,J1,I1+1) - DC20(I1+1,I1+1,J1)
          DC10(I1+2,J1,J1) = DC20(I1+2,I1+2,J1) - DC30(I1+2,J1,I1+2)
          DC30(I1+2,I1+2,J1) = DC10(J1,J1,I1+2) - DC20(I1+2,I1+2,J1)
          DC10(I1+3,J1,J1) = DC20(I1+3,I1+3,J1) - DC30(I1+3,J1,I1+3)
          DC30(I1+3,I1+3,J1) = DC10(J1,J1,I1+3) - DC20(I1+3,I1+3,J1)
         END DO
         DO I1=14,15,1
          DC10(I1,J1,J1) = DC20(I1,I1,J1) - DC30(I1,J1,I1)
          DC30(I1,I1,J1) = DC10(J1,J1,I1) - DC20(I1,I1,J1)
         END DO
        END IF
       END DO
       DO I1=2,15
        CDX = CDSQRT (CD10(I1)) + CD20(I1)
        CDY = DCONJG (CDX)
        CD20(I1) = DCMPLX (DNINT (DREAL (CDY)), DNINT (DIMAG (CDY)))
        DD1 = DNINT (DREAL (DCONJG (CDX)))
        DD2 = DNINT (DIMAG (DCONJG (CDX)))
        DO K1=10,1,-2
         DC1 = CD40(I1,K1)
         DO J1=20,15,-5
          DD12 = DB10(I1,K1) + DD1
          DD13 = DB10(J1,K1) + DIMAG (DC1)
          DD7 = DMAX1 (DB20(K1,J1), DB30(K1,J1)) - DD2
          DX2 = DB10(K1+1,J1)
          DY2 = DD7
          DB30(J1,K1) = DD13
          DC1 = DCMPLX (DX2, DY2)
          CD50(I1,J1,K1) = DCMPLX (DY2, DX2)
          DD14 = DB10(I1,K1) + DD1
          DD15 = DB10(J1-1,K1) + DIMAG (DC1)
          DD8 = DMAX1 (DB20(K1,J1-1), DB30(K1,J1-1)) - DD2
          DX2 = DB10(K1+1,J1-1)
          DY2 = DD8
          DB30(J1-1,K1) = DD15
          DC1 = DCMPLX (DX2, DY2)
          CD50(I1,J1-1,K1) = DCMPLX (DY2, DX2)
          DD16 = DB10(I1,K1) + DD1
          DD17 = DB10(J1-2,K1) + DIMAG (DC1)
          DD9 = DMAX1 (DB20(K1,J1-2), DB30(K1,J1-2)) - DD2
          DX2 = DB10(K1+1,J1-2)
          DY2 = DD9
          DB30(J1-2,K1) = DD17
          DC1 = DCMPLX (DX2, DY2)
          CD50(I1,J1-2,K1) = DCMPLX (DY2, DX2)
          DD18 = DB10(I1,K1) + DD1
          DD19 = DB10(J1-3,K1) + DIMAG (DC1)
          DD10 = DMAX1 (DB20(K1,J1-3), DB30(K1,J1-3)) - DD2
          DX2 = DB10(K1+1,J1-3)
          DY2 = DD10
          DB30(J1-3,K1) = DD19
          DC1 = DCMPLX (DX2, DY2)
          CD50(I1,J1-3,K1) = DCMPLX (DY2, DX2)
          DD20 = DB10(I1,K1) + DD1
          DD21 = DB10(J1-4,K1) + DIMAG (DC1)
          DD11 = DMAX1 (DB20(K1,J1-4), DB30(K1,J1-4)) - DD2
          DX2 = DB10(K1+1,J1-4)
          DY2 = DD11
          DB30(J1-4,K1) = DD21
          DC1 = DCMPLX (DX2, DY2)
          CD50(I1,J1-4,K1) = DCMPLX (DY2, DX2)
          DB10(K1,J1-4) = DD11
          DB20(J1-4,K1) = DD20
          DB10(K1,J1-3) = DD10
          DB20(J1-3,K1) = DD18
          DB10(K1,J1-2) = DD9
          DB20(J1-2,K1) = DD16
          DB10(K1,J1-1) = DD8
          DB20(J1-1,K1) = DD14
          DB10(K1,J1) = DD7
          DB20(J1,K1) = DD12
         END DO
         CD40(I1,K1) = DC1
        END DO
        DA10(I1-1) = DA10(I1) + DC10(I1,20,20)
        DA20(I1-1) = DA20(I1+2) + DC30(I1,1,1)
       END DO
       I = 16
       WRITE (6, *) ' (DA10) ', (DA10(K), K=1,15)
       WRITE (6, *) ' (DA20) ', (DA20(K), K=1,15)
       WRITE (6, *) ' (CD20) ', (CD20(K), K=1,15)
       WRITE (6, *) ' (DB20) ', ((DB20(I,J), I=20,11,-1), J=10,1,-2)
       WRITE (6, *) ' (DB30) ', ((DB30(I,J), I=20,11,-1), J=10,1,-2)
       WRITE (6, *) ' (DB10) ', ((DB10(I,J), I=10,1,-2), J=20,11,-1)
       WRITE (6, *) ' (CD40) ', ((CD40(I,J), I=1,15), J=10,1,-2)
       WRITE (6, *) ' (CD50) ', (((CD50(I,J,K), I=1,15), J=20,11,-1), K=
     X   10,1,-2)
       WRITE (6, *) ' (DC10) ', ((DC10(I,J,J), I=1,15), J=20,11,-1)
       WRITE (6, *) ' (DC30) ', ((DC30(I,J,J), I=1,15), J=20,11,-1)

       STOP 
      END
