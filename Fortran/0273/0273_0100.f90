        REAL*2,PARAMETER::R2=1.5_2
        IF(KIND(R2) /= 2) PRINT *,'103'
        IF(KIND(10.5_2) /= 2) PRINT *,'101'
        IF(KIND([1.5_2,2.5_2]) /= 2) PRINT *,'102'
        PRINT *,'PASS'
        END

