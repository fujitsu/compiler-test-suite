      REAL A(10,10,10,10)/10000*0/,B(10,10,10,10)/10000*2/
      REAL C(10,10,10)/1000*1/,D(10)/1,2,3,4,5,6,7,8,9,10/
C
      DO 23 I=1,10
        DO 22 J=1,10
          DO 21 K=1,10
            DO 20 L=1,10
              A(L,K,J,I) = B(I,J,K,L) * 3
   20       CONTINUE
          C(I,J,1) = C(I,J,1) + 2
   21   CONTINUE
   22   CONTINUE
        D(1) = D(1) + C(I,1,1)
   23 CONTINUE
C
      WRITE(6,1) ((((A(I,J,K,L),I=1,10,2),J=1,10,3),
     +               K=1,10,2),L=1,10,3)
      WRITE(6,*)
      WRITE(6,1)  (((C(I,J,K),I=1,10,2),J=1,10,3),K=1,10,2)
      WRITE(6,*)
      WRITE(6,1)  D
      WRITE(6,*)
    1 FORMAT(10F8.1)
      STOP
      END
