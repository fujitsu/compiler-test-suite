      PROGRAM MAIN
       PARAMETER (N = 30)
       REAL*8 O(30,30), P(30,1), T(30,30), Q(3,30), S(30), R(30), U(30)
       REAL*4 A(30,30), F(30,30), B(30,1), E(30)
       COMMON /CV6764K/ U, R, S, Q, T, P, RR1, O, E, B, RR2, F, A
       REAL RR2 (86), RR1 (86)

       CALL INTDT (A,B,E,F,O,P,Q,S,T,R,U,30)
       CALL VANDS1 (F,T,A,B,E,Q,O,S,P,R,U,30)
       CALL WRI (F,T,A,B,E,Q,O,S,P,R,30)

       CALL INTDT (A,B,E,F,O,P,Q,S,T,R,U,30)
       CALL VANDS2 (F,T,A,B,E,Q,O,S,P,R,U,30)
       CALL WRI (F,T,A,B,E,Q,O,S,P,R,30)

       CALL INTDT (A,B,E,F,O,P,Q,S,T,R,U,30)
       CALL VANDS3 (F,T,A,B,E,Q,O,S,P,R,U,30)
       CALL WRI (F,T,A,B,E,Q,O,S,P,R,30)

       CALL INTDT (A,B,E,F,O,P,Q,S,T,R,U,30)
       CALL ALLS (F,T,A,B,E,Q,O,S,P,R,30)
       CALL WRI (F,T,A,B,E,Q,O,S,P,R,30)
      END

      SUBROUTINE INTDT ( A, B, E, F, O, P, Q, S, T, R, U, N )
       REAL*8 O(N,N), P(N,1), T(N,N), Q(3,N), S(N), R(N), U(N)
       REAL*4 A(N,N), F(N,N), B(N,1), E(N)
       INTEGER II4, II3, II2, II1
       II2 = N / 4
       II1 = II2 * 4 + 1
       II4 = N / 4
       II3 = II4 * 4 + 1
C$OMP PARALLEL IF (N .GT. 22) SHARED (N,O,T,A,F,II1,P,B,E,R,U,S) 
C$OMP& PRIVATE (I,J)
C$OMP DO 
       DO I=1,N
        DO J=1,N-3,4
         O(J,I) = J
         O(J+1,I) = J + 1
         O(J+2,I) = J + 2
         O(J+3,I) = J + 3
         T(J,I) = J
         T(J+1,I) = J + 1
         T(J+2,I) = J + 2
         T(J+3,I) = J + 3
         A(J,I) = J
         A(J+1,I) = J + 1
         A(J+2,I) = J + 2
         A(J+3,I) = J + 3
         F(J,I) = J
         F(J+1,I) = J + 1
         F(J+2,I) = J + 2
         F(J+3,I) = J + 3
        END DO
        DO J=II1,N,1
         O(J,I) = J
         T(J,I) = J
         A(J,I) = J
         F(J,I) = J
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO I=1,N-3,4
        P(I,1) = I * 0.0625
        P(I+1,1) = (I + 1) * 0.0625
        P(I+2,1) = (I + 2) * 0.0625
        P(I+3,1) = (I + 3) * 0.0625
        B(I,1) = I * 0.0625
        B(I+1,1) = (I + 1) * 0.0625
        B(I+2,1) = (I + 2) * 0.0625
        B(I+3,1) = (I + 3) * 0.0625
        E(I) = I
        E(I+1) = I + 1
        E(I+2) = I + 2
        E(I+3) = I + 3
        R(I) = I
        R(I+1) = I + 1
        R(I+2) = I + 2
        R(I+3) = I + 3
        U(I) = I
        U(I+1) = I + 1
        U(I+2) = I + 2
        U(I+3) = I + 3
        S(I) = I
        S(I+1) = I + 1
        S(I+2) = I + 2
        S(I+3) = I + 3
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I=II3,N,1
        P(I,1) = I * 0.0625
        B(I,1) = I * 0.0625
        E(I) = I
        R(I) = I
        U(I) = I
        S(I) = I
       END DO
C$OMP PARALLEL IF (N .GT. 250) SHARED (N,Q) PRIVATE (I)
C$OMP DO 
       DO I=1,N
        Q(1,I) = 1D0
        Q(2,I) = 2D0
        Q(3,I) = 3D0
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      END

      SUBROUTINE VANDS1 ( F, T, A, B, E, Q, O, S, P, R, U, N )
       REAL*8 O(N,N), P(N,1), T(N,N), Q(3,N), R(N), S(N), U(N), AMAX, 
     X   TMAX, OC, OK
       REAL*4 A(N,N), F(N,N), B(N,1), C(1,30), D(30), E(N), AC, AK
       INTEGER AMIDX, TMIDX, UMIDX
       AMAX = 0D0
       TMAX = 0D0
       AMIDX = 1
       TMIDX = 1
       UMIDX = 1
       OC = 0.12121

       DO I=2,N-2
        D(I) = AMOD (F(I,I), A(I,1))
        O(I,1) = DINT (T(I,I))
        A(N,I) = D(I) + A(N,I-1) * 0.12121
        B(I,1) = ANINT (F(I,1))
        IF (AMAX .LE. Q(1,I)) THEN
         AMAX = Q(1,I)
         AMIDX = I
        END IF
        P(I,1) = DNINT (T(I,1))
        C(1,I) = AMOD (F(I,I), 30.)
        S(I) = DMOD (O(I,I), T(I,3))
        IF (.TRUE.) GO TO 19
   20   IF (U(UMIDX) .LT. U(I)) UMIDX = I
        E(I) = AMOD (A(I,3), F(I,3))
        Q(1,I) = DMOD (T(I,I), 30D0)
        A(I,1) = AINT (F(I,I))
        R(I) = DMOD (T(I,3), O(I,I))
        F(N,I) = F(N-I,I) + F(N,I-1) * B(I,1)
        S(I) = S(I) + S(I-1) * B(I,1)
        T(N,I) = R(I) + T(N,I-1) * OC
       END DO
       GO TO 199
   19  IF (TMAX .LT. T(I,1)) THEN
        TMAX = T(I,1)
        TMIDX = I
       END IF
       GO TO 20
  199  CONTINUE
       WRITE (6, *) '  UMIDX'
       WRITE (6, 1002) UMIDX
       WRITE (6, *) '  TMAX'
       WRITE (6, 1003) TMAX
       WRITE (6, *) '  TMIDX'
       WRITE (6, 1002) TMIDX
       WRITE (6, *) '  AMAX'
       WRITE (6, 1003) AMAX
       WRITE (6, *) '  AMIDX'
       WRITE (6, 1002) AMIDX
 1002  FORMAT(5(1X,I10))
 1003  FORMAT(5(1X,F10.5))
      END

      SUBROUTINE VANDS2 ( F, T, A, B, E, Q, O, S, P, R, U, N )
       REAL*8 O(N,N), P(N,1), T(N,N), Q(3,N), R(N), S(N), U(N), AMAX, 
     X   TMAX, OC, OK
       REAL*4 A(N,N), F(N,N), B(N,1), C(1,30), D(30), E(N), AC, AK
       INTEGER AMIDX, TMIDX, UMIDX
       SAVE IMIDX
       AMAX = 0D0
       TMAX = 0D0
       AMIDX = 1
       TMIDX = 1
       UMIDX = 1
       OC = 0.12121
       K = 1

       DO I=2,N-2
        D(I) = AMOD (F(I,I), A(I,1))
        O(K,1) = DINT (T(I,I))
        K = K + 1
        A(N,I) = D(I) + A(N,I-1) * 0.12121
        F(N,I) = F(N-I,I) + F(N-I,I-1) * B(I,1)
        B(I,1) = ANINT (F(I,1))
        IF (AMAX .LE. Q(1,I)) THEN
         AMAX = Q(1,I)
         AMIDX = I
        END IF
        P(I,1) = DNINT (T(I,1))
        C(1,I) = AMOD (F(I,I), 30.)
        IF (.TRUE.) GO TO 19
        IF (U(UMIDX) .LT. U(I)) UMIDX = I
        E(I) = AMOD (A(IMIDX,3), F(IMIDX,3))
        Q(1,I) = DMOD (T(IMIDX,I), 30D0)
        S(I) = DMOD (O(I,K), T(I,3))
        A(I,1) = AINT (F(IMIDX,I))
   20   R(I) = DMOD (T(I,3), O(K,K))
        S(I) = S(I) + S(I-1) * B(I,1)
        T(N,I) = R(I) + T(N,I-1) * OC
       END DO
       GO TO 199
   19  IF (TMAX .LT. T(I,1)) THEN
        TMAX = T(I,1)
        TMIDX = I
       END IF
       GO TO 20
  199  CONTINUE
       WRITE (6, *) '  UMIDX'
       WRITE (6, 1002) UMIDX
       WRITE (6, *) '  TMAX'
       WRITE (6, 1003) TMAX
       WRITE (6, *) '  TMIDX'
       WRITE (6, 1002) TMIDX
       WRITE (6, *) '  AMAX'
       WRITE (6, 1003) AMAX
       WRITE (6, *) '  AMIDX'
       WRITE (6, 1002) AMIDX
 1002  FORMAT(5(1X,I10))
 1003  FORMAT(5(1X,F10.5))
      END

      SUBROUTINE VANDS3 ( F, T, A, B, E, Q, O, S, P, R, U, N )
       REAL*8 O(N,N), P(N,1), T(N,N), Q(3,N), R(N), S(N), U(N), AMAX, 
     X   TMAX, OC, OK
       REAL*4 A(N,N), F(N,N), B(N,1), C(1,30), D(30), E(N), AC, AK
       INTEGER AMIDX, TMIDX, UMIDX
       SAVE IMIDX
       AMAX = 0D0
       TMAX = 0D0
       AMIDX = 1
       TMIDX = 1
       UMIDX = 1
       OC = 0.12121
       K = 1
       DO I=2,N-2
        D(I) = AMOD (F(I,I), A(I,1))
        O(K,1) = DINT (T(I,I))
        K = K + 1
        A(N,I) = D(I) + A(N,I-1) * 0.12121
        F(N,I) = F(N-I,I) + F(N-I,I-1) * B(I,1)
        B(I,1) = ANINT (F(I,1))
        IF (AMAX .LE. Q(1,I)) THEN
         AMAX = Q(1,I)
         AMIDX = I
        END IF
        P(I,1) = DNINT (T(I,1))
        C(1,I) = AMOD (F(I,I), 30.)
        IF (.TRUE.) GO TO 19
        IF (U(UMIDX) .LT. U(I)) UMIDX = I
        E(I) = AMOD (A(IMIDX,3), F(IMIDX,3))
        Q(1,I) = DMOD (T(IMIDX,I), 30D0)
        S(I) = DMOD (O(I,K), T(I,3))
        A(I,1) = AINT (F(IMIDX,I))
   20   R(I) = DMOD (T(I,3), O(K,K))
        S(I) = S(I) + S(I-1) * B(I,1)
        T(N,I) = R(I) + T(N,I-1) * OC
       END DO
       GO TO 199
   19  IF (TMAX .LT. T(I,1)) THEN
        TMAX = T(I,1)
        TMIDX = I
       END IF
       GO TO 20
  199  CONTINUE
       WRITE (6, *) '  UMIDX'
       WRITE (6, 1002) UMIDX
       WRITE (6, *) '  TMAX'
       WRITE (6, 1003) TMAX
       WRITE (6, *) '  TMIDX'
       WRITE (6, 1002) TMIDX
       WRITE (6, *) '  AMAX'
       WRITE (6, 1003) AMAX
       WRITE (6, *) '  AMIDX'
       WRITE (6, 1002) AMIDX
 1002  FORMAT(5(1X,I10))
 1003  FORMAT(5(1X,F10.5))
      END

      SUBROUTINE ALLS ( F, T, A, B, E, Q, O, S, P, R, N )
       REAL*8 O(N,N), P(N,1), T(N,N), Q(3,N), R(N), S(N), AMAX, TMAX, OC
     X   , OK
       REAL*4 A(N,N), F(N,N), B(N,1), C(1,30), D(30), E(N), AC, AK
       INTEGER AMIDX, TMIDX, RMIDX
       AMAX = 0D0
       TMAX = 0D0
       AMIDX = 1
       TMIDX = 1
       RMIDX = 1
       OC = 0.12121

       DO I=2,N-2
        A(I,1) = AINT (F(I,I))
        O(I,1) = DINT (T(I,I))
        B(I,1) = ANINT (F(1,I))
        P(I,1) = DNINT (T(1,I))
        C(1,I) = AMOD (F(I,I), 30.)
        D(I) = AMOD (F(I,I), A(1,I))
        E(I) = AMOD (A(3,I), F(I,3))
        Q(1,I) = DMOD (T(I,I), 30D0)
        R(I) = DMOD (T(3,I), O(I,I))
        IF (.TRUE.) GO TO 19
        S(I) = DMOD (O(I,I), T(I,I))
        F(N-I,I) = F(N-I,I) + F(N-I,I-1) * B(I,1)
        S(I) = S(I) + S(I-1) * B(I,1)
        B(N-I,1) = D(I) + B(N-I-1,1) * 0.12121
        P(N-I,1) = R(I) + P(N-I-1,1) * OC
   20   IF (R(RMIDX) .LT. R(I)) RMIDX = I
        T(N-I-1,I) = T(I,1) + T(N-I-1,I-1) * B(I,1)
        IF (TMAX .LT. T(N-I-1,I-1)) THEN
         TMAX = T(I,1)
         TMIDX = I
        END IF
       END DO
       GO TO 199
   19  IF (AMAX .LE. Q(1,I)) THEN
        AMAX = Q(1,I)
        AMIDX = I
       END IF
       GO TO 20
  199  CONTINUE
       WRITE (6, *) '  UMIDX'
       WRITE (6, *) 0.
       WRITE (6, *) '  TMAX'
       WRITE (6, 1003) TMAX
       WRITE (6, *) '  TMIDX'
       WRITE (6, 1002) TMIDX
       WRITE (6, *) '  AMAX'
       WRITE (6, 1003) AMAX
       WRITE (6, *) '  AMIDX'
       WRITE (6, 1002) AMIDX
 1002  FORMAT(5(1X,I10))
 1003  FORMAT(5(1X,F10.5))
      END


      SUBROUTINE WRI ( F, T, A, B, E, Q, O, S, P, R, N )
       REAL*8 O(N,N), P(N,1), T(N,N), Q(3,N), R(N), S(N)
       REAL*4 A(N,N), F(N,N), B(N,1), E(N)
       WRITE (6, *) '## F ##'
       WRITE (6, 99) ((F(I,J), I=1,30), J=1,30)
       WRITE (6, *) '## T ##'
       WRITE (6, 99) ((T(I,J), I=1,30), J=1,30)
       WRITE (6, *) '## A ##'
       WRITE (6, 99) ((A(I,J), I=1,30), J=1,30)
       WRITE (6, *) '## B ##'
       WRITE (6, 99) (B(I,1), I=1,30)
       WRITE (6, *) '## O ##'
       WRITE (6, 99) (O(I,1), I=1,30)
       WRITE (6, *) '## E ##'
       WRITE (6, 99) E
       WRITE (6, *) '## Q ##'
       WRITE (6, 99) Q
       WRITE (6, *) '## S ##'
       WRITE (6, 99) S
       WRITE (6, *) '## P ##'
       WRITE (6, 99) P
       WRITE (6, *) '## R ##'
       WRITE (6, 99) R
   99  FORMAT(5(1X,D14.7))
      END
