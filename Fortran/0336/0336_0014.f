
      INTEGER*4  ,DIMENSION(3,3,3)::IA
      K=0
      DO I1=1,3
      DO I2=1,3
         IA(I1,1:3,I2)= K
         K=K+1
      END DO
      END DO
      WRITE(6,*)IA

      END
