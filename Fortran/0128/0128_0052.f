      INTEGER N
      PARAMETER (N=500)
      INTEGER Q

      Q = 0
      DO 10 I=1,N
         DO 10 J=1,N
            Q = Q + I
 10   CONTINUE

      WRITE(*,*) Q
      END
