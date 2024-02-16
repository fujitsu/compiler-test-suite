      PROGRAM MAIN
      REAL       REAL_A2(10,10),REAL_B2(10,10)
      INTEGER    INT_A2(10,10),INT_B2(10,10)
C
      DATA REAL_A2,INT_A2/100*1.0,100*1/
      DATA REAL_B2,INT_B2/100*1.0,100*1/
      I=INT(COS(0.0))*5
C
      REAL_A2(1,1:10)=REAL_A2(2,1:10)+3.0
      REAL_A2(I+1,1:10)=REAL_A2(I+1,:)/1.0
C
      INT_A2(1::3,1)=INT_A2(1::3,1)+INT_A2(1::3,1)
      INT_A2(1::3,1)=INT_A2(1::3,2)/1
C
      REAL_A2(3,1:5)=REAL_A2(1,4:8)+3.0
      I=2
      REAL_A2(1,5:9)=REAL_A2(2,1:10:2)+3.0
      INT_A2(I,1::2)=INT_A2(2,1:10:2)+INT_A2(1,1:5)
C
      DO 10 INC1=1,10
        REAL_B2(1,INC1)=REAL_B2(2,INC1)+3.0
   10 CONTINUE
      DO 20 INC1=1,10
        REAL_B2(6,INC1)=REAL_B2(6,INC1)/1.0
   20 CONTINUE
      DO 30 INC1=1,10,3
          INT_B2(INC1,1)=INT_B2(INC1,1)+INT_B2(INC1,1)
   30 CONTINUE
      DO 40 INC1=1,10,3
        INT_B2(INC1,1)=INT_B2(INC1,2)
   40 CONTINUE
      DO 50 INC1=1,5
        REAL_B2(3,INC1)=REAL_B2(1,INC1+3)+3.0
   50 CONTINUE
      DO 60 INC1=1,10,2
        REAL_B2(1,(INC1+1)/2+4)=REAL_B2(2,INC1)+3.0
   60 CONTINUE
      DO 70 INC1=1,5
        INT_B2(2,INC1*2-1)=INT_B2(2,INC1*2-1)+INT_B2(1,INC1)
   70 CONTINUE

C
C
      DO 100 INC1=1,10
        DO 100 INC2=1,10
          IF (REAL_A2(INC1,INC2) .NE. REAL_B2(INC1,INC2)) THEN
            WRITE(6,*) '***  NG  (REAL) ***'
            WRITE(6,*) 'REAL_A2(',REAL_A2,')'
            WRITE(6,*) '"RIGHT" ',REAL_B2
            GOTO 110
          END IF
  100 CONTINUE
  110 CONTINUE
      DO 120 INC1=1,10
        DO 120 INC2=1,10
          IF (INT_A2(INC1,INC2) .NE. INT_B2(INC1,INC2)) THEN
            WRITE(6,*) '***  NG  (INTEGER) ***'
            WRITE(6,*) 'INT_A2(',INT_A2,')'
            WRITE(6,*) '"RIGHT" ',INT_B2
            GOTO 130
          END IF
  120 CONTINUE
  130 CONTINUE
      DO 150 INC1=1,10
        DO 150 INC2=1,10
          IF ((REAL_A2(INC1,INC2) .NE. REAL_B2(INC1,INC2)) .OR.
     1        (INT_A2(INC1,INC2) .NE. INT_B2(INC1,INC2)))  THEN
            GOTO 160
          END IF
  150 CONTINUE
      WRITE (6,*) '*** OK ***'
  160 CONTINUE
      STOP
      END
