integer :: vv,ivv
integer :: yya
ivv=1
ivv=ivv
vv=1
yy=1
vv=vv
yy=yy
!$omp atomic capture
vv=yy
yy=ifun(ivv)
!$omp end atomic
!$omp atomic capture
vv=yy
yy=int (ivv)
!$omp end atomic
print *,'pass'
contains
function ifun(ii)
ifun=1
end function
end
