      PROGRAM MAIN
      REAL A(5,5,3000)
      REAL B(5,5,5,3000)
      REAL C(5,3000)
      DATA A/75000*0/
      DATA B/375000*0/
      DATA C/15000*0/

      DO 100 I=1,5
        DO 20 J=1,5
          DO 30 K=1,3000
            A(I,J,K) = (I + J) / K
   30     CONTINUE
          DO 40 K=1,3000
            A(I,J,K) = A(I,J,K) + (I + K) / J
   40     CONTINUE
   20   CONTINUE
        DO 50 J=1,3000
          C(I,J) = A(I,1,J)
   50   CONTINUE
        DO 60 J=1,5
          DO 70 K=1,5
            DO 80 L=1,3000
              B(I,J,K,L) = C(I,J) + A(I,J,K) + L
   80       CONTINUE
            DO 90 L=1,3000
              B(I,J,K,L) = B(I,J,K,L) + 1
   90       CONTINUE
   70     CONTINUE
          DO 1010 L=1,3000
             DO 1000 K=1,5
                B(I,J,K,L) = B(I,J,K,L) * 2
 1000        CONTINUE
 1010     CONTINUE
          DO 1100 K=1,3000
            A(I,J,K) = A(I,J,K) / K
 1100     CONTINUE
   60   CONTINUE
  100 CONTINUE

      WRITE(6,*) ' # B # '
      WRITE(6,1) ((((B(I,J,K,L),I=1,5,5),J=1,5,5),K=1,5,5)
     +                         ,L=1,3000,500)
      WRITE(6,*)

    1 FORMAT (5E15.6)
      STOP
      END
