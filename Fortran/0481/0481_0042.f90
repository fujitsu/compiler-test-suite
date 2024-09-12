integer :: vv
integer :: yy
iyy=1
vv=1
yy=1
vv=vv
yy=yy
!$omp atomic capture
vv=yy
yy=int(iyy+1)
!$omp end atomic
print *,'pass'
contains
function ifun(ii)
ifun=1
end function
end
