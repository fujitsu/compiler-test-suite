REAL(2) :: R2(8)
COMPLEX(2) :: C2(9)
R2(8:4:-2)=5.0_2
R2(1:3:2)=6.0_2

C2(1:4:2)=(3.0_2,4.0_2)
C2(9:5:-3)=(7.0_2,8.0_2)
IF(R2(4) .NE. 5.0_2)PRINT*,"101"
IF(R2(6) .NE. 5.0_2)PRINT*,"102"
IF(R2(8) .NE. 5.0_2)PRINT*,"103"
IF(R2(3) .NE. 6.0_2)PRINT*,"104"
IF(C2(3) .NE. (3.0_2,4.0_2))PRINT*,"105"
IF(C2(9) .NE. (7.0_2,8.0_2))PRINT*,"106"
IF(C2(6) .NE. (7.0_2,8.0_2))PRINT*,"107"
PRINT*,"PASS"
END
