        IF (KIND((20.2_2,10.1_2)) /= 2) PRINT*,'101'
        IF (KIND((20.2_2,-10.1_2)) /= 2) PRINT*,'102'
        IF (KIND((-20.2_2,10.1_2)) /= 2) PRINT*,'103'
        IF (KIND((-20.2_2,-10.1_2)) /= 2) PRINT*,'104'
        PRINT*,"pass"
        END

