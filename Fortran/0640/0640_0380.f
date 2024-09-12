      PROGRAM MAIN
      PARAMETER (N=30)
      REAL*8 O(N,N),P(N,1),T(N,N),Q(3,N),S(N),R(N),U(N)
      REAL*4 A(N,N),F(N,N),B(N,1),E(N)

      CALL INTDT(A,B,E,F,O,P,Q,S,T,R,U,N)
      CALL SUB1(F,T,A,B,E,Q,O,S,P,R,U,N)
      CALL WRI(F,T,A,B,E,Q,O,S,P,R,N)

      CALL INTDT(A,B,E,F,O,P,Q,S,T,R,U,N)
      CALL SUB2(F,T,A,B,E,Q,O,S,P,R,U,N)
      CALL WRI(F,T,A,B,E,Q,O,S,P,R,N)

      CALL INTDT(A,B,E,F,O,P,Q,S,T,R,U,N)
      CALL SUB3(F,T,A,B,E,Q,O,S,P,R,U,N)
      CALL WRI(F,T,A,B,E,Q,O,S,P,R,N)

      CALL INTDT(A,B,E,F,O,P,Q,S,T,R,U,N)
      CALL  SUB4(F,T,A,B,E,Q,O,S,P,R,N)
      CALL  WRI(F,T,A,B,E,Q,O,S,P,R,N)
      END
      SUBROUTINE INTDT(A,B,E,F,O,P,Q,S,T,R,U,N)
      REAL*8 O(N,N),P(N,1),T(N,N),Q(3,N),S(N),R(N),U(N)
      REAL*4 A(N,N),F(N,N),B(N,1),E(N)
       DO 12 I=1,N
         DO 11 J=1,N
           O(J,I) = J+I*(2**(-5))
           T(J,I) = J+I*(2**(-5))
           A(J,I) = J+I*(2**(-5))
           F(J,I) = J+I*(2**(-5))
  11     CONTINUE
         P(I,1) = I*0.0625
         B(I,1) = I*0.0625
         E(I) = I
         R(I) = I
         U(I) = I
         S(I) = I
        DO 12 J=1,3
         Q(J,I) = J+I*(2**(-5))
  12   CONTINUE
      END
      SUBROUTINE SUB1(F,T,A,B,E,Q,O,S,P,R,U,N)
      REAL*8 O(N,N),P(N,1),T(N,N),Q(3,N),R(N),S(N),U(N),
     +       AMAX,TMAX,OC,OK
      REAL*4 A(N,N),F(N,N),B(N,1),C(1,30),D(30),E(N),AC,AK
      INTEGER AMIDX,TMIDX,UMIDX
       AMAX = 0
       TMAX = 0
       AMIDX = 1
       TMIDX = 1
       UMIDX = 1
       AC    = 0.12121
       OC    = 0.12121
       AK    = 30
       OK    = 30
      DO 10 I=2,N-2
       D(I) = AMOD(F(I,I),A(I,1))
       O(I,1) = DINT(T(I,I))
       A(N,I) = A(N,I-1) * AC   + D(I)
       B(I,1) = ANINT(F(I,1))
       IF( AMAX .LE. Q(1,I) ) THEN
         AMAX = Q(1,I)
         AMIDX = I
       ENDIF
       P(I,1) = DNINT(T(I,1))
       C(1,I) = AMOD(F(I,I),AK)
       S(I) = DMOD(O(I,I),T(I,3))
       IF(I.LT.N)  GOTO  19
 20    IF( U(UMIDX) .LT. U(I) ) UMIDX=I
       E(I) = AMOD(A(I,3),F(I,3))
       Q(1,I) = DMOD(T(I,I),OK)
       A(I,1) = AINT(F(I,I))
       R(I) = DMOD(T(I,3),O(I,I))
       F(N,I) = F(N,I-1) * B(I,1) + F(N-I,I)
       S(I) = S(I-1) * B(I,1) + S(I)
       T(N,I) = T(N,I-1) * OC   + R(I)
  10  CONTINUE
      GOTO 199
 19    IF(TMAX .LT. T(I,1)) THEN
        TMAX = T(I,1)
        TMIDX = I
       ENDIF
       GOTO 20
 199  CONTINUE
      WRITE(6,*) '  UMIDX'
      WRITE(6,1002) UMIDX
      WRITE(6,*) '  TMAX'
      WRITE(6,1003) TMAX
      WRITE(6,*) '  TMIDX'
      WRITE(6,1002) TMIDX
      WRITE(6,*) '  AMAX'
      WRITE(6,1003) AMAX
      WRITE(6,*) '  AMIDX'
      WRITE(6,1002) AMIDX
1002  FORMAT(5(1X,I10))
1003  FORMAT(5(1X,F10.5))
      END
      SUBROUTINE SUB2(F,T,A,B,E,Q,O,S,P,R,U,N)
      REAL*8 O(N,N),P(N,1),T(N,N),Q(3,N),R(N),S(N),U(N),
     +       AMAX,TMAX,OC,OK
      REAL*4 A(N,N),F(N,N),B(N,1),C(1,30),D(30),E(N),AC,AK
      INTEGER AMIDX,TMIDX,UMIDX
       AMAX = 0
       TMAX = 0
       AMIDX = 1
       TMIDX = 1
       UMIDX = 1
       AC    = 0.12121
       OC    = 0.12121
       AK    = 30
       K     = 1
       OK    = 30
      DO 10 I=2,N-2
       D(I) = AMOD(F(I,I),A(I,1))
       O(K,1) = DINT(T(I,I))
       K = K + 1
       A(N,I) = A(N,I-1) * AC   + D(I)
       F(N,I) = F(N-I,I-1) * B(I,1) + F(N-I,I)
       B(I,1) = ANINT(F(I,1))
       IF( AMAX .LE. Q(1,I) ) THEN
         AMAX = Q(1,I)
         AMIDX = I
       ENDIF
       P(I,1) = DNINT(T(I,1))
       C(1,I) = AMOD(F(I,I),AK)
       IF(I.LT.N)  GOTO  19
 21    IF( U(UMIDX) .LT. U(I) ) UMIDX=I
       E(I) = AMOD(A(IMIDX,3),F(IMIDX,3))
       Q(1,I) = DMOD(T(IMIDX,I),OK)
       S(I) = DMOD(O(I,K),T(I,3))
       A(I,1) = AINT(F(IMIDX,I))
 20    R(I) = DMOD(T(I,3),O(K,K))
       S(I) = S(I-1) * B(I,1) + S(I)
       T(N,I) = R(I) + T(N,I-1) * OC
  10  CONTINUE
      GOTO 199
 19    IF(TMAX .LT. T(I,1)) THEN
        TMAX = T(I,1)
        TMIDX = I
       ENDIF
       GOTO 20
 199  CONTINUE
      WRITE(6,*) '  UMIDX'
      WRITE(6,1002) UMIDX
      WRITE(6,*) '  TMAX'
      WRITE(6,1003) TMAX
      WRITE(6,*) '  TMIDX'
      WRITE(6,1002) TMIDX
      WRITE(6,*) '  AMAX'
      WRITE(6,1003) AMAX
      WRITE(6,*) '  AMIDX'
      WRITE(6,1002) AMIDX
1002  FORMAT(5(1X,I10))
1003  FORMAT(5(1X,F10.5))
      END
      SUBROUTINE SUB3(F,T,A,B,E,Q,O,S,P,R,U,N)
      REAL*8 O(N,N),P(N,1),T(N,N),Q(3,N),R(N),S(N),U(N),
     +       AMAX,TMAX,OC,OK
      REAL*4 A(N,N),F(N,N),B(N,1),C(1,30),D(30),E(N),AC,AK
      INTEGER AMIDX,TMIDX,UMIDX
       AMAX = 0
       TMAX = 0
       AMIDX = 1
       TMIDX = 1
       UMIDX = 1
       AC    = 0.12121
       OC    = 0.12121
       AK    = 30
       K     = 1
       OK    = 30
      DO 10 I=2,N-2
       D(I) = AMOD(F(I,I),A(I,1))
       O(K,1) = DINT(T(I,I))
       K = K + 1
       A(N,I) = A(N,I-1) * AC   + D(I)
       F(N,I) = F(N-I,I-1) * B(I,1) + F(N-I,I)
       B(I,1) = ANINT(F(I,1))
       IF( AMAX .LE. Q(1,I) ) THEN
         AMAX = Q(1,I)
         AMIDX = I
       ENDIF
       P(I,1) = DNINT(T(I,1))
       C(1,I) = AMOD(F(I,I),AK)
       IF(I.LT.N)  GOTO  19
 21    IF( U(UMIDX) .LT. U(I) ) UMIDX=I
       E(I) = AMOD(A(IMIDX,3),F(IMIDX,3))
       Q(1,I) = DMOD(T(IMIDX,I),OK)
       S(I) = DMOD(O(I,K),T(I,3))
       A(I,1) = AINT(F(IMIDX,I))
 20    R(I) = DMOD(T(I,3),O(K,K))
       S(I) = S(I-1) * B(I,1) + S(I)
       T(N,I) = R(I) + T(N,I-1) * OC
  10  CONTINUE
      GOTO 199
 19    IF(TMAX .LT. T(I,1)) THEN
        TMAX = T(I,1)
        TMIDX = I
       ENDIF
       GOTO 20
 199  CONTINUE
      WRITE(6,*) '  UMIDX'
      WRITE(6,1002) UMIDX
      WRITE(6,*) '  TMAX'
      WRITE(6,1003) TMAX
      WRITE(6,*) '  TMIDX'
      WRITE(6,1002) TMIDX
      WRITE(6,*) '  AMAX'
      WRITE(6,1003) AMAX
      WRITE(6,*) '  AMIDX'
      WRITE(6,1002) AMIDX
1002  FORMAT(5(1X,I10))
1003  FORMAT(5(1X,F10.5))
      END
      SUBROUTINE SUB4(F,T,A,B,E,Q,O,S,P,R,N)
      REAL*8 O(N,N),P(N,1),T(N,N),Q(3,N),R(N),S(N),
     +       AMAX,TMAX,OC,OK
      REAL*4 A(N,N),F(N,N),B(N,1),C(1,30),D(30),E(N),AC,AK
      INTEGER AMIDX,TMIDX,RMIDX
      UMIDX = 0
      AMAX = 0
      TMAX = 0
      AMIDX = 1
      TMIDX = 1
      RMIDX = 1
      AC    = 0.12121
      OC    = 0.12121
      AK    = 30
      OK    = 30
      DO 10 I=2,N-2
       A(I,1) = AINT(F(I,I))
       O(I,1) = DINT(T(I,I))
       B(I,1) = ANINT(F(1,I))
       P(I,1) = DNINT(T(1,I))
       C(1,I) = AMOD(F(I,I),AK)
       D(I) = AMOD(F(I,I),A(1,I))
       E(I) = AMOD(A(3,I),F(I,3))
       Q(1,I) = DMOD(T(I,I),OK)
       R(I) = DMOD(T(3,I),O(I,I))
       IF(I.LT.N) GOTO 19
       S(I) = DMOD(O(I,I),T(I,I))
       F(N-I,I) = F(N-I,I-1) * B(I,1) + F(N-I,I)
       S(I) = S(I-1) * B(I,1) + S(I)
       B(N-I,1) = B(N-I-1,1) * AC   + D(I)
       P(N-I,1) = P(N-I-1,1) * OC   + R(I)
 20    IF( R(RMIDX) .LT. R(I) ) RMIDX=I
       T(N-I-1,I) = T(N-I-1,I-1) * B(I,1) + T(I,1)
       IF(TMAX .LT. T(N-I-1,I-1)) THEN
        TMAX = T(I,1)
        TMIDX = I
       ENDIF
  10  CONTINUE
      GOTO 199
 19    IF( AMAX .LE. Q(1,I) ) THEN
         AMAX = Q(1,I)
         AMIDX = I
       ENDIF
       GOTO 20
 199  CONTINUE
      WRITE(6,*) '  UMIDX'
      WRITE(6,*) UMIDX
      WRITE(6,*) '  TMAX'
      WRITE(6,1003) TMAX
      WRITE(6,*) '  TMIDX'
      WRITE(6,1002) TMIDX
      WRITE(6,*) '  AMAX'
      WRITE(6,1003) AMAX
      WRITE(6,*) '  AMIDX'
      WRITE(6,1002) AMIDX
1002  FORMAT(5(1X,I10))
1003  FORMAT(5(1X,F10.5))
      END
      SUBROUTINE WRI(F,T,A,B,E,Q,O,S,P,R,N)
      REAL*8 O(N,N),P(N,1),T(N,N),Q(3,N),R(N),S(N)
      REAL*4 A(N,N),F(N,N),B(N,1),E(N)
      WRITE(6,*) '## F ##'
      WRITE(6,99) ((F(I,J),I=1,30),J=1,30)
      WRITE(6,*) '## T ##'
      WRITE(6,99) ((T(I,J),I=1,30),J=1,30)
      WRITE(6,*) '## A ##'
      WRITE(6,99) ((A(I,J),I=1,30),J=1,30)
      WRITE(6,*) '## B ##'
      WRITE(6,99) (B(I,1),I=1,30)
      WRITE(6,*) '## O ##'
      WRITE(6,99) (O(I,1),I=1,30)
      WRITE(6,*) '## E ##'
      WRITE(6,99) E
      WRITE(6,*) '## Q ##'
      WRITE(6,99) Q
      WRITE(6,*) '## S ##'
      WRITE(6,99) S
      WRITE(6,*) '## P ##'
      WRITE(6,99) P
      WRITE(6,*) '## R ##'
      WRITE(6,99) R
 99   FORMAT(5(1X,D14.7))
      END
