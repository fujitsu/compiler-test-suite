         REAL *4  D(100),X(50,2)
         DATA X/100*0.0/
         LOGICAL    LT00A
         DO 9991 I=1,100
9991       D(I)=1.0
         DO 10 I=1,10,1
         LT00A=I.LE.2
         IF (.NOT.LT00A)GO TO 4100
         DO 4500 IX00A=1,50,1
         X(IX00A,I)=2.0
 4500    CONTINUE
 4100    CONTINUE
         LT00A=I.LE.2
         IF (.NOT.LT00A)GO TO 4301
         DO 4600 IX00A=1,50,1
 4600    CONTINUE
 4301     DO 4700 IX00A=1,25,1
 4700    CONTINUE
         DO 4800 IX00A=1,4,1
 4800    CONTINUE
         DO 1 J=1,25,1
          GOTO 180
1         CONTINUE
 10       CONTINUE
77777   CONTINUE
 180    print*,'pass'
        END
