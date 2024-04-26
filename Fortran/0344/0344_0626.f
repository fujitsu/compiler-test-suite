      INTEGER M(10)
      DO 10 I=1,10
        IF(I-5) 20,30,40
  20      M(I)=-1
        GOTO 10
  30      M(I)=0
        GOTO 20
  40      M(I)=1
        GOTO 20
  10  CONTINUE
      WRITE(6,1000) M
 1000 FORMAT(I10)
      STOP
      END
