  REAL(2) :: R2(4)
          COMPLEX(KIND=2) :: C2(4)
          R2=5.0_2
          C2=(6.0_2,7.0_2)
          IF(ANY(R2 .NE. 5.0_2))PRINT*,"101"
          PRINT*,"pass"
          END
        
