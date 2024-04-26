
      INTEGER N, KEI, ANS
      PARAMETER (N=100, ANS=420050)
      INTEGER  A(1:N), B(1:N), C(1:N), R(1:N)

      DO 5 I=1,N
         A(I) = I - (I/2)*2
         B(I) = I - (I/3)*3
         C(I) = N - I + 1
 5    CONTINUE

      R = A(C)
      DO 10 I=1,N
        WHERE (A > B)
          R = R + B
        ELSEWHERE
          R = R + C
        ENDWHERE
 10   CONTINUE

      KEI = SUM(R)
      
      IF (KEI.eq.ANS) THEN
         PRINT *,'OK'
      ELSE
         PRINT *,'NG'
      ENDIF

      END
