      COMPLEX*8 C1VAL1
      INTEGER I9COMP,I9ANS1
      C1VAL1=(2.0,3.0)
      I9ANS1=CONJG(C1VAL1)
      I9COMP=2
      IF(IABS(I9ANS1-I9COMP).EQ.0)GOTO10
      WRITE(6,100)I9ANS1,I9COMP,C1VAL1
  100 FORMAT(1H0,1X,'I9ANS1=',I5,2X,'I9COMP=',I5,2X,'C1VAL1=',2E10.5)
      STOP
   10 WRITE(6,200)I9ANS1,I9COMP
  200 FORMAT(1H0,1X,'** OK **',2I10)
      STOP
      END