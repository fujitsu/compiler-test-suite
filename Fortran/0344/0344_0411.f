      PROGRAM MAIN
      INTEGER RC/15/,D(10)/9,8,7,6,5,4,3,2,1,0/
      INTEGER C(10)/0,1,2,3,4,5,6,7,8,9/
      INTEGER A(10)
C
      DO 10 I=1,10
        A(I)=IBCLR(5,1)
   10 CONTINUE
      
      WRITE(6,*)
      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      DO 20 J=1,10
        A(J)=IBCLR(RC,2)
   20 CONTINUE
      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      DO 30 I=1,10
        A(I)=IBCLR(I,1)
   30 CONTINUE
      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      DO 40 K=1,10
        A(K)=IBCLR(D(K),3)
   40 CONTINUE
      WRITE(6,*) ' ## TEST 4 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      DO 50 K=1,10
        A(K)=IBCLR(-1,K)
   50 CONTINUE
      WRITE(6,*) ' ## TEST 5 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      DO 60 K=1,10
        A(K)=IBCLR(RC,K)
   60 CONTINUE
      WRITE(6,*) ' ## TEST 6 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      DO 70 K=1,10
        A(K)=IBCLR(K,K)
   70 CONTINUE
      WRITE(6,*) ' ## TEST 7 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      DO 80 K=1,10
        A(K)=IBCLR(D(K),K)
   80 CONTINUE
      WRITE(6,*) ' ## TEST 8 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      DO 90 K=1,10
        A(K)=IBCLR(-1,C(K))
   90 CONTINUE
      WRITE(6,*) ' ## TEST 9 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      DO 100 K=1,10
        A(K)=IBCLR(RC,C(K))
  100 CONTINUE
      WRITE(6,*) ' ## TEST 10 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
    1 FORMAT(10I7)
      STOP
      END
