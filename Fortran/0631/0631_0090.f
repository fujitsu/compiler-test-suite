      PROGRAM MAIN
      INTEGER A(3000),B(3000),L
      COMMON /PP/A,B,L,M

      DO 10 I=1,3000
        A(I) = I
        B(I) = -I
   10 CONTINUE

      DO 20 L = 1,100
        DO 30 M = 1,100
          C = L + M
   30   CONTINUE
        DO 20 I1=1,10
          DO 20 I2=1,10
            DO 20 I3=1,10
   20 CONTINUE

      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,*)
      WRITE(6,*) (A(I),I=1,3000,500)
      WRITE(6,*)
      WRITE(6,*) ' # B # '
      WRITE(6,*)
      WRITE(6,*) (B(I),I=1,3000,500)
      WRITE(6,*)

      DO 40 L = 1,100
        DO 50 M = 1,10
   50   CONTINUE
        DO 40 I1=1,10
          DO 40 I2=1,10
            DO 40 I3=1,10
              C = L + M
   40 CONTINUE

      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,*)
      WRITE(6,*) (A(I),I=1,3000,500)
      WRITE(6,*)
      WRITE(6,*) ' # B # '
      WRITE(6,*)
      WRITE(6,*) (B(I),I=1,3000,500)
      WRITE(6,*)

      DO 60 L = 1,100
        DO 70 M = 1,100
          D = L + M
   70   CONTINUE
        DO 80 I1=1,10
          C = I
          DO 90 I2=1,10
            C = C + I2
            DO 100 I3=1,10
              C = C + I3
  100       CONTINUE
   90     CONTINUE
   80   CONTINUE
   60 CONTINUE

      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,*)
      WRITE(6,*) (A(I),I=1,3000,500)
      WRITE(6,*)
      WRITE(6,*) ' # B # '
      WRITE(6,*)
      WRITE(6,*) (B(I),I=1,3000,500)
      WRITE(6,*)

      STOP
      END
