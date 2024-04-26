      REAL A(10,10,10,10)/10000*0/,B(10,10,10,10)
      REAL C(10,10,10,10)/10000*0/
      DO 10 I=1,10
        DO 10 J=1,10
          DO 10 K=1,10
            DO 10 L=1,10
   10         B(L,K,J,I) = I+J+K+L
C
      DO 20 I=1,10
        DO 20 J=1,10
          DO 20 K=1,10
            DO 20 L=1,10
              A(I,J,K,L) = B(I,J,K,L) * 3
   20 CONTINUE
C
      WRITE(6,1) ((((A(I,J,K,L),I=1,10,2),J=1,10,3),
     +               K=1,10,2),L=1,10,3)
      WRITE(6,*)
C
      DO 30 I=1,10
        DO 30 J=1,10
          DO 30 K=1,10
            DO 30 L=1,10
          C(L,K,J,I) = B(L,K,J,I) * 3
   30 CONTINUE
C
      WRITE(6,1) ((((C(I,J,K,L),I=1,10,2),J=1,10,3),
     +               K=1,10,2),L=1,10,3)
    1 FORMAT(12F6.1)
      STOP
      END
