      PROGRAM MAIN
      INTEGER RC/15/,D(10)/9,8,7,6,5,4,3,2,1,0/
      INTEGER RC2/3/,C(10)/0,1,2,3,4,5,6,7,8,9/
      INTEGER A(10)
C
      DO 10 K=1,10
        A(K)=IBSET(K,C(K))
   10 CONTINUE
      WRITE(6,*)
      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      DO 20 K=1,10
        A(K)=IBSET(D(K),C(K))
   20 CONTINUE
      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      DO 30 K=1,10
        A(K)=IBSET(-1,RC2)
   30 CONTINUE
      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      DO 40 K=1,10
        A(K)=IBSET(RC,RC2)
   40 CONTINUE
      WRITE(6,*) ' ## TEST 4 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      DO 50 K=1,10
        A(K)=IBSET(K,RC2)
   50 CONTINUE
      WRITE(6,*) ' ## TEST 5 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      DO 60 K=1,10
        A(K)=IBSET(D(K),RC2)
   60 CONTINUE
      WRITE(6,*) ' ## TEST 6 ## '
      WRITE(6,1) A
C
    1 FORMAT(10I7)
      STOP
      END
