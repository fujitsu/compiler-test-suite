      PROGRAM MAIN
      INTEGER D(10)/9,8,7,6,5,4,3,2,1,0/,USER,B(10)
      INTEGER RC2/6/,RC3/8/,C(10)/-5,-4,-3,-2,-1,0,1,2,3,4/
      INTEGER A(10)
C
      DO 10 I=1,10
        A(I)=IBCLR(D(RC2),C(RC3))
   10 CONTINUE
      
      WRITE(6,*)
      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      USER = 1
      DO 20 I=1,10
        A(I)=IBCLR(USER,C(RC2))
        USER = USER + 1
   20 CONTINUE
      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      DO 30 I=1,10
        A(I)=IBCLR(MOD(I,2),D(RC3))
   30 CONTINUE
      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      DO 40 I=1,10
        B(I) = I
        A(I)=IBCLR(B(I),D(RC3))
   40 CONTINUE
      WRITE(6,*) ' ## TEST 4 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      USER = 1
      DO 50 I=1,10
        A(I)=IBCLR(D(RC2),USER)
        USER = USER + 1
   50 CONTINUE
      WRITE(6,*) ' ## TEST 5 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      USER = 1
      DO 60 I=1,10
        A(I)=IBCLR(USER,USER)
        USER = USER + 1
   60 CONTINUE
      WRITE(6,*) ' ## TEST 6 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      USER = 1
      DO 70 I=1,10
        A(I)=IBCLR(NOT(I),USER)
        USER = USER + 1
   70 CONTINUE
      WRITE(6,*) ' ## TEST 7 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      USER = 1
      DO 80 I=1,10
        B(I) = I + 1
        A(I)=IBCLR(B(I),USER)
        USER = USER + 1
   80 CONTINUE
      WRITE(6,*) ' ## TEST 8 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      DO 90 I=1,10
        A(I)=IBCLR(D(RC2),MOD(I,3))
   90 CONTINUE
      WRITE(6,*) ' ## TEST 9 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      USER = 1
      DO 100 I=1,10
        A(I)=IBCLR(USER,MOD(I,3))
        USER = USER + 1
  100 CONTINUE
      WRITE(6,*) ' ## TEST 10 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      DO 110 I=1,10
        A(I)=IBCLR(MOD(I,2),MOD(I,5))
  110 CONTINUE
      WRITE(6,*) ' ## TEST 11 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      DO 120 I=1,10
        B(I) = I ** 2
        A(I)=IBCLR(B(I),MOD(I,4))
  120 CONTINUE
      WRITE(6,*) ' ## TEST 12 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      DO 130 I=1,10
        B(I) = 1
        A(I)=IBCLR(C(RC2),B(I))
        USER = USER + 1
  130 CONTINUE
      WRITE(6,*) ' ## TEST 13 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      DO 140 I=1,10
        B(I) = 0
        A(I)=IBCLR(USER,B(I))
        USER = USER + 1
  140 CONTINUE
      WRITE(6,*) ' ## TEST 14 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      DO 150 I=1,10
        B(I) = 4
        A(I)=IBCLR(MOD(I,2),B(I)+1)
  150 CONTINUE
      WRITE(6,*) ' ## TEST 15 ## '
      WRITE(6,1) A
      WRITE(6,*)
C
      DO 160 I=1,5
        B(I) = I ** 2
        A(I)=IBCLR(B(I),B(I))
  160 CONTINUE
      WRITE(6,*) ' ## TEST 16 ## '
      WRITE(6,1) A
    1 FORMAT(10I7)
C
      STOP
      END
