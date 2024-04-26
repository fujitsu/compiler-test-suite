      INTEGER*2:: R(2)=((/-12358_2,-12358_2/))
      INTEGER*4:: WB,VK(1,2,1,1),E2=-151253383

      DO WB=E2,E2+10
      VK=RESHAPE((/4,R(2)**0_1*WB/),(/1,2,1,1/))
      ENDDO
      PRINT*,"VK:",VK
      END
