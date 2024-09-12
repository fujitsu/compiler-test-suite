      DIMENSION  A(20),B(20),C(20),D(20,20)
      DIMENSION  L(20)
      DATA  A,B,C/20*1.,20*3.,20*5./,D/200*-1.D0,200*-3.D0/
      DATA  N1,N2/1,10/,N3/2/
      DO 5 I=1,20
5      L(I) = 21-I

      DO 10 I=3,N2
        A(I+N1*2) = A(I+N1*N2) + B(I) + C(I)
 10   CONTINUE

      DO 20 I=3,N2
        A(I+N1*N1) = A(I+N1*N2) + B(I) + C(I)
 20   CONTINUE

      DO 30 I=1,3
       DO 30 J=2,N2
         B(J+I*2) = B(J+I*N3) + D(J+2*I,L(I))*A(J)
         D(J+I,I) = -A(J)
 30   CONTINUE

      DO 40 I=2,5
       DO 40 J=3,N2
         D(I*2*N1,J) = D(I*N1,J+N1) + A(I+J)
         C(N2*2-J) = C(N2-J+1) - B(J)
 40   CONTINUE

      DO 50 I=20,N2,-1
        C(I-N1*N1) = C(I-N1*N3) + A(I)
 50   CONTINUE
      WRITE(6,*) ' A = ',A
      WRITE(6,*) ' B = ',B
      WRITE(6,*) ' C = ',C
      WRITE(6,*) ' D = ',D
      STOP
      END
