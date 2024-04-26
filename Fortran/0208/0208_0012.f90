         REAL(2) :: R2 = 1.0
          COMPLEX(2) :: C2 
         C2 = (2,3)
        IF(R2+C2 .NE. (1.0 +(2,3)))PRINT*,"106"
         PRINT*,"pass"
       
        END
