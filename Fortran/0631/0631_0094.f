      PROGRAM MAIN
      INTEGER A(100,100)
      INTEGER B(100,100)
      INTEGER C(5000)
      DATA A,B/10000*1,10000*2/,C/5000*3/

      DO 10 K=1,3000,5
        IF (K.GT.100) GOTO 10
        DO 20 I= 1,100
          C(I) = C(I) + I
          DO 40 J=1,3000,3
            IF (J.GT.100) GOTO 40
            C(J) = A(K,1) - B(1,J) + C(J)
            A(K,1) = A(K,1) + C(J)
   40     CONTINUE
          DO 30 J=1,3000,3
            IF (J.GT.100) GOTO 30
            IF (A(I,J).EQ.10) GOTO 30
            A(I,J) = A(I,J) + B(I,J)
            B(I,J) = B(I,J) / I
   30     CONTINUE
   25     C(I) = C(I) - I / 2
          C(I) = MOD(C(I),I)
   20   CONTINUE
   10 CONTINUE

 50   WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,*) ((A(I,J),I=1,10,10),J=1,100,10)
      WRITE(6,*)
      WRITE(6,*) ' # B # '
      WRITE(6,*)
      WRITE(6,*) ((B(I,J),I=1,100,10),J=1,100,10)
      WRITE(6,*)
      WRITE(6,*) ' # C # '
      WRITE(6,*) (C(I),I=1,5000,50)
      WRITE(6,*)

      DO 60 I=1,10
        DO 90 J=1,3000,5
          IF (J.GT.100) GOTO 90
          IF (A(I,J).EQ.10) GOTO 90
          A(I,J) = A(I,J) + B(I,J)
          B(I,J) = B(I,J) / I
   90   CONTINUE
        IF (K.GT.100) GOTO 60
        DO 70 K= 1,100
          C(K) = C(K) + I
          DO 80 J=1,3000,2
            IF (J.GT.100) GOTO 80
            C(J) = A(K,1) - B(1,J) + C(J)
            A(K,1) = A(K,1) + C(J)
   80     CONTINUE
          C(K) = C(K) - K / 2
          C(K) = MOD(C(K),K)
   70   CONTINUE
   60 CONTINUE

      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,*) ((A(I,J),I=1,10,10),J=1,100,10)
      WRITE(6,*)
      WRITE(6,*) ' # B # '
      WRITE(6,*)
      WRITE(6,*) ((B(I,J),I=1,100,10),J=1,100,10)
      WRITE(6,*)
      WRITE(6,*) ' # C # '
      WRITE(6,*) (C(I),I=1,5000,50)
      WRITE(6,*)
      STOP
      END
