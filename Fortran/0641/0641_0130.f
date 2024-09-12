      PROGRAM MAIN
       REAL*8 D1(11), D2(11), D3(11)
       REAL*4 E1(11), E2(11), E3(11), ES1
       INTEGER N1(10), J
       DATA N1/10*0/ 
       LOGICAL L1(10)
       DOUBLEPRECISION DD1, DD2
       PARAMETER (DD1 = 1D0 / 2., DD2 = 1D0 / 2.)
       J = 2
       ES1 = -1.
       DATA L1/10*.FALSE./ 
       DATA D1/11*3.5/ 
       DATA E2/11*3.5/ 
       DATA D3/11*3.5/ 
       DATA E1/11*-1./ 
       DATA D2/11*-1./ 
       DATA E3/11*-1./ 

       DO I=1,10
        IF (MOD (I, 2) .NE. 0) THEN
         D1(I) = 1.5 + D2(I) * E1(I)
         D2(I+1) = E2(I) / E1(I)
         ES1 = MAX (D2(I+1) * D2(I+1), REAL (ES1, KIND = 8), D1(I))
         IF (MOD (I, 2) .EQ. 1) THEN
          J = J + 1
          N1(I) = J
          D3(I) = D1(I) * DD1 - J
          E3(I) = I - 3
         END IF
        END IF
       END DO

       WRITE (6, *) D1, D2, D3, N1
       WRITE (6, *) ES1, E3, J

       DO I=1,10
        IF (MOD (I, 2) .NE. 0) THEN
         ES1 = MIN (D2(I), ES1, D1(I))
         D1(I) = 1.5 + D2(I) * E1(I)
         D2(I+1) = E2(I) / E1(I)
         IF (MOD (I, 2) .EQ. 1) THEN
          J = J - 1
          N1(J) = J
          D3(J) = D1(I) * DD2
          E3(I) = I - 3
         END IF
        END IF
       END DO

       WRITE (6, *) D1, D2, D3, N1
       WRITE (6, *) ES1, E3, J, L1
       STOP 
      END
