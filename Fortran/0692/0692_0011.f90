integer x
common /a/ x(3)
!$omp threadprivate(/a/)
x=(/1,2,3/)
call s
contains
subroutine s
integer y
common /a/ y(3)
!$omp threadprivate(/a/)
x(2:3)=y(1:2)
if (any(y/=(/1,1,2/)))print *,'y=',y,loc(y)
if (any(x/=(/1,1,2/)))print *,'x=',x
print *,'pass'
end subroutine
end
