      REAL A(1:10,1:10), B(10,1:10)
      DATA A/100*1.0/ 
      DATA B/100*2.0/ 
      CALL SUB (A,B,0,1,10,(-1))
      END

      SUBROUTINE SUB ( A, B, N1, N2, N3, N4 )
       DIMENSION A(N1+N2:N1+10,N4+2:N3), B(N1+N2:N1+10,N4+2:N3)
       INTEGER IS
       PARAMETER (IS = 0)
       INTEGER II2, II1
       REAL RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
       II2 = (11 - (N1 + N2)) / 4
       II1 = N1 + N2 + II2 * 4
C$OMP PARALLEL IF (N3 .GT. N4 + 31) SHARED (N4,N3,N1,N2,B,A,II1) 
C$OMP& PRIVATE (RR1,RR2,RR3,RR4,RR5,RR6,RR7,RR8,RR9,J,I)
C$OMP DO 
       DO J=N4+2,N3

        DO I=N1+N2,7,4
         RR2 = B(I,J) * 2.
         RR3 = B(I+1,J) * 2.
         RR4 = B(I+2,J) * 2.
         RR1 = B(I+3,J) * 2.
         RR5 = A(I,J) + RR2
         RR6 = A(I+1,J) + RR3
         RR7 = A(I+2,J) + RR4
         RR8 = A(I+3,J) + RR1
         A(I+3,J) = RR8
         A(I+2,J) = RR7
         A(I+1,J) = RR6
         A(I,J) = RR5
        END DO
        DO I=II1,10,1
         RR1 = B(I,J) * 2.
         RR9 = A(I,J) + RR1
         A(I,J) = RR9
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       PRINT *, 'NO.1 ', A
C$OMP PARALLEL IF (N3 .GT. N4 + 31) SHARED (N4,N3,N1,N2,A,B) PRIVATE (J,
C$OMP& I)
C$OMP DO 
       DO J=N4+2,N3

        DO I=N1+N2,10
         IF (I .EQ. J) THEN
          A(I,J) = A(I,J) + B(I,J) * 2.
         END IF
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       PRINT *, 'NO.2 ', A
       RETURN 
      END
