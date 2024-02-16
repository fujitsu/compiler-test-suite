      PROGRAM MAIN
      REAL       REAL_A1(10),REAL_B1(10)
      REAL       REAL_A2(10,10),REAL_B2(10,10),DUMMY(5)
      INTEGER I
      DATA I/1/
C
      REAL_A1=1.0
      REAL_A2=2.0
      REAL_A2(1,::2)=REAL_A1(10:1:-2)+REAL_A2(1,::2)
      REAL_A2(1,::2)=REAL_A2(I,I:I+4)*3
C
      DO 10 INC1=1,10
        REAL_B1(INC1)=1.0
   10 CONTINUE
      DO 20 INC1=1,10
        DO 20 INC2=1,10
          REAL_B2(INC1,INC2)=2.0
   20 CONTINUE
      DO 30 INC1=1,10,2
          REAL_B2(1,INC1)=REAL_B1(11-INC1)+REAL_B2(1,INC1)
   30 CONTINUE
      DO 40 INC1=1,5
          DUMMY(INC1)=REAL_B2(1,INC1)*3
   40 CONTINUE
      DO 50 INC1=1,5
          REAL_B2(1,INC1*2-1)=DUMMY(INC1)
   50 CONTINUE
C
C
      DO 100 INC1=1,10
        DO 100 INC2=1,10
          IF (REAL_A2(INC1,INC2) .NE. REAL_B2(INC1,INC2)) THEN
            WRITE(6,*) '*** NG  (REAL) ***'
            WRITE(6,*) 'REAL_A2(',REAL_A2,')'
            WRITE(6,*) '"RIGHT" ',REAL_B2
            GOTO 110
          END IF
  100 CONTINUE
      WRITE (6,*) '*** OK ***'
  110 CONTINUE
      STOP
      END
