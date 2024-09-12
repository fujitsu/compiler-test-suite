      integer DC10(5,5)/25*1/

      K1 = 1
      DO K1=K1,5
         DO I5=1,2
            DC10(I5,K1) = 100
         END DO
      END DO
      write(6,*) dc10
      END
