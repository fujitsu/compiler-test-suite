      REAL A2(5,5), B2(5,5), R2(5,5)
      INTEGER IC4(4,4,4,4), IXC6(4,4,4,4,5,5)
      INTEGER IS4(4,4,4,4), IXS6(4,4,4,4,5,5)
      LOGICAL T2(5,5)
      REAL A4(4,4,4,4), B4(4,4,4,4), R4(4,4,4,4)
      LOGICAL T4(4,4,4,4)
      REAL A6(4,4,4,4,5,5), B6(4,4,4,4,5,5), R6(4,4,4,4,5,5)
      LOGICAL T6(4,4,4,4,5,5)
      DOUBLEPRECISION DD1, DD2
      PARAMETER (DD1 = 1D0 / 100D0, DD2 = 1D0 / 100D0)

      DATA A2/25*1.0D0/ 
      DATA B2/25*2.0D0/ 
      DATA T2/5*.TRUE.,10*.FALSE.,5*.TRUE.,5*.FALSE./ 
      DATA A4/256*0.030D-2/ 
      DATA B4/256*0.006D-2/ 
      DATA T4/64*.TRUE.,64*.FALSE.,64*.TRUE.,64*.FALSE./ 
      DATA A6/6400*0.0040D-2/ 
      DATA B6/6400*0.0008D-2/ 
      DATA T6/700*.TRUE.,800*.FALSE.,800*.TRUE.,700*.FALSE.,700*.TRUE.,
     X  800*.FALSE.,800*.TRUE.,700*.FALSE.,100*.TRUE.,100*.FALSE.,100*
     X  .TRUE.,100*.FALSE./ 
      DATA R6/6400*0.001D0/ 
      INTEGER II4, II3, II2, II1

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

      DO N=1,5
       IF (T2(N,1)) THEN
        A2(N,1) = B2(N,1) - 1D0
       ELSE
        B2(N,1) = 1D0 + A2(N,1)
       END IF
       T2(N,1) = .NOT.T2(N,1)
       R2(N,1) = A2(N,1) - B2(N,1)
       IF (T2(N,2)) THEN
        A2(N,2) = B2(N,2) - 1D0
       ELSE
        B2(N,2) = 1D0 + A2(N,2)
       END IF
       T2(N,2) = .NOT.T2(N,2)
       R2(N,2) = A2(N,2) - B2(N,2)
       IF (T2(N,3)) THEN
        A2(N,3) = B2(N,3) - 1D0
       ELSE
        B2(N,3) = 1D0 + A2(N,3)
       END IF
       T2(N,3) = .NOT.T2(N,3)
       R2(N,3) = A2(N,3) - B2(N,3)
      END DO
C$OMP PARALLEL SHARED (T4,T6,A4,B4,A6,B6,R4,R6,IS4,IC4) PRIVATE (II1,II2
C$OMP& ,II3,II4,L,J,K,I,M,N,TT,SN,CS)
C$OMP DO 
      DO L=1,4
       DO J=1,4
        DO K=1,4
         DO I=1,4

          DO M=1,3
           DO N=1,5
            T4(I,J,K,L) = .NOT.T6(I,J,K,L,N,M)
            IF (T4(I,J,K,L)) THEN
             A4(I,J,K,L) = B4(I,J,K,L) / (0.001D-2 + A6(I,J,K,L,N,M))
            ELSE
             B4(I,J,K,L) = B6(I,J,K,L,N,M) / A4(I,J,K,L) + 0.001D-2
            END IF
            R4(I,J,K,L) = A4(I,J,K,L) - B4(I,J,K,L)
            IF (R6(I,J,K,L,N,M) .GT. B4(I,J,K,L)) THEN
             IF (T4(I,J,K,L) .AND. T6(I,J,K,L,N,M)) THEN
              R4(I,J,K,L) = R4(I,J,K,L) / A4(I,J,K,L)
             ELSE
              R4(I,J,K,L) = R6(I,J,K,L,N,M) / A6(I,J,K,L,N,M)
             END IF
            ELSE
             IF (.NOT.T6(I,J,K,L,N,M)) THEN
              T4(I,J,K,L) = .NOT.T4(I,J,K,L)
             ELSE
              T6(I,J,K,L,N,M) = T6(I,J,K,L,N,M) .AND. T4(I,J,K,L)
             END IF
            END IF
            TT = R4(I,J,K,L) * DD1
            SN = SIN (TT)
            CS = 1D0 - SN
            II1 = SN * 100D0
            II2 = CS * 100D0
            IF (SN .GT. CS) THEN
             T6(I,J,K,L,N,M) = .NOT.T6(I,J,K,L,N,M)
            ELSE
             T6(I,J,K,L,N,M) = .NOT.T4(I,J,K,L)
            END IF
           END DO
           II3 = II1
           II4 = II2
          END DO
          IS4(I,J,K,L) = II3
          IC4(I,J,K,L) = II4
         END DO
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      PRINT *, T2, R2, T4, T6, IS4, IC4
      END
