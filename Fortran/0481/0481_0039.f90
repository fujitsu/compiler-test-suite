integer vv
integer :: yy
vv=1
yy=1
vv=vv
yy=yy
!$omp atomic capture
vv=yy
yy=ifun()
!$omp end atomic
print *,'pass'
contains
function ifun()
ifun=1
end function
end