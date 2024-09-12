      PROGRAM MAIN
                                                                        
       REAL AA(500), BB(2000)
       INTEGER N, J
       LOGICAL LOGI(500)
       INTEGER I1
       J = 0
       N = 500
       DATA LOGI/500*.TRUE./ 
       DATA AA/500*3/ 
       DATA BB/2000*3/ 
       CALL SETD (N,AA,BB)
                                                     
       DO I1=2,500
        BB(I1) = BB(I1-1)
        IF (LOGI(I1)) THEN
         J = J + 3
         AA(I1) = J
         BB(J) = I1
        END IF
       END DO
       I = 501
       WRITE (6, 100) (AA(I), I=1,N), (BB(I), I=1,N)
  100  FORMAT(1H ,/,'--------- OTHER ----------',/,(6(F10.3,2X),/))
      END

      SUBROUTINE SETD ( M, X, Y )
       INTEGER M
       REAL*4 X(M), Y(M)
       INTEGER II5, II4, II3, II2, II1
       X(1) = 20.
       Y(1) = 5.
C$OMP PARALLEL SHARED (M,X,Y) PRIVATE (II3,II2,II5,II4,II1,I)
C$OMP DO 
       DO II1=0,1
        GO TO (6), II1
        II3 = (M - 1) / 4
        II2 = II3 * 4 + 2
        DO I=2,M-3,4
         X(I) = X(I-1) + 0.33339
         X(I+1) = X(I) + 0.33339
         X(I+2) = X(I+1) + 0.33339
         X(I+3) = X(I+2) + 0.33339
        END DO
        DO I=II2,M,1
         X(I) = X(I-1) + 0.33339
        END DO
C$OMP FLUSH
        GO TO 7
    6   II5 = (M - 1) / 4
        II4 = II5 * 4 + 2
        DO I=2,M-3,4
         Y(I) = 100 + Y(I-1)
         Y(I+1) = 100 + Y(I)
         Y(I+2) = 100 + Y(I+1)
         Y(I+3) = 100 + Y(I+2)
        END DO
        DO I=II4,M,1
         Y(I) = 100 + Y(I-1)
        END DO
C$OMP FLUSH
    7   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      END
