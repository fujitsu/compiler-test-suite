      INTEGER N
      PARAMETER (N=50)
      REAL A(1:N), B(1:N), C(1:N)
      REAL Q

      DO 5 I=1,N
         A(I) = I - (I/2)*2
         B(I) = I - (I/3)*3
         C(I) = I - (I/4)*4
 5    CONTINUE

      Q = 0
      DO 10 I=1,N
         Q = (A(I)+B(I)+C(I)) - Q
 10   CONTINUE

      WRITE(*,*) Q

      DO 20 I=1,N
         Q = Q - (A(I)+B(I)+C(I))
 20   CONTINUE

      WRITE(*,*) Q

      DO 30 I=1,N,4
         Q = Q*(A(I)*C(I) - A(I+1)*B(I))
 30   CONTINUE

      WRITE(*,*) Q

      END
