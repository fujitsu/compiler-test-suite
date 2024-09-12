      REAL*8 A1(20), B1(20), C1(20)
      REAL*8 A2(20,20), B2(20,20), C2(20,20)
      REAL*8 A3(20,20,20), B3(20,20,20), C3(20,20,20)
      INTEGER NN
      PARAMETER (NN = 16)
      DATA A1/20*1.D0/ 
      DATA B1/20*2.D0/ 
      DATA C1/20*3.D0/ 
      DATA A2/400*2.1D0/ 
      DATA B2/400*1.2D0/ 
      DATA C2/400*4.D0/ 
      DATA A3/8000*0.2D0/ 
      DATA B3/8000*0.1D0/ 
      DATA C3/8000*0.3D0/ 
      INTEGER I1, J1, K1
      DOUBLE PRECISION DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1

      DO K1=1,17,4
       A1(K1) = B1(K1) + C1(K1)
       A1(K1+1) = B1(K1+1) + C1(K1+1)
       A1(K1+2) = B1(K1+2) + C1(K1+2)
       A1(K1+3) = B1(K1+3) + C1(K1+3)
      END DO
C$OMP PARALLEL SHARED (A1,B3,A3) PRIVATE (DD1,DD3,DD4,DD5,I1,J1,K1)
C$OMP DO 
      DO I1=2,16
       DO J1=1,17,4

        DO K1=1,17,4
         DD3 = A1(K1) * 2D0
         DD4 = A1(K1+1) * 2D0
         DD5 = A1(K1+2) * 2D0
         DD1 = A1(K1+3) * 2D0
         B3(K1,J1,I1) = DD3 - A3(K1,J1,I1+1)
         B3(K1+1,J1,I1) = DD4 - A3(K1+1,J1,I1+1)
         B3(K1+2,J1,I1) = DD5 - A3(K1+2,J1,I1+1)
         B3(K1+3,J1,I1) = DD1 - A3(K1+3,J1,I1+1)
         DD3 = A1(K1) * 2D0
         DD4 = A1(K1+1) * 2D0
         DD5 = A1(K1+2) * 2D0
         DD1 = A1(K1+3) * 2D0
         B3(K1,J1+1,I1) = DD3 - A3(K1,J1+1,I1+1)
         B3(K1+1,J1+1,I1) = DD4 - A3(K1+1,J1+1,I1+1)
         B3(K1+2,J1+1,I1) = DD5 - A3(K1+2,J1+1,I1+1)
         B3(K1+3,J1+1,I1) = DD1 - A3(K1+3,J1+1,I1+1)
         DD3 = A1(K1) * 2D0
         DD4 = A1(K1+1) * 2D0
         DD5 = A1(K1+2) * 2D0
         DD1 = A1(K1+3) * 2D0
         B3(K1,J1+2,I1) = DD3 - A3(K1,J1+2,I1+1)
         B3(K1+1,J1+2,I1) = DD4 - A3(K1+1,J1+2,I1+1)
         B3(K1+2,J1+2,I1) = DD5 - A3(K1+2,J1+2,I1+1)
         B3(K1+3,J1+2,I1) = DD1 - A3(K1+3,J1+2,I1+1)
         DD3 = A1(K1) * 2D0
         DD4 = A1(K1+1) * 2D0
         DD5 = A1(K1+2) * 2D0
         DD1 = A1(K1+3) * 2D0
         B3(K1,J1+3,I1) = DD3 - A3(K1,J1+3,I1+1)
         B3(K1+1,J1+3,I1) = DD4 - A3(K1+1,J1+3,I1+1)
         B3(K1+2,J1+3,I1) = DD5 - A3(K1+2,J1+3,I1+1)
         B3(K1+3,J1+3,I1) = DD1 - A3(K1+3,J1+3,I1+1)
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      DO J1=1,20
       DO K1=1,17,4
        A2(K1,J1) = B2(K1,J1) * C2(K1,J1)
        A2(K1+1,J1) = B2(K1+1,J1) * C2(K1+1,J1)
        A2(K1+2,J1) = B2(K1+2,J1) * C2(K1+2,J1)
        A2(K1+3,J1) = B2(K1+3,J1) * C2(K1+3,J1)
       END DO
       DO I1=2,12,5
        DO K1=1,17,4
         DD6 = C3(I1,J1,K1) * B3(K1,J1,I1)
         DD7 = C3(I1,J1,K1+1) * B3(K1+1,J1,I1)
         DD8 = C3(I1,J1,K1+2) * B3(K1+2,J1,I1)
         DD2 = C3(I1,J1,K1+3) * B3(K1+3,J1,I1)
         A3(K1,J1,I1) = A2(K1,I1-1) + DD6
         A3(K1+1,J1,I1) = A2(K1+1,I1-1) + DD7
         A3(K1+2,J1,I1) = A2(K1+2,I1-1) + DD8
         A3(K1+3,J1,I1) = A2(K1+3,I1-1) + DD2
         DD6 = C3(I1+1,J1,K1) * B3(K1,J1,I1+1)
         DD7 = C3(I1+1,J1,K1+1) * B3(K1+1,J1,I1+1)
         DD8 = C3(I1+1,J1,K1+2) * B3(K1+2,J1,I1+1)
         DD2 = C3(I1+1,J1,K1+3) * B3(K1+3,J1,I1+1)
         A3(K1,J1,I1+1) = A2(K1,I1) + DD6
         A3(K1+1,J1,I1+1) = A2(K1+1,I1) + DD7
         A3(K1+2,J1,I1+1) = A2(K1+2,I1) + DD8
         A3(K1+3,J1,I1+1) = A2(K1+3,I1) + DD2
         DD6 = C3(I1+2,J1,K1) * B3(K1,J1,I1+2)
         DD7 = C3(I1+2,J1,K1+1) * B3(K1+1,J1,I1+2)
         DD8 = C3(I1+2,J1,K1+2) * B3(K1+2,J1,I1+2)
         DD2 = C3(I1+2,J1,K1+3) * B3(K1+3,J1,I1+2)
         A3(K1,J1,I1+2) = A2(K1,I1+1) + DD6
         A3(K1+1,J1,I1+2) = A2(K1+1,I1+1) + DD7
         A3(K1+2,J1,I1+2) = A2(K1+2,I1+1) + DD8
         A3(K1+3,J1,I1+2) = A2(K1+3,I1+1) + DD2
         DD6 = C3(I1+3,J1,K1) * B3(K1,J1,I1+3)
         DD7 = C3(I1+3,J1,K1+1) * B3(K1+1,J1,I1+3)
         DD8 = C3(I1+3,J1,K1+2) * B3(K1+2,J1,I1+3)
         DD2 = C3(I1+3,J1,K1+3) * B3(K1+3,J1,I1+3)
         A3(K1,J1,I1+3) = A2(K1,I1+2) + DD6
         A3(K1+1,J1,I1+3) = A2(K1+1,I1+2) + DD7
         A3(K1+2,J1,I1+3) = A2(K1+2,I1+2) + DD8
         A3(K1+3,J1,I1+3) = A2(K1+3,I1+2) + DD2
         DD6 = C3(I1+4,J1,K1) * B3(K1,J1,I1+4)
         DD7 = C3(I1+4,J1,K1+1) * B3(K1+1,J1,I1+4)
         DD8 = C3(I1+4,J1,K1+2) * B3(K1+2,J1,I1+4)
         DD2 = C3(I1+4,J1,K1+3) * B3(K1+3,J1,I1+4)
         A3(K1,J1,I1+4) = A2(K1,I1+3) + DD6
         A3(K1+1,J1,I1+4) = A2(K1+1,I1+3) + DD7
         A3(K1+2,J1,I1+4) = A2(K1+2,I1+3) + DD8
         A3(K1+3,J1,I1+4) = A2(K1+3,I1+3) + DD2
        END DO
       END DO
      END DO

      K = 21

      WRITE (6, 1000) ' A1= ', A1
      WRITE (6, 1000) ' A2= ', ((A2(I,J), I=1,15), J=1,15)
      WRITE (6, 1000) ' A3= ', (((A3(I,J,K), I=1,10), J=1,10), K=1,10)
 1000 FORMAT(' ',A,(3G24.15))
      STOP 
      END
