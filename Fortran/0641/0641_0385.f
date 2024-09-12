      PROGRAM MAIN
       INTEGER I10(1000), I11(1000), I12(1000), I13(1000), I14(1000)
       REAL R10(1000), R11(1000), R12(1000), R13(1000), R14(1000)
       DOUBLEPRECISION D10(1000), D11(1000), D12(1000), D13(1000)
       DOUBLEPRECISION D14(1000)
       N = 1000
       CALL INIT (I10,I11,I12,I13,I14,R10,R11,R12,R13,R14,D10,D11,D12,
     X   D13,D14,N)
       CALL SUB1 (I10,I11,I12,I13,I14,R10,R11,R12,R13,R14,D10,D11,D12,
     X   D13,D14,N)
       WRITE (6, *) (I10(I), I=1,1000)
       WRITE (6, *) (R10(J), J=1,1000)
       STOP 
      END

      SUBROUTINE INIT ( I10, I11, I12, I13, I14, R10, R11, R12, R13, R14
     X  , D10, D11, D12, D13, D14, N )
       INTEGER I10(N), I11(N), I12(N), I13(N), I14(N)
       REAL R10(N), R11(N), R12(N), R13(N), R14(N)
       DOUBLEPRECISION D10(N), D11(N), D12(N), D13(N), D14(N)
       SAVE IS3, IS2, IS1
       INTEGER II9, II8, II7, II6, II5, II4, II3, II2, II1
       II2 = N / 4
       II1 = II2 * 4 + 1
C$OMP PARALLEL IF (N .GT. 55) SHARED (N,I11,I12,I13,I14,I10) PRIVATE (
C$OMP& II5,II6,II7,II8,I)
C$OMP DO 
       DO I=1,N-3,4
        II5 = I
        II6 = I + 1
        II7 = I + 2
        II8 = I + 3
        I11(I) = I * 3
        I11(I+1) = I * 3 + 3
        I11(I+2) = I * 3 + 6
        I11(I+3) = I * 3 + 9
        I12(I) = I + 1
        I12(I+1) = I + 2
        I12(I+2) = I + 3
        I12(I+3) = I + 4
        I13(I) = I * 2 + II5 + 2
        I13(I+1) = I * 2 + II6 + 4
        I13(I+2) = I * 2 + II7 + 6
        I13(I+3) = I * 2 + II8 + 8
        I14(I) = 3
        I14(I+1) = 3
        I14(I+2) = 3
        I14(I+3) = 3
        I10(I+3) = II8
        I10(I+2) = II7
        I10(I+1) = II6
        I10(I) = II5
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I=II1,N,1
        II9 = I
        I11(I) = I * 3
        I12(I) = I + 1
        I13(I) = I * 2 + II9 + 2
        I14(I) = 3
        I10(I) = II9
       END DO
       IF (N .GT. 0) IS1 = N
       IF (N .GT. 0) IS2 = N * 3
       IF (N .GT. 0) IS3 = N * 2 + I10(N)
       II4 = N / 4
       II3 = II4 * 4 + 1
C$OMP PARALLEL IF (N .GT. 33) SHARED (N,R10,IS1,IS2,R11,IS3,R12,R13,R14,
C$OMP& D10,D11,D12,D13,D14) PRIVATE (I)
C$OMP DO 
       DO I=1,N-3,4
        R10(I) = IS1 + IS2
        R10(I+1) = IS1 + IS2
        R10(I+2) = IS1 + IS2
        R10(I+3) = IS1 + IS2
        R11(I) = IS3 * 3
        R11(I+1) = IS3 * 3
        R11(I+2) = IS3 * 3
        R11(I+3) = IS3 * 3
        R12(I) = -IS1
        R12(I+1) = -IS1
        R12(I+2) = -IS1
        R12(I+3) = -IS1
        R13(I) = IS2 * 3
        R13(I+1) = IS2 * 3
        R13(I+2) = IS2 * 3
        R13(I+3) = IS2 * 3
        R14(I) = IS1 - IS2
        R14(I+1) = IS1 - IS2
        R14(I+2) = IS1 - IS2
        R14(I+3) = IS1 - IS2
        D10(I) = IS1 + IS2
        D10(I+1) = IS1 + IS2
        D10(I+2) = IS1 + IS2
        D10(I+3) = IS1 + IS2
        D11(I) = IS3 * 3
        D11(I+1) = IS3 * 3
        D11(I+2) = IS3 * 3
        D11(I+3) = IS3 * 3
        D12(I) = -IS1
        D12(I+1) = -IS1
        D12(I+2) = -IS1
        D12(I+3) = -IS1
        D13(I) = IS2 * 3
        D13(I+1) = IS2 * 3
        D13(I+2) = IS2 * 3
        D13(I+3) = IS2 * 3
        D14(I) = IS1 - IS2
        D14(I+1) = IS1 - IS2
        D14(I+2) = IS1 - IS2
        D14(I+3) = IS1 - IS2
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I=II3,N,1
        R10(I) = IS1 + IS2
        R11(I) = IS3 * 3
        R12(I) = -IS1
        R13(I) = IS2 * 3
        R14(I) = IS1 - IS2
        D10(I) = IS1 + IS2
        D11(I) = IS3 * 3
        D12(I) = -IS1
        D13(I) = IS2 * 3
        D14(I) = IS1 - IS2
       END DO
       RETURN 
      END

      SUBROUTINE SUB1 ( I10, I11, I12, I13, I14, R10, R11, R12, R13, R14
     X  , D10, D11, D12, D13, D14, N )
       INTEGER I10(N), I11(N), I12(N), I13(N), I14(N)
       REAL R10(N), R11(N), R12(N), R13(N), R14(N)
       DOUBLEPRECISION D10(N), D11(N), D12(N), D13(N), D14(N)
       RETURN 
      END
