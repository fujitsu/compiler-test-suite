      INTEGER*4 IB(-9:20),J1,J2,J3,J4
      REAL*8 DA(10)/1,2,3,4,5,6,7,8,9,10/
      IB = 0
      DO 20 I2=1,10
        IB(I2)=IDINT(DA(I2))
 20   CONTINUE
      print *,ib
      STOP
      END
