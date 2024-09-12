      REAL A2(5,5), B2(5,5), R2(5,5)
      REAL A4(4,4,4,4), B4(4,4,4,4), R4(4,4,4,4)
      REAL R6(4,4,4,4,5,5)
      LOGICAL T2(5,5)
      LOGICAL T4(4,4,4,4)
      LOGICAL T6(4,4,4,4,5,5)

      DATA A2/25*1.0D0/ 
      DATA B2/25*2.0D0/ 
      DATA A4/256*0.030D-2/ 
      DATA B4/256*0.006D-2/ 
      DATA R6/6400*0.0040D-2/ 
      DATA T2/5*.TRUE.,10*.FALSE.,5*.TRUE.,5*.FALSE./ 
      DATA T4/64*.TRUE.,64*.FALSE.,64*.TRUE.,64*.FALSE./ 
      DATA T6/700*.TRUE.,800*.FALSE.,800*.TRUE.,700*.FALSE.,700*.TRUE.,
     X  800*.FALSE.,800*.TRUE.,700*.FALSE.,100*.TRUE.,100*.FALSE.,100*
     X  .TRUE.,100*.FALSE./ 

      R2(1,1) = 0.
      R2(2,1) = 0.
      R2(3,1) = 0.
      R2(4,1) = 0.
      R2(5,1) = 0.
      R2(1,2) = 0.
      R2(2,2) = 0.
      R2(3,2) = 0.
      R2(4,2) = 0.
      R2(5,2) = 0.
      R2(1,3) = 0.
      R2(2,3) = 0.
      R2(3,3) = 0.
      R2(4,3) = 0.
      R2(5,3) = 0.
      R2(1,4) = 0.
      R2(2,4) = 0.
      R2(3,4) = 0.
      R2(4,4) = 0.
      R2(5,4) = 0.
      R2(1,5) = 0.
      R2(2,5) = 0.
      R2(3,5) = 0.
      R2(4,5) = 0.
      R2(5,5) = 0.

      A2(1,1) = 0.01
      A2(2,1) = 0.01 * 2
      A2(3,1) = 0.01 * 3
      A2(4,1) = 0.01 * 4
      A2(5,1) = 0.01 * 5
      A2(1,2) = 0.01
      A2(2,2) = 0.01 * 2
      A2(3,2) = 0.01 * 3
      A2(4,2) = 0.01 * 4
      A2(5,2) = 0.01 * 5
      A2(1,3) = 0.01
      A2(2,3) = 0.01 * 2
      A2(3,3) = 0.01 * 3
      A2(4,3) = 0.01 * 4
      A2(5,3) = 0.01 * 5
      DO N=1,5
       IF (T2(N,1)) THEN
        A2(N,1) = B2(N,1) - 1D0
        T2(N,1) = .NOT.T2(N,1)
       ELSE
        B2(N,1) = 1D0 + A2(N,1)
       END IF
       R2(N,1) = A2(N,1) - B2(N,1)
       IF (T2(N,2)) THEN
        A2(N,2) = B2(N,2) - 1D0
        T2(N,2) = .NOT.T2(N,2)
       ELSE
        B2(N,2) = 1D0 + A2(N,2)
       END IF
       R2(N,2) = A2(N,2) - B2(N,2)
       IF (T2(N,3)) THEN
        A2(N,3) = B2(N,3) - 1D0
        T2(N,3) = .NOT.T2(N,3)
       ELSE
        B2(N,3) = 1D0 + A2(N,3)
       END IF
       R2(N,3) = A2(N,3) - B2(N,3)
      END DO
C$OMP PARALLEL SHARED (T4,T6,A4,B4,R4,R6) PRIVATE (L,J,K,I,M,N,SN,CS)
C$OMP DO 
      DO L=1,4
       DO J=1,4
        DO K=1,4
         DO I=1,4

          DO M=1,3
           DO N=1,5
            T4(I,J,K,L) = .NOT.T6(I,J,K,L,N,M)
            IF (T4(I,J,K,L)) THEN
             A4(I,J,K,L) = -B4(I,J,K,L)
            ELSE
             B4(I,J,K,L) = -A4(I,J,K,L)
            END IF
            R4(I,J,K,L) = A4(I,J,K,L) - B4(I,J,K,L)
            IF (R6(I,J,K,L,N,M) .GT. B4(I,J,K,L)) THEN
             R4(I,J,K,L) = -R6(I,J,K,L,N,M)
            ELSE
             IF (.NOT.T6(I,J,K,L,N,M)) THEN
              T4(I,J,K,L) = .NOT.T4(I,J,K,L)
              SN = 0.001D0
              GO TO 3
             END IF
             T6(I,J,K,L,N,M) = T6(I,J,K,L,N,M) .AND. T4(I,J,K,L)
            END IF
            SN = SIN (R4(I,J,K,L))
    3       CS = 1D0 - SN
            IF (SN .GT. CS) THEN
             T6(I,J,K,L,N,M) = .NOT.T6(I,J,K,L,N,M)
            ELSE
             T6(I,J,K,L,N,M) = .NOT.T4(I,J,K,L)
            END IF
           END DO
          END DO
         END DO
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      PRINT *, T2, R2, T4, T6
      END
