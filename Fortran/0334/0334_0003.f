

      INTEGER N, KEI, ANS
      PARAMETER (N=100, ANS=495000)
      INTEGER  A(1:N), B(1:N), C(1:N), R(1:N)

      A = 1
      DO 5 I=1,N
         B(I) = I
         C(I) = N - I + 1
 5    CONTINUE

      R = 0
      DO I=1,N
         DO J=N,1,-1
            WHERE (A(C) > A(B))
               R = R + A(B)
            ELSEWHERE
               R = R + A(C)
            ENDWHERE
         ENDDO
         R = R - B
      ENDDO

      KEI = SUM(R)

      IF (KEI.eq.ANS) THEN
         PRINT *,'OK'
      ELSE
         PRINT *,'NG'
      ENDIF

      END
