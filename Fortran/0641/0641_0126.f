      PROGRAM MAIN

       REAL R10(500), R11(500)
       REAL*8 D10(500)
       INTEGER I10(500), LIST(500)
       LOGICAL L10(500)
       INTEGER II1

       DO II1=1,497,4
        L10(II1) = .FALSE.
        L10(II1+1) = .FALSE.
        L10(II1+2) = .FALSE.
        L10(II1+3) = .FALSE.
       END DO
       K = 0

       N = 500
       CALL INIT (N,L10,I10,R10,R11,D10,LIST)
       CALL SUB1 (N,L10,I10,R10,R11,D10,LIST)

       CALL SUB2 (N,L10,I10,R10,R11,D10,LIST)

       CALL SUB3 (N,L10,I10,R10,R11,D10,LIST)
       WRITE (6, *) ' L10 = ', L10
       WRITE (6, *) ' I10 = ', (I10(K), K=100,200)
       WRITE (6, *) ' R10 = ', (R10(K), K=300,400)
       WRITE (6, *) ' R11 = ', (R10(K), K=150,250)
       WRITE (6, *) ' D10 = ', (D10(K), K=400,500)
       STOP 
      END
    
      SUBROUTINE INIT ( N, L10, I10, R10, R11, D10, LIST )
       LOGICAL L10(N)
       INTEGER I10(N), LIST(N)
       REAL R10(N), R11(N)
       REAL*8 D10(N)
       INTEGER II3, II2, II1

       I1 = 0
       I2 = 1

       II1 = N / 2
       II3 = N / 8
       II2 = II3 * 4 + 1
C$OMP PARALLEL IF (N .GT. 1000) SHARED (N,L10) PRIVATE (I)
C$OMP DO 
       DO I=1,N/2-3,4
        L10(I) = .TRUE.
        L10(I+1) = .TRUE.
        L10(I+2) = .TRUE.
        L10(I+3) = .TRUE.
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I=II2,N/2,1
        L10(I) = .TRUE.
       END DO

       DO I=1,II1
        LIST(I) = I
        LIST(I+II1) = I + II1
        IF (L10(I)) THEN
         I1 = I1 + 2
         I10(I1) = I
         R10(I1) = FLOAT (I)
         D10(I1) = DFLOAT (I)
         I10(I2) = -I
         R10(I2) = FLOAT (-I)
         R11(I2) = I
         D10(I2) = DFLOAT (-I)
         L10(I) = 0 .EQ. MOD (I, 2)
         I2 = I2 + 2
        END IF
       END DO

       RETURN 
      END
    
      SUBROUTINE SUB1 ( N, L10, I10, R10, R11, D10, LIST )
       LOGICAL L10(N), LRC
       INTEGER I10(N), LIST(N)
       REAL R10(N), R11(N)
       REAL*8 D10(N)
       INTEGER M, ICON
       PARAMETER (M = 250, ICON = 1)
       SAVE K
       DATA LRC/.TRUE./ 

       J = 0
       L = 1

       DO I=1,N
        IF (I .GT. 250) THEN
         D10(L) = R10(I)
         L = L + 1
         J = J + 1
         I10(I) = R10(J) * I
        END IF
       END DO

       WRITE (6, *) ' S1 = ', 0.
       RETURN 
      END
    
      SUBROUTINE SUB2 ( N, L10, I10, R10, R11, D10, LIST )
       LOGICAL L10(N), LRC, LMT0, LMT1, LMT
       INTEGER I10(N), LIST(N)
       REAL R10(N), R11(N)
       REAL*8 D10(N)
       INTEGER ICON1, ICON
       PARAMETER (ICON1 = -1, ICON = 1)
       SAVE IJ
       DATA LRC/.TRUE./ 
       INTEGER II2, II1

       J = 0
       K = 0
       S1 = 0.

       II2 = N / 4
       II1 = II2 * 4 + 1
C$OMP PARALLEL IF (N .GT. 250) SHARED (N,D10,R10) PRIVATE (I)
C$OMP DO 
       DO I=1,N-3,4
        D10(I) = R10(I) + I
        D10(I+1) = 1 + R10(I+1) + I
        D10(I+2) = 2 + R10(I+2) + I
        D10(I+3) = 3 + R10(I+3) + I
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I=II1,N,1
        D10(I-II1+II2*4+1) = R10(I) + I
       END DO

       DO I=1,N
        IF (R10(I) .GT. 1. .AND. .NOT.L10(I) .OR. L10(I)) THEN
         J = J + 1
         I10(I) = R10(J) - I
        ELSE
         K = K + 1
         R11(I) = FLOAT (K)
         S1 = S1 + R11(I)
        END IF
       END DO

       WRITE (6, *) ' S1 = ', S1
       RETURN 
      END
    
      SUBROUTINE SUB3 ( N, L10, I10, R10, R11, D10, LIST )
       LOGICAL L10(N), LRC
       INTEGER I10(N), LIST(N)
       REAL R10(N), R11(N)
       REAL*8 D10(N)
       INTEGER ICON
       PARAMETER (ICON = 1)
       DATA LRC/.TRUE./ 

       J = 0
       L = 1
       DO I=1,N
        IF (L10(I)) THEN
         D10(L) = R10(I)
         L = L + 1
         J = J + 1
         I10(I) = R10(J) * I
        END IF
       END DO

       WRITE (6, *) ' S1 = ', 0.
       WRITE (6, *) ' K  = ', 0
       WRITE (6, *) ' J  = ', J
       WRITE (6, *) ' L  = ', L
       RETURN 
      END
