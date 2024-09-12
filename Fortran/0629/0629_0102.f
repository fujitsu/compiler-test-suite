      IMPLICIT  REAL*8(D)
      DIMENSION  DB10(30,30),DB20(30,30),
     *     DM10(-30:-1,-30:-1),DM20(-30:-1,-30:-1),
     *     DM30(-30:-1,-30:-1)
      DATA    DB10/900*10.D0/,DB20/900*9.D0/
      DATA    DM10/900*4.D0/,DM20/900*5.D0/,DM30/900*6.D0/
      DATA    IT3/3/

      DO 40 I2=2,10
         DO 45 J2=I2+IT3,20
 45      DB20(I2,J2) = DB10(I2,J2) - DM20(-I2,-J2)
         DM20(-1,-I2) = DM10(-I2,-1) - DM30(1-I2,1-I2)
         DM30(-I2,-I2) = DMAX1(DM30(1-I2,-I2),DM30(-I2,1-I2))
 40   CONTINUE

      WRITE(6,*) ' (DB20) ',((DB20(I,J),I=1,10),J=1,20)
      WRITE(6,*) ' (DM20) ',(DM20(-1,I),I=-10,-1)
      WRITE(6,*) ' (DM30) ',(DM30(I,I),I=-10,-1)

      STOP
      END
