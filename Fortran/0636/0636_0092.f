      PARAMETER (N=100)
      REAL A(N),B(N),C(N),D(N),E(N),F(N),G(N),H(N),O(N),P(N),Q(N)
      DO 1000 I=1,10
      GO TO (1,2,3,4,5,6,7,8,9,10),I
    1 DO 11 J=1,N
      A(J)=REAL(J)-0.01
   11 CONTINUE
      GO TO 1000
    2 DO 20 J=1,N
      B(J)=SQRT(REAL(J))
   20 CONTINUE
      DO 25 J=1,N
      C(J)=A(J)*0.6
   25 CONTINUE
      GO TO 1000
    3 DO 30 J=1,N
      D(J)=9.99
   30 CONTINUE
      GO TO 1000
    4 DO 40 J=1,N
      E(J)=0.01
   40 CONTINUE
      GO TO 1000
    5 DO 50 J=1,N
      F(J)=(C(J)+D(J))/2.0
   50 CONTINUE
      GO TO 1000
    6 DO 60 J=1,N
      G(J)=F(J)*0.3
   60 CONTINUE
      GO TO 1000
    7 DO 70 J=1,N
      H(J)=0.1
   70 CONTINUE
      GO TO 1000
    8 DO 80 J=1,N
      O(J)=G(J)*H(J)
   80 CONTINUE
      GO TO 1000
    9 DO 90 J=1,N
      P(J)=B(J)-0.32
   90 CONTINUE
      GO TO 1000
   10 DO 100 J=1,N
      Q(J)=ABS(B(J))
  100 CONTINUE
 1000 CONTINUE
      PRINT *,A,B,C,D,E,F,G,H,O,P,Q
      STOP
      END
