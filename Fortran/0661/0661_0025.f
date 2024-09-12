      INTEGER I2,I3,I1,R(200)
      LOGICAL*1 L1A(2)/2*.false./,L4A(2)
      DATA I1,I2,I3/3*1/
      IF (
     1    .NOT.L1A(2).AND.
     1                    .NOT.I2.EQ.I3 .AND.
     1         I3.EQ.I1
     1                                 ) R(191)=1
      WRITE(6,*) '*****PASS*****'
      END
