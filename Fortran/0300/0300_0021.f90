      INTEGER*2:: R(2)=(/0_2,1_2/)
      INTEGER*4:: WB,VK(0:10),E2=32760

      DO WB=E2,E2+10
        VK(WB-E2)=R(2)**0_2*WB
      ENDDO
      PRINT*,"VK:",VK
      END
