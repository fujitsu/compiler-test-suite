COMPLEX(KIND=2) :: C2
C2=(3.0_2,4.0_2)
IF(C2%RE .NE. 3.0_2)PRINT*,"101"
IF(C2%IM .NE. 4.0_2)PRINT*,"102"
PRINT*,"PASS"
END
