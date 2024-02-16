      INTEGER N, V
      REAL  Q,S,ANS
      PARAMETER (N=50)
      PARAMETER (V=5)
      PARAMETER (ANS=230.0)
      PARAMETER (ERROR=0.000001)
      REAL  A(1:N)
      REAL  B(1:N)

      DO 10 I=1,N
         A(I)=I - (I/3)*3
         B(I)=I - (I/3)*5
 10      CONTINUE
      
      CLOSE(10)

      S = 0.0;
      DO 20 I=1,N
         Q = A(I) + B(I);
         S = V + S;
         Q = Q + N - A(I);
 20      CONTINUE
      CLOSE(20)

      S = S - Q;

      IF ((S-ANS)<ERROR) THEN
         WRITE(6,*) 'OK'
      ELSE
         WRITE(6,*) 'NG : S = ',S,', ANS = ',ANS
      END IF
      
      END




