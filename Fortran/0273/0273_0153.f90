COMPLEX*4::ARR(4)
ARR=(/COMPLEX*4::[(1,2),(3,4),(5,6),(7,8)]/)
IF(ARR(1) .NE. (1,2))PRINT*,"101"
IF(ARR(2) .NE. (3,4))PRINT*,"102"
IF(ARR(3) .NE. (5,6))PRINT*,"103"
IF(ARR(4) .NE. (7,8))PRINT*,"104"
PRINT*,"PASS"
END
