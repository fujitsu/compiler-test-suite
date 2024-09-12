      SUBROUTINE RANU2 ( I, A, N, L )
       REAL A(N)
C$OMP PARALLEL IF (N .GT. 100) SHARED (N,A) PRIVATE (II)
C$OMP DO 
       DO II=1,N
        A(II) = REAL (II) / N
        IF (II .EQ. 1) THEN
         A(II) = 2. / N
        END IF
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      END
    
      REAL*4 A(100), B(1000), C(10000)
      INTEGER*4 L1(100), L2(1000), L3(10000)
      INTEGER*4 N1(100), N2(1000), N3(10000)
      INTEGER IX
      PARAMETER (IX = 0)
      DATA N1/100*0/ 
      DATA N2/1000*0/ 
      DATA N3/10000*0/ 
      INTEGER IC02, IC12, IC22, IC01, IC11, IC21, II1, I1
      REAL RR12, RR11, RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1

      CALL RANU2 (0,A,100,ICON)
      DO I1=1,97,4
       RR4 = A(I1) * 100.
       RR5 = A(I1+1) * 100.
       RR6 = A(I1+2) * 100.
       RR1 = A(I1+3) * 100.
       L1(I1) = ANINT (RR4)
       L1(I1+1) = ANINT (RR5)
       L1(I1+2) = ANINT (RR6)
       L1(I1+3) = ANINT (RR1)
      END DO
      CALL RANU2 (0,B,1000,ICON)
C$OMP PARALLEL SHARED (B,L2) PRIVATE (RR2,RR7,RR8,RR9,I1)
C$OMP DO 
      DO I1=1,997,4
       RR7 = B(I1) * 1000.
       RR8 = B(I1+1) * 1000.
       RR9 = B(I1+2) * 1000.
       RR2 = B(I1+3) * 1000.
       L2(I1) = ANINT (RR7)
       L2(I1+1) = ANINT (RR8)
       L2(I1+2) = ANINT (RR9)
       L2(I1+3) = ANINT (RR2)
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      CALL RANU2 (0,C,10000,ICON)
C$OMP PARALLEL SHARED (C,L3) PRIVATE (RR3,RR10,RR11,RR12,I1)
C$OMP DO 
      DO I1=1,9997,4
       RR10 = C(I1) * 10000.
       RR11 = C(I1+1) * 10000.
       RR12 = C(I1+2) * 10000.
       RR3 = C(I1+3) * 10000.
       L3(I1) = ANINT (RR10)
       L3(I1+1) = ANINT (RR11)
       L3(I1+2) = ANINT (RR12)
       L3(I1+3) = ANINT (RR3)
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      I = 10001
      WRITE (6, *) (L1(I), I=1,64)
      WRITE (6, *) (L2(I), I=1,64)
      WRITE (6, *) (L3(I), I=1,64)

C$OMP PARALLEL SHARED (L1,L2,L3,N1,N2,N3) PRIVATE (I1,II1)
C$OMP DO 
      DO I1=1,100
       IF (MOD (L1(I1), 2) .EQ. 0) THEN
        L1(I1) = L1(I1) - 1
       END IF
       IF (MOD (L2(I1), 2) .EQ. 0) THEN
        L2(I1) = L2(I1) - 1
       END IF
       IF (MOD (L3(I1), 2) .EQ. 0) THEN
        L3(I1) = L3(I1) - 1
       END IF
      END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
      DO II1=0,2
       GO TO (13, 14), II1
       DO I1=1,100
        IF (N1(L1(I1)) .GE. 1) THEN
         N1(L1(I1)) = N1(L1(I1)) + 1
        ELSE
         N1(L1(I1)) = 1
        END IF
       END DO
C$OMP FLUSH
       GO TO 15
   13  DO I1=1,100
        IF (N2(L2(I1)) .GE. 1) THEN
         N2(L2(I1)) = N2(L2(I1)) + 1
        ELSE
         N2(L2(I1)) = 1
        END IF
       END DO
C$OMP FLUSH
       GO TO 15
   14  DO I1=1,100
        IF (N3(L1(I1)) .GE. 1) THEN
         N3(L3(I1)) = N3(L3(I1)) + 1
        ELSE
         N3(L3(I1)) = 1
        END IF
       END DO
C$OMP FLUSH
   15  CONTINUE
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      IC0 = 0
      IC1 = 0
      IC2 = 0
      DO I1=1,100
       IF (N1(I1) .EQ. 0) THEN
        IC0 = IC0 + 1
       END IF
       IF (N1(I1) .EQ. 1) THEN
        IC1 = IC1 + 1
       END IF
       IF (N1(I1) .GT. 1) THEN
        IC2 = IC2 + 1
       END IF
      END DO
      WRITE (6, *) ' RAN=100   IC0=', IC0
      WRITE (6, *) '           IC1=', IC1
      WRITE (6, *) '           IC2=', IC2
      IC0 = 0
      IC1 = 0
      IC2 = 0
C$OMP PARALLEL SHARED (N2,IC2,IC1,IC0) PRIVATE (I1,IC21,IC11,IC01)
      IC21 = 0
      IC11 = 0
      IC01 = 0
C$OMP DO 
      DO I1=1,1000
       IF (N2(I1) .EQ. 0) THEN
        IC01 = IC01 + 1
       END IF
       IF (N2(I1) .EQ. 1) THEN
        IC11 = IC11 + 1
       END IF
       IF (N2(I1) .GT. 1) THEN
        IC21 = IC21 + 1
       END IF
      END DO
C$OMP END DO NOWAIT
C$OMP CRITICAL (II2)
      IC2 = IC2 + IC21
      IC1 = IC1 + IC11
      IC0 = IC0 + IC01
C$OMP END CRITICAL (II2)
C$OMP END PARALLEL 
      WRITE (6, *) ' RAN=1000  IC0=', IC0
      WRITE (6, *) '           IC1=', IC1
      WRITE (6, *) '           IC2=', IC2
      IC0 = 0
      IC1 = 0
      IC2 = 0
C$OMP PARALLEL SHARED (N3,IC2,IC1,IC0) PRIVATE (I1,IC22,IC12,IC02)
      IC22 = 0
      IC12 = 0
      IC02 = 0
C$OMP DO 
      DO I1=1,10000
       IF (N3(I1) .EQ. 0) THEN
        IC02 = IC02 + 1
       END IF
       IF (N3(I1) .EQ. 1) THEN
        IC12 = IC12 + 1
       END IF
       IF (N3(I1) .GT. 1) THEN
        IC22 = IC22 + 1
       END IF
      END DO
C$OMP END DO NOWAIT
C$OMP CRITICAL (II3)
      IC2 = IC2 + IC22
      IC1 = IC1 + IC12
      IC0 = IC0 + IC02
C$OMP END CRITICAL (II3)
C$OMP END PARALLEL 
      WRITE (6, *) ' RAN=10000 IC0=', IC0
      WRITE (6, *) '           IC1=', IC1
      WRITE (6, *) '           IC2=', IC2
      STOP 
      END
