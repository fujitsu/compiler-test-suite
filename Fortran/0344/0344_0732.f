      REAL*4 D(10000)/5000*0.0,5000*1.0/
      DATA N/10000/
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
