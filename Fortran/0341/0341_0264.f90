      REAL    *4  RA(10),RC (10,10,10)
      COMPLEX *8          CEB(10,10),CEC(10,10,10)
      DATA RA/10*1/, RC/1000*2/, CEB/100*3./, CEC/1000*0./
      DO 31 I1=1,10
        DO 32 I2=1,I1
          DO 33 I3=1,10
            CEC(I3,I2,I1)=RA(I1)*CEB(I2,I1)+RC(I3,I2,I1)
   33     CONTINUE
   32   CONTINUE
   31 CONTINUE
      WRITE(6,*) 'CEC=',SUM(CEC)
      END
