      COMPLEX*16  CD31(10,10,10)
      COMPLEX*8   CES1
      INTEGER*4   N31(10,10,10)
      LOGICAL*4   LS1
      DATA CD31/1000*(0.0,0.0)/
      DATA CES1/(1.0,1.0)/
      DATA LS1/.false./

      N31(10,10,10) = 0
       I1=1
       DO 20 I2=1,5
        DO 30 I3=1,2
         NS1=i3
         IF(.NOT.LS1) CD31(I1,I2,I3)=CES1+NS1
         call sub1(n31(i1,i2,i3))
         N31(I1,I2,I3)=IMAG(NS1/CES1)
 30        CONTINUE
 20         CONTINUE

      WRITE(6,*) CD31(1,1,1),CD31(10,10,10)
      WRITE(6,*) N31(1,1,1),N31(10,10,10)
      STOP
      END

      SUBROUTINE SUB1(N31)
      INTEGER*4   N31
      N31 = 0
      RETURN
      END
