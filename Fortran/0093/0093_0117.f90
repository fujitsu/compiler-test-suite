complex :: aa(4)
real :: jj,kk 

aa(2) =(3.45,4.78)
jj= aa(2)%re
kk= aa(2)%im

IF(SIZE(aa%re) .ne. 4) print*,101
IF(SIZEOF(aa%im) .ne. 16) print*,102
IF(aa(2)%re .ne. 3.45) print*, 103
IF(aa(2)%im .ne. 4.78) print*, 104
IF(jj .ne. 3.45) print*, 105
IF(kk .ne. 4.78) print*, 106
if(ubound( aa%re ,1) .ne. 4) print*,109
if(lbound( aa%im ,1) .ne. 1) print*,110
PRINT*,"PASS"
end
