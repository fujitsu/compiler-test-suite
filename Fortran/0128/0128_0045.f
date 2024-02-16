      INTEGER N, ANS, S
      PARAMETER (N=100)
      PARAMETER (ANS=151)
      COMPLEX*8 A(100), B(100), C(100)

      DO 10 I=1,N
         A(I) = I
         B(I) = I
         C(I) = I
 10      CONTINUE
      
      CLOSE(10)

      S = 0;
      DO 20 I=1,N
         S = S + INT(A(I)) + INT(B(I)) + INT(C(I))
 20      CONTINUE
      CLOSE(20)

      S = S / N;

      IF (S.EQ.ANS) THEN
         WRITE(6,*) 'OK : S = ',S
      ELSE
         WRITE(6,*) 'NG : S = ',S,', ANS = ',ANS
      END IF
      
      END











