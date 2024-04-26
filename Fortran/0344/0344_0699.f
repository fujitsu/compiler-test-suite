      REAL*4 D(100)/100*0.0/
      DATA N/100/
      IK =0
      DO 160 I =1  , N
          IF( D(I) .EQ. 0.0  ) GO TO 160
          IK =  I
        GO TO 170
 160  CONTINUE
 170  CONTINUE
      WRITE(6,*) IK
      STOP
      END
