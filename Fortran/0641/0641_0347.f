      PROGRAM MAIN
       IMPLICIT REAL*8 (A-B,D-H,O-Z), COMPLEX*16 (C)
       PARAMETER (NX = 50, NY = 20)
       DIMENSION DA(50,50), DB(50,50), DC(50,50), DD(50,50)
       DIMENSION C1(50,50), C2(50,50)
       INTEGER NN
       PARAMETER (NN = 20)
       INTEGER II9, II8, II7, II6, II5, II4, II3, II2, II1, I1, J1
       DOUBLE PRECISION DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, 
     X   DD2, DD1
C$OMP PARALLEL SHARED (DA,DB,DC,DD,C1,C2) PRIVATE (J1,I1)
C$OMP DO 
       DO J1=1,50
        DO I1=1,46,5
         DA(I1,J1) = 1D0
         DA(I1+1,J1) = 1D0
         DA(I1+2,J1) = 1D0
         DA(I1+3,J1) = 1D0
         DA(I1+4,J1) = 1D0
         DB(I1,J1) = 2D0
         DB(I1+1,J1) = 2D0
         DB(I1+2,J1) = 2D0
         DB(I1+3,J1) = 2D0
         DB(I1+4,J1) = 2D0
         DC(I1,J1) = 3D0
         DC(I1+1,J1) = 3D0
         DC(I1+2,J1) = 3D0
         DC(I1+3,J1) = 3D0
         DC(I1+4,J1) = 3D0
         DD(I1,J1) = 4D0
         DD(I1+1,J1) = 4D0
         DD(I1+2,J1) = 4D0
         DD(I1+3,J1) = 4D0
         DD(I1+4,J1) = 4D0
         C1(I1,J1) = (1.D0,2.D0)
         C1(I1+1,J1) = (1.D0,2.D0)
         C1(I1+2,J1) = (1.D0,2.D0)
         C1(I1+3,J1) = (1.D0,2.D0)
         C1(I1+4,J1) = (1.D0,2.D0)
         C2(I1,J1) = (3.D0,1.D0)
         C2(I1+1,J1) = (3.D0,1.D0)
         C2(I1+2,J1) = (3.D0,1.D0)
         C2(I1+3,J1) = (3.D0,1.D0)
         C2(I1+4,J1) = (3.D0,1.D0)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       DO K=2,20
        DA(K,K) = DFLOAT (K)
        II3 = MAX0 (K - 1, 0) + 2
        DO J1=2,10
         DB(K,J1) = DFLOAT (J1)
         DX = 2D0
         DO I1=2,K
          IF (DA(J1+I1-2,J1) .LE. DX) THEN
           DX = DA(J1+I1-2,J1)
          END IF
         END DO
         I = II3
         DC(J1,K) = DX
         DB(K,J1) = DB(J1,J1) + DD(J1,K)
        END DO
        DD(I,11) = DX - DA(I,11)
       END DO


C$OMP PARALLEL SHARED (DSUM,DA,DB,DC,DX,DD,C1,C2) PRIVATE (DD1,II5,II4,
C$OMP& II7,II6,DD2,DD3,DD4,DD5,DD6,DD7,DD8,DD9,DD10,DD11,II1,K,J1,I1)
C$OMP DO 
       DO II1=0,1
        GO TO (17), II1
        DO K=2,20
         DO J1=K,50
          DSUM = 0D0
          II5 = (J1 - 19) / 4
          II4 = II5 * 4 + 20
          DO I1=20,J1-3,4
           DD2 = 1D0 - DA(I1,J1) + DB(K,I1)
           DD2 = DD2 + DC(I1,J1)
           DX = DD2
           DX = DX - DC(I1,J1)
           DSUM = DSUM + DX - DA(I1,K)
           DSUM = DSUM + DB(I1-18,K)
           DD3 = -DX
           DD4 = 1D0 - DA(I1+1,J1) + DB(K,I1+1)
           DD4 = DD4 + DC(I1+1,J1)
           DC(I1,J1) = DD3
           DX = DD4
           DX = DX - DC(I1+1,J1)
           DSUM = DSUM + DX - DA(I1+1,K)
           DSUM = DSUM + DB(I1-17,K)
           DD5 = -DX
           DD6 = 1D0 - DA(I1+2,J1) + DB(K,I1+2)
           DD6 = DD6 + DC(I1+2,J1)
           DC(I1+1,J1) = DD5
           DX = DD6
           DX = DX - DC(I1+2,J1)
           DSUM = DSUM + DX - DA(I1+2,K)
           DSUM = DSUM + DB(I1-16,K)
           DD7 = -DX
           DD8 = 1D0 - DA(I1+3,J1) + DB(K,I1+3)
           DD8 = DD8 + DC(I1+3,J1)
           DC(I1+2,J1) = DD7
           DX = DD8
           DX = DX - DC(I1+3,J1)
           DSUM = DSUM + DX - DA(I1+3,K)
           DSUM = DSUM + DB(I1-15,K)
           DD9 = -DX
           DC(I1+3,J1) = DD9
           DD(I1-16,J1) = DD8
           DD(I1-17,J1) = DD6
           DD(I1-18,J1) = DD4
           DD(I1-19,J1) = DD2
          END DO
          DO I1=II4,J1,1
           DD10 = 1D0 - DA(I1,J1) + DB(K,I1)
           DD10 = DD10 + DC(I1,J1)
           DX = DD10
           DX = DX - DC(I1,J1)
           DSUM = DSUM + DX - DA(I1,K)
           DSUM = DSUM + DB(I1-II4+II5*4+2,K)
           DD11 = -DX
           DC(I1,J1) = DD11
           DD(I1-II4+II5*4+1,J1) = DD10
          END DO
          DA(J1,K) = DA(K,J1) - DSUM
         END DO
        END DO
C$OMP FLUSH
        GO TO 18


   17   DO K=2,20
         DO J1=K,50
          DD1 = DFLOAT (J1)
          II7 = (J1 - 19) / 4
          II6 = II7 * 4 + 20
          DO I1=20,J1-3,4
           C1(I1-19,K) = C2(J1-K+2,I1-19) + (1.D0,2.D0)
           C2(I1-18,J1-K+2) = DCMPLX (DFLOAT (I1), DD1)
           C1(I1-18,K) = C2(J1-K+2,I1-18) + (1.D0,2.D0)
           C2(I1-17,J1-K+2) = DCMPLX (DFLOAT (I1 + 1), DD1)
           C1(I1-17,K) = C2(J1-K+2,I1-17) + (1.D0,2.D0)
           C2(I1-16,J1-K+2) = DCMPLX (DFLOAT (I1 + 2), DD1)
           C1(I1-16,K) = C2(J1-K+2,I1-16) + (1.D0,2.D0)
           C2(I1-15,J1-K+2) = DCMPLX (DFLOAT (I1 + 3), DD1)
          END DO
          DO I1=II6,J1,1
           C1(I1-II6+II7*4+1,K) = C2(J1-K+2,I1-II6+II7*4+1) + 
     X       (1.D0,2.D0)
           C2(I1-II6+II7*4+2,J1-K+2) = DCMPLX (DFLOAT (I1), DD1)
          END DO
         END DO
        END DO
C$OMP FLUSH
   18   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 


       DO K=40,50
        DO J1=K,50
         II9 = (J1 - 1) / 4
         II8 = II9 * 4 + 2
         DO I1=2,J1-3,4
          DX = DABS (DA(I1,K) - DA(K,I1))
          DY = DABS (DC(K,I1) - DC(I1,J1))
          DX = DREAL (C1(I1,J1)) + DIMAG (C2(52-I1,K)) + DX
          CDX = C1(52-I1,J1) * C2(J1,I1-1)
          DY = DY + DIMAG (C1(I1-1,J1))
          C1(52-I1,J1) = DCMPLX (DX, DY)
          C2(52-I1,J1-1) = CDX
          DX = DABS (DA(I1+1,K) - DA(K,I1+1))
          DY = DABS (DC(K,I1+1) - DC(I1+1,J1))
          DX = DREAL (C1(I1+1,J1)) + DIMAG (C2(51-I1,K)) + DX
          CDX = C1(51-I1,J1) * C2(J1,I1)
          DY = DY + DIMAG (C1(I1,J1))
          C1(51-I1,J1) = DCMPLX (DX, DY)
          C2(51-I1,J1-1) = CDX
          DX = DABS (DA(I1+2,K) - DA(K,I1+2))
          DY = DABS (DC(K,I1+2) - DC(I1+2,J1))
          DX = DREAL (C1(I1+2,J1)) + DIMAG (C2(50-I1,K)) + DX
          CDX = C1(50-I1,J1) * C2(J1,I1+1)
          DY = DY + DIMAG (C1(I1+1,J1))
          C1(50-I1,J1) = DCMPLX (DX, DY)
          C2(50-I1,J1-1) = CDX
          DX = DABS (DA(I1+3,K) - DA(K,I1+3))
          DY = DABS (DC(K,I1+3) - DC(I1+3,J1))
          DX = DREAL (C1(I1+3,J1)) + DIMAG (C2(49-I1,K)) + DX
          CDX = C1(49-I1,J1) * C2(J1,I1+2)
          DY = DY + DIMAG (C1(I1+2,J1))
          C1(49-I1,J1) = DCMPLX (DX, DY)
          C2(49-I1,J1-1) = CDX
         END DO
         DO I1=II8,J1,1
          DX = DABS (DA(I1,K) - DA(K,I1))
          DY = DABS (DC(K,I1) - DC(I1,J1))
          DX = DREAL (C1(I1,J1)) + DIMAG (C2(II9*(-4)+II8-I1+50,K)) + DX
          CDX = C1(II9*(-4)+II8-I1+50,J1) * C2(J1,I1-1)
          DY = DY + DIMAG (C1(I1-1,J1))
          C1(II9*(-4)+II8-I1+50,J1) = DCMPLX (DX, DY)
          C2(II9*(-4)+II8-I1+50,J1-1) = CDX
         END DO
        END DO
       END DO
C$OMP PARALLEL SHARED (DD,DB) PRIVATE (J1,I1,K)
C$OMP DO 
       DO J1=40,50
        DO I1=2,J1


         DO K=40,47,4
          DB(I1,J1) = DB(I1,J1) - DD(I1,J1)
          DB(I1,J1) = DB(I1,J1) - DD(I1,J1)
          DB(I1,J1) = DB(I1,J1) - DD(I1,J1)
          DB(I1,J1) = DB(I1,J1) - DD(I1,J1)
         END DO
         DO K=48,50,1
          DB(I1,J1) = DB(I1,J1) - DD(I1,J1)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO J1=40,50


        II2 = J1 - 39
        IF (II2 .GT. 0) DS2 = DC(II2+39,J1)
       END DO
       DS1 = DMAX1 (0D0, DD(50,50))
       WRITE (6, *) ' DS1= ', DS1
       WRITE (6, *) ' DS2= ', DS2
       WRITE (6, *) ' DA= ', ((DA(I,J), I=1,20), J=1,20)
       WRITE (6, *) ' DB= ', ((DB(I,J), I=1,20), J=1,20)
       WRITE (6, *) ' DC= ', ((DC(I,J), I=1,20), J=1,20)
       WRITE (6, *) ' DD= ', ((DD(I,J), I=1,20), J=1,20)
       WRITE (6, *) ' C1= ', ((C1(I,J), I=1,20), J=1,20)
       WRITE (6, *) ' C2= ', ((C2(I,J), I=1,20), J=1,20)
       STOP 
      END
