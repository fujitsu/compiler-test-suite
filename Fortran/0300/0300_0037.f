      REAL*4      E51(5,5,5,5,5)/3125*0./,E52(5,5,5,5,5)
      data n/5/
      i2=1
      i1 =2
       DO 130 I3=1,N/2
       DO 140 I4=1,5
       DO 150 I5=I4,5
          E51(I4,I5,I3,I2,(I1+1)/2)=1
 150   CONTINUE
 140   CONTINUE
 130   CONTINUE
      WRITE(6,*) E51
      STOP
      end
