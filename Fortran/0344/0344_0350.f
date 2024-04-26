      PROGRAM MAIN
      COMPLEX TRF(50),TR1(50)
      DATA MC/25/,NI/50/
      DATA TRF/50*(0.,0.)/
      CALL PSVMCH(TRF,TR1,MC,NI)
      STOP
      END
C
      SUBROUTINE PSVMCH(TRF,TR1,MC,NI)
      COMPLEX   TRF(NI),TR1(NI)
      DO 170 I=1,MC
        I1=2*I-1
        I2=2*I
        J1=2*(MC+1-I)-1
        J2=2*(MC+1-I)
        TR1(J1)=-TRF(I1)
        TR1(J2)=-TRF(I2)
  170 CONTINUE
      
      WRITE(6,*) TR1
      RETURN
      END
