      REAL*8 A1(20), B1(20), C1(20)
      REAL*8 A2(20,20), B2(20,20), C2(20,20)
      REAL*8 A3(20,20,20), B3(20,20,20), C3(20,20,20)
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
      DOUBLE PRECISION DD22, DD21, DD20, DD19, DD18, DD17, DD16, DD15, 
     X  DD14, DD13, DD12, DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3
     X  , DD2, DD1

      DO K1=1,17,4
       DD20 = DSQRT (C1(K1))
       DD21 = DSQRT (C1(K1+1))
       DD22 = DSQRT (C1(K1+2))
       DD19 = DSQRT (C1(K1+3))
       A1(K1) = B1(K1) + DD20
       A1(K1+1) = B1(K1+1) + DD21
       A1(K1+2) = B1(K1+2) + DD22
       A1(K1+3) = B1(K1+3) + DD19
      END DO

      DO J1=2,17,4

       DO K1=1,17,4
        A2(K1,J1) = B2(K1,J1) * A1(K1)
        A2(K1+1,J1) = B2(K1+1,J1) * A1(K1+1)
        A2(K1+2,J1) = B2(K1+2,J1) * A1(K1+2)
        A2(K1+3,J1) = B2(K1+3,J1) * A1(K1+3)
        A2(K1,J1+1) = B2(K1,J1+1) * A1(K1)
        A2(K1+1,J1+1) = B2(K1+1,J1+1) * A1(K1+1)
        A2(K1+2,J1+1) = B2(K1+2,J1+1) * A1(K1+2)
        A2(K1+3,J1+1) = B2(K1+3,J1+1) * A1(K1+3)
        A2(K1,J1+2) = B2(K1,J1+2) * A1(K1)
        A2(K1+1,J1+2) = B2(K1+1,J1+2) * A1(K1+1)
        A2(K1+2,J1+2) = B2(K1+2,J1+2) * A1(K1+2)
        A2(K1+3,J1+2) = B2(K1+3,J1+2) * A1(K1+3)
        A2(K1,J1+3) = B2(K1,J1+3) * A1(K1)
        A2(K1+1,J1+3) = B2(K1+1,J1+3) * A1(K1+1)
        A2(K1+2,J1+3) = B2(K1+2,J1+3) * A1(K1+2)
        A2(K1+3,J1+3) = B2(K1+3,J1+3) * A1(K1+3)
       END DO
      END DO
      DO J1=18,20,1

       DO K1=1,17,4
        A2(K1,J1) = B2(K1,J1) * A1(K1)
        A2(K1+1,J1) = B2(K1+1,J1) * A1(K1+1)
        A2(K1+2,J1) = B2(K1+2,J1) * A1(K1+2)
        A2(K1+3,J1) = B2(K1+3,J1) * A1(K1+3)
       END DO
      END DO

      DO K1=1,19

C$OMP PARALLEL SHARED (K1,B2,A2,A3,B3,C3) PRIVATE (DD1,DD2,DD3,DD4,DD5,
C$OMP& DD6,DD7,DD8,DD9,DD10,DD11,DD12,DD13,DD14,DD15,DD16,J1,I1)
C$OMP DO 
       DO J1=2,17,4
        DD9 = B2(K1+1,J1)
        DD10 = B2(K1+1,J1+1)
        DD11 = B2(K1+1,J1+2)
        DD12 = B2(K1+1,J1+3)
        DD13 = A2(K1,J1-1)
        DD14 = A2(K1,J1)
        DD15 = A2(K1,J1+1)
        DD16 = A2(K1,J1+2)
        DO I1=2,16,3
         DD3 = A3(K1+1,J1-1,I1+1) * 2D0
         DD4 = A3(K1+1,J1,I1+1) * 2D0
         DD5 = A3(K1+1,J1+1,I1+1) * 2D0
         DD2 = A3(K1+1,J1+2,I1+1) * 2D0
         DD6 = DD3 - A3(K1,J1,I1+1)
         DD7 = DD4 - A3(K1,J1+1,I1+1)
         DD8 = DD5 - A3(K1,J1+2,I1+1)
         DD1 = DD2 - A3(K1,J1+3,I1+1)
         B3(K1,J1,I1) = DD6 + DD9
         B3(K1,J1+1,I1) = DD7 + DD10
         B3(K1,J1+2,I1) = DD8 + DD11
         B3(K1,J1+3,I1) = DD1 + DD12
         DD6 = C3(K1,J1,I1) * B3(K1+1,J1,I1)
         DD7 = C3(K1,J1+1,I1) * B3(K1+1,J1+1,I1)
         DD8 = C3(K1,J1+2,I1) * B3(K1+1,J1+2,I1)
         DD1 = C3(K1,J1+3,I1) * B3(K1+1,J1+3,I1)
         A3(K1,J1,I1) = DD13 + DD6
         A3(K1,J1+1,I1) = DD14 + DD7
         A3(K1,J1+2,I1) = DD15 + DD8
         A3(K1,J1+3,I1) = DD16 + DD1
         DD3 = A3(K1+1,J1-1,I1+2) * 2D0
         DD4 = A3(K1+1,J1,I1+2) * 2D0
         DD5 = A3(K1+1,J1+1,I1+2) * 2D0
         DD2 = A3(K1+1,J1+2,I1+2) * 2D0
         DD6 = DD3 - A3(K1,J1,I1+2)
         DD7 = DD4 - A3(K1,J1+1,I1+2)
         DD8 = DD5 - A3(K1,J1+2,I1+2)
         DD1 = DD2 - A3(K1,J1+3,I1+2)
         B3(K1,J1,I1+1) = DD6 + DD9
         B3(K1,J1+1,I1+1) = DD7 + DD10
         B3(K1,J1+2,I1+1) = DD8 + DD11
         B3(K1,J1+3,I1+1) = DD1 + DD12
         DD6 = C3(K1,J1,I1+1) * B3(K1+1,J1,I1+1)
         DD7 = C3(K1,J1+1,I1+1) * B3(K1+1,J1+1,I1+1)
         DD8 = C3(K1,J1+2,I1+1) * B3(K1+1,J1+2,I1+1)
         DD1 = C3(K1,J1+3,I1+1) * B3(K1+1,J1+3,I1+1)
         A3(K1,J1,I1+1) = DD13 + DD6
         A3(K1,J1+1,I1+1) = DD14 + DD7
         A3(K1,J1+2,I1+1) = DD15 + DD8
         A3(K1,J1+3,I1+1) = DD16 + DD1
         DD3 = A3(K1+1,J1-1,I1+3) * 2D0
         DD4 = A3(K1+1,J1,I1+3) * 2D0
         DD5 = A3(K1+1,J1+1,I1+3) * 2D0
         DD2 = A3(K1+1,J1+2,I1+3) * 2D0
         DD6 = DD3 - A3(K1,J1,I1+3)
         DD7 = DD4 - A3(K1,J1+1,I1+3)
         DD8 = DD5 - A3(K1,J1+2,I1+3)
         DD1 = DD2 - A3(K1,J1+3,I1+3)
         B3(K1,J1,I1+2) = DD6 + DD9
         B3(K1,J1+1,I1+2) = DD7 + DD10
         B3(K1,J1+2,I1+2) = DD8 + DD11
         B3(K1,J1+3,I1+2) = DD1 + DD12
         DD6 = C3(K1,J1,I1+2) * B3(K1+1,J1,I1+2)
         DD7 = C3(K1,J1+1,I1+2) * B3(K1+1,J1+1,I1+2)
         DD8 = C3(K1,J1+2,I1+2) * B3(K1+1,J1+2,I1+2)
         DD1 = C3(K1,J1+3,I1+2) * B3(K1+1,J1+3,I1+2)
         A3(K1,J1,I1+2) = DD13 + DD6
         A3(K1,J1+1,I1+2) = DD14 + DD7
         A3(K1,J1+2,I1+2) = DD15 + DD8
         A3(K1,J1+3,I1+2) = DD16 + DD1
        END DO
        DO I1=17,18,1
         DD3 = A3(K1+1,J1-1,I1+1) * 2D0
         DD4 = A3(K1+1,J1,I1+1) * 2D0
         DD5 = A3(K1+1,J1+1,I1+1) * 2D0
         DD2 = A3(K1+1,J1+2,I1+1) * 2D0
         DD6 = DD3 - A3(K1,J1,I1+1)
         DD7 = DD4 - A3(K1,J1+1,I1+1)
         DD8 = DD5 - A3(K1,J1+2,I1+1)
         DD1 = DD2 - A3(K1,J1+3,I1+1)
         B3(K1,J1,I1) = DD6 + DD9
         B3(K1,J1+1,I1) = DD7 + DD10
         B3(K1,J1+2,I1) = DD8 + DD11
         B3(K1,J1+3,I1) = DD1 + DD12
         DD6 = C3(K1,J1,I1) * B3(K1+1,J1,I1)
         DD7 = C3(K1,J1+1,I1) * B3(K1+1,J1+1,I1)
         DD8 = C3(K1,J1+2,I1) * B3(K1+1,J1+2,I1)
         DD1 = C3(K1,J1+3,I1) * B3(K1+1,J1+3,I1)
         A3(K1,J1,I1) = DD13 + DD6
         A3(K1,J1+1,I1) = DD14 + DD7
         A3(K1,J1+2,I1) = DD15 + DD8
         A3(K1,J1+3,I1) = DD16 + DD1
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO J1=18,20,1
        DD17 = B2(K1+1,J1)
        DD18 = A2(K1,J1-1)
        DO I1=2,15,4
         DD2 = A3(K1+1,J1-1,I1+1) * 2D0
         DD1 = DD2 - A3(K1,J1,I1+1)
         B3(K1,J1,I1) = DD1 + DD17
         DD1 = C3(K1,J1,I1) * B3(K1+1,J1,I1)
         A3(K1,J1,I1) = DD18 + DD1
         DD2 = A3(K1+1,J1-1,I1+2) * 2D0
         DD1 = DD2 - A3(K1,J1,I1+2)
         B3(K1,J1,I1+1) = DD1 + DD17
         DD1 = C3(K1,J1,I1+1) * B3(K1+1,J1,I1+1)
         A3(K1,J1,I1+1) = DD18 + DD1
         DD2 = A3(K1+1,J1-1,I1+3) * 2D0
         DD1 = DD2 - A3(K1,J1,I1+3)
         B3(K1,J1,I1+2) = DD1 + DD17
         DD1 = C3(K1,J1,I1+2) * B3(K1+1,J1,I1+2)
         A3(K1,J1,I1+2) = DD18 + DD1
         DD2 = A3(K1+1,J1-1,I1+4) * 2D0
         DD1 = DD2 - A3(K1,J1,I1+4)
         B3(K1,J1,I1+3) = DD1 + DD17
         DD1 = C3(K1,J1,I1+3) * B3(K1+1,J1,I1+3)
         A3(K1,J1,I1+3) = DD18 + DD1
        END DO
        DD2 = A3(K1+1,J1-1,19) * 2D0
        DD1 = DD2 - A3(K1,J1,19)
        B3(K1,J1,18) = DD1 + DD17
        DD1 = C3(K1,J1,18) * B3(K1+1,J1,18)
        A3(K1,J1,18) = DD18 + DD1
       END DO
      END DO

      K = 21

      WRITE (6, 1000) A1
      WRITE (6, 1000) ((A2(I,J), I=1,15), J=1,15)
      WRITE (6, 1000) (((A3(I,J,K), I=1,10), J=1,10), K=1,10)
 1000 FORMAT(5(F10.5))
      STOP 
      END
