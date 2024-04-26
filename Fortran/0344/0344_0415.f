      PROGRAM MAIN
      INTEGER RC,D(10)/9,8,7,6,5,4,3,2,1,0/,USER
      INTEGER RC2/6/,C(10)/ 5,4,3,2,1,0,1,2,3,4/
      LOGICAL L2/.FALSE./
C
      USER = 1
      DO 10 I=1,10
        L2 = BTEST(USER,I)
        USER = USER + 1
   10 CONTINUE
      
      WRITE(6,*)
      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,*)
      WRITE(6,*) L2
      WRITE(6,*)
C
      USER = 1
      DO 20 I=1,10
        RC = IBSET(I,D(USER))
        USER = USER + 1
   20 CONTINUE
      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*) RC
      WRITE(6,*)
C
      USER = 1
      DO 30 I=1,10
        RC2 = IBCLR(C(USER),C(I))
        USER = USER + 1
   30 CONTINUE
      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,*) RC2
      WRITE(6,*)
C
      USER = 1
      DO 40 I=1,10,2
        IF (BTEST(I,C(D(I)))) THEN
          USER = USER + I
        ENDIF
   40 CONTINUE
      WRITE(6,*) ' ## TEST 4 ## '
      WRITE(6,*) USER
      WRITE(6,*)
C
      USER = 0
      DO 50 I=1,10,2
        USER = USER + 1
        IF (BTEST(I+USER,C(D(USER)))) THEN
          RC = USER + I
        ENDIF
   50 CONTINUE
      WRITE(6,*) ' ## TEST 5 ## '
      WRITE(6,*) RC
      WRITE(6,*)
      STOP
      END
