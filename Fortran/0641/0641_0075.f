      REAL*8 A1(20), B1(20), C1(20)
      REAL*8 A2(20,20), B2(20,20), C2(20,20)
      REAL*8 A3(20,20,20), B3(20,20,20), C3(20,20,20)
      INTEGER*4 L(20)
      INTEGER NN, N3, N2, N1
      PARAMETER (NN = 16, N3 = 3, N2 = 2, N1 = 1)
      DATA A1/20*1.D0/ 
      DATA B1/20*2.D0/ 
      DATA C1/20*3.D0/ 
      DATA A2/400*2.1D0/ 
      DATA B2/400*1.2D0/ 
      DATA C2/400*4.D0/ 
      DATA A3/8000*0.2D0/ 
      DATA B3/8000*0.1D0/ 
      DATA C3/8000*0.3D0/ 
      INTEGER II2, II1, J1, K1, I1
      DOUBLE PRECISION DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, 
     X  DD2, DD1
      DO I1=1,17,4
       L(I1) = 21 - I1
       L(I1+1) = 20 - I1
       L(I1+2) = 19 - I1
       L(I1+3) = 18 - I1
      END DO

      DO K1=2,16
       A1(K1) = B1(K1) + C1(K1)
       DO J1=2,13,4
        DO I1=2,12,5
         DD4 = B3(I1,J1,K1) * 2D0
         DD5 = B3(I1+1,J1,K1) * 2D0
         DD6 = B3(I1+2,J1,K1) * 2D0
         DD7 = B3(I1+3,J1,K1) * 2D0
         DD2 = B3(I1+4,J1,K1) * 2D0
         C3(I1,J1,K1) = DD4 - A3(I1,J1+1,K1-1)
         C3(I1+1,J1,K1) = DD5 - A3(I1+1,J1+1,K1-1)
         C3(I1+2,J1,K1) = DD6 - A3(I1+2,J1+1,K1-1)
         C3(I1+3,J1,K1) = DD7 - A3(I1+3,J1+1,K1-1)
         C3(I1+4,J1,K1) = DD2 - A3(I1+4,J1+1,K1-1)
         DD4 = B3(I1,J1+1,K1) * 2D0
         DD5 = B3(I1+1,J1+1,K1) * 2D0
         DD6 = B3(I1+2,J1+1,K1) * 2D0
         DD7 = B3(I1+3,J1+1,K1) * 2D0
         DD2 = B3(I1+4,J1+1,K1) * 2D0
         C3(I1,J1+1,K1) = DD4 - A3(I1,J1+2,K1-1)
         C3(I1+1,J1+1,K1) = DD5 - A3(I1+1,J1+2,K1-1)
         C3(I1+2,J1+1,K1) = DD6 - A3(I1+2,J1+2,K1-1)
         C3(I1+3,J1+1,K1) = DD7 - A3(I1+3,J1+2,K1-1)
         C3(I1+4,J1+1,K1) = DD2 - A3(I1+4,J1+2,K1-1)
         DD4 = B3(I1,J1+2,K1) * 2D0
         DD5 = B3(I1+1,J1+2,K1) * 2D0
         DD6 = B3(I1+2,J1+2,K1) * 2D0
         DD7 = B3(I1+3,J1+2,K1) * 2D0
         DD2 = B3(I1+4,J1+2,K1) * 2D0
         C3(I1,J1+2,K1) = DD4 - A3(I1,J1+3,K1-1)
         C3(I1+1,J1+2,K1) = DD5 - A3(I1+1,J1+3,K1-1)
         C3(I1+2,J1+2,K1) = DD6 - A3(I1+2,J1+3,K1-1)
         C3(I1+3,J1+2,K1) = DD7 - A3(I1+3,J1+3,K1-1)
         C3(I1+4,J1+2,K1) = DD2 - A3(I1+4,J1+3,K1-1)
         DD4 = B3(I1,J1+3,K1) * 2D0
         DD5 = B3(I1+1,J1+3,K1) * 2D0
         DD6 = B3(I1+2,J1+3,K1) * 2D0
         DD7 = B3(I1+3,J1+3,K1) * 2D0
         DD2 = B3(I1+4,J1+3,K1) * 2D0
         C3(I1,J1+3,K1) = DD4 - A3(I1,J1+4,K1-1)
         C3(I1+1,J1+3,K1) = DD5 - A3(I1+1,J1+4,K1-1)
         C3(I1+2,J1+3,K1) = DD6 - A3(I1+2,J1+4,K1-1)
         C3(I1+3,J1+3,K1) = DD7 - A3(I1+3,J1+4,K1-1)
         C3(I1+4,J1+3,K1) = DD2 - A3(I1+4,J1+4,K1-1)
        END DO
       END DO
       DO J1=14,16,1
        DO I1=2,12,5
         DD8 = B3(I1,J1,K1) * 2D0
         DD9 = B3(I1+1,J1,K1) * 2D0
         DD10 = B3(I1+2,J1,K1) * 2D0
         DD11 = B3(I1+3,J1,K1) * 2D0
         DD3 = B3(I1+4,J1,K1) * 2D0
         C3(I1,J1,K1) = DD8 - A3(I1,J1+1,K1-1)
         C3(I1+1,J1,K1) = DD9 - A3(I1+1,J1+1,K1-1)
         C3(I1+2,J1,K1) = DD10 - A3(I1+2,J1+1,K1-1)
         C3(I1+3,J1,K1) = DD11 - A3(I1+3,J1+1,K1-1)
         C3(I1+4,J1,K1) = DD3 - A3(I1+4,J1+1,K1-1)
        END DO
       END DO
       II2 = L(K1)
       II1 = L(K1)
       DO J1=2,16
        A2(K1,J1) = B2(K1,J1-1) + A1(L(J1))
        DD1 = A2(K1,J1-1)
        DO I1=2,12,5
         A3(L(I1),J1,K1) = DD1 + C3(I1,J1,II1) * B3(I1,J1,K1)
         A3(L(I1+1),J1,K1) = DD1 + C3(I1+1,J1,II1) * B3(I1+1,J1,K1)
         A3(L(I1+2),J1,K1) = DD1 + C3(I1+2,J1,II1) * B3(I1+2,J1,K1)
         A3(L(I1+3),J1,K1) = DD1 + C3(I1+3,J1,II1) * B3(I1+3,J1,K1)
         A3(L(I1+4),J1,K1) = DD1 + C3(I1+4,J1,II1) * B3(I1+4,J1,K1)
        END DO
        B2(K1,J1) = A3(J1,J1-1,K1) - C2(II2,L(J1))
       END DO
      END DO

      K = 17

      WRITE (6, 99) ' A1= ', A1
      WRITE (6, 99) ' A2= ', ((A2(I,J), I=1,15), J=1,15)
      WRITE (6, 99) ' A3= ', (((A3(I,J,K), I=1,10), J=1,10), K=1,10)
   99 FORMAT(A,(5D14.7))
      STOP 
      END
