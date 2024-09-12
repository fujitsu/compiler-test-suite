      REAL*4 A(40,40), B(40,40), C(40,40)
      INTEGER NN, N3, N2, N1
      PARAMETER (NN = 20, N3 = 3, N2 = 2, N1 = 1)
      DATA A/1600*1./ 
      DATA B/1600*2./ 
      DATA C/1600*3./ 
      INTEGER II4, II3, II2, II1

      DO I=1,20
       II2 = (I + 4) / 4
       II1 = II2 * 4 + 1
       DO J=1,I+1,4
        A(J+2,I+3) = B(J+2,I+4) + C(J,I)
        A(J+3,I+3) = B(J+3,I+4) + C(J+1,I)
        A(J+4,I+3) = B(J+4,I+4) + C(J+2,I)
        A(J+5,I+3) = B(J+5,I+4) + C(J+3,I)
       END DO
       DO J=II1,I+4,1
        A(J+2,I+3) = B(J+2,I+4) + C(J,I)
       END DO
      END DO

      DO I=1,20
       II4 = (I + 4) / 4
       II3 = II4 * 4 + 1
       DO J=1,I+1,4
        B(J+3,I+2) = A(J+1,I+1) + C(J,I)
        B(J+4,I+2) = A(J+2,I+1) + C(J+1,I)
        B(J+5,I+2) = A(J+3,I+1) + C(J+2,I)
        B(J+6,I+2) = A(J+4,I+1) + C(J+3,I)
       END DO
       DO J=II3,I+4,1
        B(J+3,I+2) = A(J+1,I+1) + C(J,I)
       END DO
      END DO

      WRITE (6, *) A
      WRITE (6, *) B
      STOP 
      END
