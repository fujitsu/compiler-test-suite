      PROGRAM MAIN
       DIMENSION SOL(144), SOLO2(22), SOLO3(144), SOLH2O(14), SOLN2O(37)
     X   , ABO2(144), ABO3(144), ABH2O(144), ABN2O(144), ABN2O5(144)

C$OMP PARALLEL SHARED (SOL,ABO2) PRIVATE (I)
C$OMP DO 
       DO I=1,141,4
        SOL(I) = FLOAT (I)
        SOL(I+1) = FLOAT (I + 1)
        SOL(I+2) = FLOAT (I + 2)
        SOL(I+3) = FLOAT (I + 3)
        ABO2(I) = I - 1
        ABO2(I+1) = I
        ABO2(I+2) = I + 1
        ABO2(I+3) = I + 2
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       DO M=1,144
        IF (M .LE. 22) THEN
         SOLO2(M) = SOL(M) * ABO2(M)
        END IF
       END DO

       WRITE (6, *) SOLO2
       STOP 
      END
