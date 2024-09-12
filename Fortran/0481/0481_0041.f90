type ty1
integer :: vv
integer :: yy
end type
type (ty1) :: str
str%vv=1
str%yy=1
str%vv=str%vv
str%yy=str%yy
!$omp atomic capture
str%vv=str%yy
str%yy=int(1.0)
!$omp end atomic
print *,'pass'
contains
function ifun(ii)
ifun=1
end function
end
