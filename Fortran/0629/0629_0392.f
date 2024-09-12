      INTEGER*2 ANS(10),A(10)
      data a/10*10/
      DATA ANS/10*0/
      I1  = 1
      I2  = 2
      DO  I =    I1,I2
        DO  J =    I1,I2
          ANS(5)   =    ANS(5)+A(J)
        enddo
        ANS(7)   =    ANS(7)+A(I)
      enddo
      WRITE(6,*)  ANS
      END
