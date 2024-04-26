
      INTEGER N,I
      PARAMETER (N=24)
      INTEGER A(1:N), B(1:N), C(1:N)
      INTEGER DATA1, DATA2
      INTEGER ANS1, ANS2
      PARAMETER (ANS1=0, ANS2=-6900)

      DO 10 I=1,N
         A(I) = I
 10      B(I) = I

      C = 0

      DO 20 I=1,N
         DO 20 J=1,N
 20         C(I) = C(I) + (B(I) - A(J))

      DATA1 = SUM(C)

      C = 0
      C = C + (B - SUM(A))

      DATA2 = SUM(C)

      IF (DATA1 .ne. DATA2) THEN
         IF (DATA1 .eq. ANS1) THEN
            IF (DATA2 .eq. ANS2) THEN
               PRINT *,"OK"
            ELSE
               PRINT *,"NG"
            ENDIF
         ELSE
            PRINT *,"NG"
         ENDIF
      ELSE
         PRINT *,"NG"
      ENDIF


      END
