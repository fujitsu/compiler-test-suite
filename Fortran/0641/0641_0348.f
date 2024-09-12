      PROGRAM MAIN

       PARAMETER (N = 30)
       REAL*8 O(30,30), P(30,1), T(30,30), Q(3,30), S(30), R(30), U(30)
       REAL*4 A(30,30), F(30,30), B(30,1), E(30)
       COMMON /CV6763K/ U, R, S, Q, T, P, RR1, O, E, B, RR2, F, A
       REAL RR2 (86), RR1 (86)

       CALL INTDT (A,B,E,F,O,P,Q,S,T,R,U,30)
       CALL SUB1 (F,T,A,B,E,Q,O,S,P,R,U,30)
       WRITE (6, 91) ((F(I,J), I=1,30), J=1,30)
       WRITE (6, 91) ((T(I,J), I=1,30), J=1,30)
       WRITE (6, 91) ((A(I,J), I=1,30), J=1,30)
       WRITE (6, 91) B
       WRITE (6, 91) E
       WRITE (6, 91) ((Q(I,J), I=1,3), J=1,30)
       WRITE (6, 91) ((O(I,J), I=1,30), J=1,30)
       WRITE (6, 91) S
       WRITE (6, 91) P
       WRITE (6, 91) R

       CALL INTDT (A,B,E,F,O,P,Q,S,T,R,U,30)
       CALL SUB2 (F,T,A,B,E,Q,O,S,P,R,30)
       WRITE (6, 91) ((F(I,J), I=1,30), J=1,30)
       WRITE (6, 91) ((T(I,J), I=1,30), J=1,30)
       WRITE (6, 91) ((A(I,J), I=1,30), J=1,30)
       WRITE (6, 91) B
       WRITE (6, 91) E
       WRITE (6, 91) ((Q(I,J), I=1,3), J=1,30)
       WRITE (6, 91) ((O(I,J), I=1,30), J=1,30)
       WRITE (6, 91) S
       WRITE (6, 91) P
       WRITE (6, 91) R

       CALL INTDT (A,B,E,F,O,P,Q,S,T,R,U,30)
       CALL SUB3 (F,T,A,B,E,Q,O,S,P,R,30)
       WRITE (6, 91) ((F(I,J), I=1,30), J=1,30)
       WRITE (6, 91) ((T(I,J), I=1,30), J=1,30)
       WRITE (6, 91) ((A(I,J), I=1,30), J=1,30)
       WRITE (6, 91) B
       WRITE (6, 91) E
       WRITE (6, 91) ((Q(I,J), I=1,3), J=1,30)
       WRITE (6, 91) ((O(I,J), I=1,30), J=1,30)
       WRITE (6, 91) S
       WRITE (6, 91) P
       WRITE (6, 91) R

   99  FORMAT(1H ,' F-',150(3F38.5,/),150(3F38.5,/),' T-',150(6F20.3,/),
     X   ' A-',150(6F20.3,/),' B-',6(5F20.3,/),' E-',6(5F20.3,/),' Q-',
     X   30(3F20.3,/),' O-',150(6F20.3,/),' S-',6(5F20.3,/),' P-',6(5F20
     X   .3,/),' R-',6(5F20.3,/))
   91  FORMAT(3(1X,D14.7))
      END

      SUBROUTINE INTDT ( A, B, E, F, O, P, Q, S, T, R, U, N )
       REAL*8 O(N,N), P(N,1), T(N,N), Q(3,N), S(N), R(N), U(N)
       REAL*4 A(N,N), F(N,N), B(N,1), E(N)
       INTEGER II4, II3, II2, II1
       REAL RR5, RR4, RR3, RR2, RR1
       II2 = N / 4
       II1 = II2 * 4 + 1
       II4 = N / 4
       II3 = II4 * 4 + 1
C$OMP PARALLEL SHARED (N,O,T,A,F,II1,P,B,E,R,U,S) PRIVATE (RR1,RR2,RR3,
C$OMP& RR4,RR5,I,J)
C$OMP DO 
       DO I=1,N
        RR1 = I + I * 0.125
        DO J=1,N-3,4
         O(J,I) = RR1
         O(J+1,I) = RR1
         O(J+2,I) = RR1
         O(J+3,I) = RR1
         RR3 = J * 0.125
         RR4 = (J + 1) * 0.125
         RR5 = (J + 2) * 0.125
         RR2 = (J + 3) * 0.125
         T(J,I) = I + RR3
         T(J+1,I) = I + RR4
         T(J+2,I) = I + RR5
         T(J+3,I) = I + RR2
         RR3 = J * 0.125
         RR4 = (J + 1) * 0.125
         RR5 = (J + 2) * 0.125
         RR2 = (J + 3) * 0.125
         A(J,I) = I + RR3
         A(J+1,I) = I + RR4
         A(J+2,I) = I + RR5
         A(J+3,I) = I + RR2
         RR3 = J * 0.125
         RR4 = (J + 1) * 0.125
         RR5 = (J + 2) * 0.125
         RR2 = (J + 3) * 0.125
         F(J,I) = I + RR3
         F(J+1,I) = I + RR4
         F(J+2,I) = I + RR5
         F(J+3,I) = I + RR2
        END DO
        DO J=II1,N,1
         O(J,I) = RR1
         RR2 = J * 0.125
         T(J,I) = I + RR2
         RR2 = J * 0.125
         A(J,I) = I + RR2
         RR2 = J * 0.125
         F(J,I) = I + RR2
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
        B(I,1) = 0.
        B(I+1,1) = 0.
        B(I+2,1) = 0.
        B(I+3,1) = 0.
        E(I) = I * 0.0625
        E(I+1) = (I + 1) * 0.0625
        E(I+2) = (I + 2) * 0.0625
        E(I+3) = (I + 3) * 0.0625
        R(I) = I * 0.0625
        R(I+1) = (I + 1) * 0.0625
        R(I+2) = (I + 2) * 0.0625
        R(I+3) = (I + 3) * 0.0625
        U(I) = I * 0.0625
        U(I+1) = (I + 1) * 0.0625
        U(I+2) = (I + 2) * 0.0625
        U(I+3) = (I + 3) * 0.0625
        S(I) = I * 0.0625
        S(I+1) = (I + 1) * 0.0625
        S(I+2) = (I + 2) * 0.0625
        S(I+3) = (I + 3) * 0.0625
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I=II3,N,1
        P(I,1) = I * 0.0625
        B(I,1) = 0.
        E(I) = I * 0.0625
        R(I) = I * 0.0625
        U(I) = I * 0.0625
        S(I) = I * 0.0625
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

      SUBROUTINE SUB1 ( F, T, A, B, E, Q, O, S, P, R, U, N )
       REAL*8 O(N,N), P(N,1), T(N,N), Q(3,N), R(N), S(N), U(N), AMAX, 
     X   TMAX, OC, OK
       REAL*4 A(N,N), F(N,N), B(N,1), C(1,30), D(30), E(N), AC, AK
       INTEGER AMIDX, TMIDX, UMIDX
       INTEGER II11, II10, II9, II8, II7, II6, II5, II4, II3, II2, II1
       REAL RR5, RR4, RR3, RR2, RR1
       DOUBLE PRECISION DD5, DD4, DD3, DD2, DD1
       AMAX = 0D0
       TMAX = 0D0
       AMIDX = 1
       TMIDX = 1
       UMIDX = 1
       OC = 0.12121

       II3 = (N - 3) / 4
       II2 = II3 * 4 + 2
       II11 = (N - 3) / 4
       II10 = II11 * 4 + 2
       DO I=2,N-5,4
        RR1 = AINT (F(I,I))
        RR2 = AINT (F(I+1,I+1))
        RR3 = AINT (F(I+2,I+2))
        RR4 = AINT (F(I+3,I+3))
        DD1 = DINT (T(I,I))
        DD2 = DINT (T(I+1,I+1))
        DD3 = DINT (T(I+2,I+2))
        DD4 = DINT (T(I+3,I+3))
        B(I,1) = ANINT (F(I,1))
        B(I+1,1) = ANINT (F(I+1,1))
        B(I+2,1) = ANINT (F(I+2,1))
        B(I+3,1) = ANINT (F(I+3,1))
        P(I,1) = DNINT (T(I,1))
        P(I+1,1) = DNINT (T(I+1,1))
        P(I+2,1) = DNINT (T(I+2,1))
        P(I+3,1) = DNINT (T(I+3,1))
        D(I) = AMOD (F(I,I), RR1)
        D(I+1) = AMOD (F(I+1,I+1), RR2)
        D(I+2) = AMOD (F(I+2,I+2), RR3)
        D(I+3) = AMOD (F(I+3,I+3), RR4)
        E(I) = AMOD (A(I,3), F(I,3))
        E(I+1) = AMOD (A(I+1,3), F(I+1,3))
        E(I+2) = AMOD (A(I+2,3), F(I+2,3))
        E(I+3) = AMOD (A(I+3,3), F(I+3,3))
        Q(1,I) = DMOD (T(I,I), 30D0)
        Q(1,I+1) = DMOD (T(I+1,I+1), 30D0)
        Q(1,I+2) = DMOD (T(I+2,I+2), 30D0)
        Q(1,I+3) = DMOD (T(I+3,I+3), 30D0)
        R(I) = DMOD (T(I,3), O(I,I))
        R(I+1) = DMOD (T(I+1,3), O(I+1,I+1))
        R(I+2) = DMOD (T(I+2,3), O(I+2,I+2))
        R(I+3) = DMOD (T(I+3,3), O(I+3,I+3))
        S(I) = DMOD (O(I,I), T(I,3))
        S(I+1) = DMOD (O(I+1,I+1), T(I+1,3))
        S(I+2) = DMOD (O(I+2,I+2), T(I+2,3))
        S(I+3) = DMOD (O(I+3,I+3), T(I+3,3))
        O(I+3,1) = DD4
        O(I+2,1) = DD3
        O(I+1,1) = DD2
        O(I,1) = DD1
        A(I+3,1) = RR4
        A(I+2,1) = RR3
        A(I+1,1) = RR2
        A(I,1) = RR1
       END DO
       DO I=II2,N-2,1
        RR5 = AINT (F(I,I))
        DD5 = DINT (T(I,I))
        B(I,1) = ANINT (F(I,1))
        P(I,1) = DNINT (T(I,1))
        D(I) = AMOD (F(I,I), RR5)
        E(I) = AMOD (A(I,3), F(I,3))
        Q(1,I) = DMOD (T(I,I), 30D0)
        O(I,1) = DD5
        R(I) = DMOD (T(I,3), O(I,I))
        S(I) = DMOD (O(I,I), T(I,3))
        A(I,1) = RR5
       END DO

C$OMP PARALLEL SHARED (N,F,B,S,A,D,AMAX,Q,AMIDX,UMIDX,U,TMAX,T,TMIDX) 
C$OMP& PRIVATE (II5,II4,II7,II6,II9,II8,II1,I)
C$OMP DO 
       DO II1=0,5
        GO TO (16, 17, 18, 19, 20), II1
        II5 = (N - 3) / 4
        II4 = II5 * 4 + 2
        DO I=2,N-5,4
         F(N,I) = F(N-I,I) + F(N,I-1) * B(I,1)
         F(N,I+1) = F(N-I-1,I+1) + F(N,I) * B(I+1,1)
         F(N,I+2) = F(N-I-2,I+2) + F(N,I+1) * B(I+2,1)
         F(N,I+3) = F(N-I-3,I+3) + F(N,I+2) * B(I+3,1)
        END DO
        DO I=II4,N-2,1
         F(N,I) = F(N-I,I) + F(N,I-1) * B(I,1)
        END DO
C$OMP FLUSH
        GO TO 21

   16   II7 = (N - 3) / 4
        II6 = II7 * 4 + 2
        DO I=2,N-5,4
         S(I) = S(I) + S(I-1) * B(I,1)
         S(I+1) = S(I+1) + S(I) * B(I+1,1)
         S(I+2) = S(I+2) + S(I+1) * B(I+2,1)
         S(I+3) = S(I+3) + S(I+2) * B(I+3,1)
        END DO
        DO I=II6,N-2,1
         S(I) = S(I) + S(I-1) * B(I,1)
        END DO
C$OMP FLUSH
        GO TO 21

   17   II9 = (N - 3) / 4
        II8 = II9 * 4 + 2
        DO I=2,N-5,4
         A(N,I) = D(I) + A(N,I-1) * 0.12121
         A(N,I+1) = D(I+1) + A(N,I) * 0.12121
         A(N,I+2) = D(I+2) + A(N,I+1) * 0.12121
         A(N,I+3) = D(I+3) + A(N,I+2) * 0.12121
        END DO
        DO I=II8,N-2,1
         A(N,I) = D(I) + A(N,I-1) * 0.12121
        END DO
C$OMP FLUSH
        GO TO 21

   18   DO I=2,N-2
         IF (AMAX .LE. Q(1,I)) THEN
          AMAX = Q(1,I)
          AMIDX = I
         END IF
        END DO
C$OMP FLUSH
        GO TO 21

   19   DO I=2,N-2
         IF (U(UMIDX) .LT. U(I)) THEN
          UMIDX = I
         END IF
        END DO
C$OMP FLUSH
        GO TO 21

   20   DO I=2,N-2
         IF (TMAX .LT. T(I,1)) THEN
          TMAX = T(I,1)
          TMIDX = I
         END IF
        END DO
C$OMP FLUSH
   21   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       DO I=2,N-5,4
        T(N,I) = R(I) + T(N,I-1) * OC
        T(N,I+1) = R(I+1) + T(N,I) * OC
        T(N,I+2) = R(I+2) + T(N,I+1) * OC
        T(N,I+3) = R(I+3) + T(N,I+2) * OC
       END DO
       DO I=II10,N-2,1
        T(N,I) = R(I) + T(N,I-1) * OC
       END DO

       WRITE (6, *) 'UMIDX ', UMIDX
       WRITE (6, *) 'TMAX ', TMAX
       WRITE (6, *) 'TMIDX ', TMIDX
       WRITE (6, *) 'AMAX ', AMAX
       WRITE (6, *) 'AMIDX ', AMIDX
      END

      SUBROUTINE SUB2 ( F, T, A, B, E, Q, O, S, P, R, N )
       REAL*8 O(N,N), P(N,1), T(N,N), Q(3,N), R(N), S(N), AMAX, TMAX, OC
     X   , OK
       REAL*4 A(N,N), F(N,N), B(N,1), C(1,30), D(30), E(N), AC, AK
       INTEGER AMIDX, TMIDX, RMIDX
       INTEGER II3, II2, II1
       REAL RR4, RR3, RR2, RR1
       DOUBLE PRECISION DD4, DD3, DD2, DD1
       AMAX = 0D0
       TMAX = 0D0
       AMIDX = 1
       TMIDX = 1
       RMIDX = 1
       OC = 0.12121

       II3 = (N - 3) / 4
       II2 = II3 * 4 + 2
       DO I=2,N-5,4
        RR1 = AINT (F(I,I))
        RR2 = AINT (F(I+1,I+1))
        RR3 = AINT (F(I+2,I+2))
        RR4 = AINT (F(I+3,I+3))
        DD1 = DINT (T(I,I))
        DD2 = DINT (T(I+1,I+1))
        DD3 = DINT (T(I+2,I+2))
        DD4 = DINT (T(I+3,I+3))
        D(I) = AMOD (F(I,I), A(1,I))
        D(I+1) = AMOD (F(I+1,I+1), A(1,I+1))
        D(I+2) = AMOD (F(I+2,I+2), A(1,I+2))
        D(I+3) = AMOD (F(I+3,I+3), A(1,I+3))
        Q(1,I) = DMOD (T(I,I), 30D0)
        Q(1,I+1) = DMOD (T(I+1,I+1), 30D0)
        Q(1,I+2) = DMOD (T(I+2,I+2), 30D0)
        Q(1,I+3) = DMOD (T(I+3,I+3), 30D0)
        S(I) = DMOD (O(I,I), T(I,I))
        S(I+1) = DMOD (O(I+1,I+1), T(I+1,I+1))
        S(I+2) = DMOD (O(I+2,I+2), T(I+2,I+2))
        S(I+3) = DMOD (O(I+3,I+3), T(I+3,I+3))
        O(I+3,1) = DD4
        O(I+2,1) = DD3
        O(I+1,1) = DD2
        O(I,1) = DD1
        A(I+3,1) = RR4
        A(I+2,1) = RR3
        A(I+1,1) = RR2
        A(I,1) = RR1
       END DO
       DO I=II2,N-2,1
        A(I,1) = AINT (F(I,I))
        O(I,1) = DINT (T(I,I))
        D(I) = AMOD (F(I,I), A(1,I))
        Q(1,I) = DMOD (T(I,I), 30D0)
        S(I) = DMOD (O(I,I), T(I,I))
       END DO

C$OMP PARALLEL SHARED (N,B,F,P,T,E,A,R,O,S,D,OC,RMIDX,AMAX,Q,AMIDX,TMAX,
C$OMP& TMIDX) PRIVATE (II1,I)
C$OMP DO 
       DO II1=0,2
        GO TO (7, 8), II1
        DO I=2,N-2
         B(I,1) = ANINT (F(1,I))
         P(I,1) = DNINT (T(1,I))
         E(I) = AMOD (A(3,I), F(I,3))
         R(I) = DMOD (T(3,I), O(I,I))
         F(N-I,I) = F(N-I,I) + F(N-I,I-1) * B(I,1)
         S(I) = S(I) + S(I-1) * B(I,1)
         B(N-I,1) = D(I) + B(N-I-1,1) * 0.12121
         P(N-I,1) = R(I) + P(N-I-1,1) * OC
         IF (R(RMIDX) .LT. R(I)) THEN
          RMIDX = I
         END IF
         T(N-I-1,I) = T(I,1) + T(N-I-1,I-1) * B(I,1)
        END DO
C$OMP FLUSH
        GO TO 9

    7   DO I=2,N-2
         IF (AMAX .LE. Q(1,I)) THEN
          AMAX = Q(1,I)
          AMIDX = I
         END IF
        END DO
C$OMP FLUSH
        GO TO 9

    8   DO I=2,N-2
         IF (TMAX .LT. T(N-I-1,I-1)) THEN
          TMAX = T(I,1)
          TMIDX = I
         END IF
        END DO
C$OMP FLUSH
    9   CONTINUE
       END DO

       WRITE (6, *) 'RMIDX ', RMIDX
       WRITE (6, *) 'TMAX ', TMAX
       WRITE (6, *) 'TMIDX ', TMIDX
       WRITE (6, *) 'AMAX ', AMAX
       WRITE (6, *) 'AMIDX ', AMIDX
      END

      SUBROUTINE SUB3 ( F, T, A, B, E, Q, O, S, P, R, N )
       REAL*8 O(N,N), P(N,1), T(N,N), Q(3,N), R(N), S(N), AMAX, TMAX, OC
     X   , OK
       REAL*4 A(N,N), F(N,N), B(N,1), C(1,30), D(30), E(N), AC, AK
       INTEGER AMIDX, TMIDX, RMIDX, K
       INTEGER II3, II2, II1
       REAL RR4, RR3, RR2, RR1
       DOUBLE PRECISION DD4, DD3, DD2, DD1
       AMAX = 0D0
       TMAX = 0D0
       AMIDX = 1
       TMIDX = 1
       RMIDX = 1

       II3 = (N - 3) / 4
       II2 = II3 * 4 + 2
       DO I=2,N-5,4
        RR1 = AINT (F(3,I))
        RR2 = AINT (F(3,I+1))
        RR3 = AINT (F(3,I+2))
        RR4 = AINT (F(3,I+3))
        DD1 = DINT (T(2,I))
        DD2 = DINT (T(2,I+1))
        DD3 = DINT (T(2,I+2))
        DD4 = DINT (T(2,I+3))
        D(I) = AMOD (F(I,I), A(1,I))
        D(I+1) = AMOD (F(I+1,I+1), A(1,I+1))
        D(I+2) = AMOD (F(I+2,I+2), A(1,I+2))
        D(I+3) = AMOD (F(I+3,I+3), A(1,I+3))
        Q(1,I) = DMOD (T(I,I), 30D0)
        Q(1,I+1) = DMOD (T(I+1,I+1), 30D0)
        Q(1,I+2) = DMOD (T(I+2,I+2), 30D0)
        Q(1,I+3) = DMOD (T(I+3,I+3), 30D0)
        S(I) = DMOD (O(I,I), T(I,I))
        S(I+1) = DMOD (O(I+1,I+1), T(I+1,I+1))
        S(I+2) = DMOD (O(I+2,I+2), T(I+2,I+2))
        S(I+3) = DMOD (O(I+3,I+3), T(I+3,I+3))
        O(I+3,1) = DD4
        O(I+2,1) = DD3
        O(I+1,1) = DD2
        O(I,1) = DD1
        A(I+3,1) = RR4
        A(I+2,1) = RR3
        A(I+1,1) = RR2
        A(I,1) = RR1
       END DO
       DO I=II2,N-2,1
        A(I,1) = AINT (F(3,I))
        O(I,1) = DINT (T(2,I))
        D(I) = AMOD (F(I,I), A(1,I))
        Q(1,I) = DMOD (T(I-II2+II3*4+2,I), 30D0)
        S(I) = DMOD (O(I,I), T(I,I))
       END DO

C$OMP PARALLEL SHARED (N,B,F,P,T,E,A,R,O,S,D,RMIDX,TMAX,TMIDX,AMAX,Q,
C$OMP& AMIDX) PRIVATE (II1,I)
C$OMP DO 
       DO II1=0,1
        GO TO (6), II1
        DO I=2,N-2
         B(I,1) = ANINT (F(1,I))
         P(I,1) = DNINT (T(1,I))
         E(I) = AMOD (A(3,I), F(I,3))
         R(I) = DMOD (T(3,I), O(I,I))
         F(N-I,I) = F(N-I,I) + F(N-I,I-1) * B(I,1)
         S(I) = S(I) + S(I-1) * B(I,1)
         B(N-I,1) = D(I) + B(N-I-1,1) * 20.
         P(N-I,1) = R(I) + P(N-I-1,1) * 20D0
         IF (R(RMIDX) .LT. R(I)) THEN
          RMIDX = I
         END IF
         T(N-I,I) = T(I,1) + T(N-I-1,I-1) * B(I,1)
         IF (TMAX .LT. T(N-I,I)) THEN
          TMAX = T(N-I,I)
          TMIDX = I
         END IF
        END DO
C$OMP FLUSH
        GO TO 7

    6   DO I=2,N-2
         IF (AMAX .LE. Q(1,I)) THEN
          AMAX = Q(1,I)
          AMIDX = I
         END IF
        END DO
C$OMP FLUSH
    7   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) 'RMIDX ', RMIDX
       WRITE (6, *) 'TMAX ', TMAX
       WRITE (6, *) 'TMIDX ', TMIDX
       WRITE (6, *) 'AMAX ', AMAX
       WRITE (6, *) 'AMIDX ', AMIDX
      END
