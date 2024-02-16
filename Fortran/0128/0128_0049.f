      INTEGER N, R
      PARAMETER (N=100)
      INTEGER  A(1:N), B(1:N), C(1:N)

      DO 5 I=1,N
         A(I) = I - (I/2)*2
         B(I) = I - (I/3)*3
         C(I) = I - (I/4)*4
 5    CONTINUE

      R = 0
      DO 10 I=1,N
        IF (A(I) > B(I)) THEN
          R = R + B(I)
        ELSE
          IF (A(I) > C(I)) THEN
            R = R + C(I)
          ELSE
            R = R + A(I)
          END IF
        END IF
 10   CONTINUE

      PRINT *,R

      END
