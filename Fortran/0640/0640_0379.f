      PROGRAM MAIN
      PARAMETER (N=30)
      REAL*8 O(N,N),P(N,1),T(N,N),Q(3,N),S(N),R(N),U(N)
      REAL*4 A(N,N),F(N,N),B(N,1),E(N)

      CALL INTDT(A,B,E,F,O,P,Q,S,T,R,U,N)
      CALL SUB1(F,T,A,B,E,Q,O,S,P,R,U,N)
      WRITE(6,91) ((F(I,J),I=1,30),J=1,30)
      WRITE(6,91) ((T(I,J),I=1,30),J=1,30)
      WRITE(6,91) ((A(I,J),I=1,30),J=1,30)
      WRITE(6,91) B
      WRITE(6,91) E
      WRITE(6,91) ((Q(I,J),I=1,3),J=1,30)
      WRITE(6,91) ((O(I,J),I=1,30),J=1,30)
      WRITE(6,91) S
      WRITE(6,91) P
      WRITE(6,91) R

      CALL INTDT(A,B,E,F,O,P,Q,S,T,R,U,N)
      CALL SUB2(F,T,A,B,E,Q,O,S,P,R,N)
      WRITE(6,91) ((F(I,J),I=1,30),J=1,30)
      WRITE(6,91) ((T(I,J),I=1,30),J=1,30)
      WRITE(6,91) ((A(I,J),I=1,30),J=1,30)
      WRITE(6,91) B
      WRITE(6,91) E
      WRITE(6,91) ((Q(I,J),I=1,3),J=1,30)
      WRITE(6,91) ((O(I,J),I=1,30),J=1,30)
      WRITE(6,91) S
      WRITE(6,91) P
      WRITE(6,91) R

      CALL INTDT(A,B,E,F,O,P,Q,S,T,R,U,N)
      CALL SUB3(F,T,A,B,E,Q,O,S,P,R,N)
      WRITE(6,91) ((F(I,J),I=1,30),J=1,30)
      WRITE(6,91) ((T(I,J),I=1,30),J=1,30)
      WRITE(6,91) ((A(I,J),I=1,30),J=1,30)
      WRITE(6,91) B
      WRITE(6,91) E
      WRITE(6,91) ((Q(I,J),I=1,3),J=1,30)
      WRITE(6,91) ((O(I,J),I=1,30),J=1,30)
      WRITE(6,91) S
      WRITE(6,91) P
      WRITE(6,91) R

 99   FORMAT(1H ,' F-',150(3F38.5,/),150(3F38.5,/),
     +       ' T-',150(6F20.3,/),
     +       ' A-',150(6F20.3,/),' B-',6(5F20.3,/),
     +       ' E-',6(5F20.3,/),' Q-',30(3F20.3,/),
     +       ' O-',150(6F20.3,/),' S-',6(5F20.3,/),' P-',6(5F20.3,/),
     +       ' R-',6(5F20.3,/) )
 91   FORMAT(3(1X,D14.7))
      END
      SUBROUTINE INTDT(A,B,E,F,O,P,Q,S,T,R,U,N)
      REAL*8 O(N,N),P(N,1),T(N,N),Q(3,N),S(N),R(N),U(N)
      REAL*4 A(N,N),F(N,N),B(N,1),E(N)
       DO 12 I=1,N
         DO 11 J=1,N
           O(J,I) = I*0.125 + I
           T(J,I) = J*0.125 + I
           A(J,I) = J*0.125 + I
           F(J,I) = J*0.125 + I
  11     CONTINUE
         P(I,1) = I*0.0625
         B(I,1) = I*(2**(-8))
         E(I) = I*0.0625
         R(I) = I*0.0625
         U(I) = I*0.0625
         S(I) = I*0.0625
        DO 12 J=1,3
         Q(J,I) = J
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
       A(I,1) = AINT(F(I,I))
       O(I,1) = DINT(T(I,I))
       B(I,1) = ANINT(F(I,1))
       P(I,1) = DNINT(T(I,1))
       C(1,I) = AMOD(F(I,I),AK)
       D(I) = AMOD(F(I,I),A(I,1))
       E(I) = AMOD(A(I,3),F(I,3))
       Q(1,I) = DMOD(T(I,I),OK)
       R(I) = DMOD(T(I,3),O(I,I))
       S(I) = DMOD(O(I,I),T(I,3))
       F(N,I) = F(N,I-1) * B(I,1) + F(N-I,I)
       S(I) = S(I-1) * B(I,1) + S(I)
       A(N,I) = A(N,I-1) * AC   + D(I)
       T(N,I) = T(N,I-1) * OC   + R(I)
       IF( AMAX .LE. Q(1,I) ) THEN
         AMAX = Q(1,I)
         AMIDX = I
       ENDIF
       IF( U(UMIDX) .LT. U(I) ) UMIDX=I
       IF(TMAX .LT. T(I,1)) THEN
        TMAX = T(I,1)
        TMIDX = I
       ENDIF
  10  CONTINUE

      WRITE(6,*) 'UMIDX ',UMIDX
      WRITE(6,*) 'TMAX ',TMAX
      WRITE(6,*) 'TMIDX ',TMIDX
      WRITE(6,*) 'AMAX ',AMAX
      WRITE(6,*) 'AMIDX ',AMIDX
      END
      SUBROUTINE SUB2(F,T,A,B,E,Q,O,S,P,R,N)
      REAL*8 O(N,N),P(N,1),T(N,N),Q(3,N),R(N),S(N),
     +       AMAX,TMAX,OC,OK
      REAL*4 A(N,N),F(N,N),B(N,1),C(1,30),D(30),E(N),AC,AK
      INTEGER AMIDX,TMIDX,RMIDX
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
       S(I) = DMOD(O(I,I),T(I,I))
       F(N-I,I) = F(N-I,I-1) * B(I,1) + F(N-I,I)
       S(I) = S(I-1) * B(I,1) + S(I)
       B(N-I,1) = B(N-I-1,1) * AC   + D(I)
       P(N-I,1) = P(N-I-1,1) * OC   + R(I)
       IF( AMAX .LE. Q(1,I) ) THEN
         AMAX = Q(1,I)
         AMIDX = I
       ENDIF
       IF( R(RMIDX) .LT. R(I) ) RMIDX=I
       T(N-I-1,I) = T(N-I-1,I-1) * B(I,1) + T(I,1)
       IF(TMAX .LT. T(N-I-1,I-1)) THEN
        TMAX = T(I,1)
        TMIDX = I
       ENDIF
  10  CONTINUE
      WRITE(6,*) 'RMIDX ',RMIDX
      WRITE(6,*) 'TMAX ',TMAX
      WRITE(6,*) 'TMIDX ',TMIDX
      WRITE(6,*) 'AMAX ',AMAX
      WRITE(6,*) 'AMIDX ',AMIDX
      END
      SUBROUTINE SUB3(F,T,A,B,E,Q,O,S,P,R,N)
      REAL*8 O(N,N),P(N,1),T(N,N),Q(3,N),R(N),S(N),
     +       AMAX,TMAX,OC,OK
      REAL*4 A(N,N),F(N,N),B(N,1),C(1,30),D(30),E(N),AC,AK
      INTEGER AMIDX,TMIDX,RMIDX,K
      K = 1
      AMAX = 0
      TMAX = 0
      AMIDX = 1
      TMIDX = 1
      RMIDX = 1
      AC    = 20
      OC    = 20
      AK    = 30
      OK    = 30
      DO 10 I=2,N-2
       A(I,1) = AINT(F(3,I))
       O(I,1) = DINT(T(2,I))
       B(I,1) = ANINT(F(1,I))
       P(I,1) = DNINT(T(1,I))
       C(1,I) = AMOD(F(1,I),AK)
       D(I) = AMOD(F(I,I),A(1,I))
       K = K + 1
       E(I) = AMOD(A(3,I),F(I,3))
       Q(1,I) = DMOD(T(K,I),OK)
       R(I) = DMOD(T(3,I),O(I,I))
       S(I) = DMOD(O(I,I),T(I,I))
       F(N-I,I) = F(N-I,I) + F(N-I,I-1) * B(I,1)
       S(K) = S(K-1) * B(I,1) + S(K)
       B(N-I,1) = B(N-I-1,1) * AC   + D(I)
       P(N-I,1) = P(N-I-1,1) * OC   + R(I)
       IF( AMAX .LE. Q(1,I) ) THEN
         AMAX = Q(1,I)
         AMIDX = I
       ENDIF
       IF( R(RMIDX) .LT. R(I) ) RMIDX=I
       T(N-I,I) = T(N-I-1,I-1) * B(I,1) + T(I,1)
       IF(TMAX .LT. T(N-I,I)) THEN
        TMAX = T(N-I,I)
        TMIDX = I
       ENDIF
  10  CONTINUE
      WRITE(6,*) 'RMIDX ',RMIDX
      WRITE(6,*) 'TMAX ',TMAX
      WRITE(6,*) 'TMIDX ',TMIDX
      WRITE(6,*) 'AMAX ',AMAX
      WRITE(6,*) 'AMIDX ',AMIDX
      END
