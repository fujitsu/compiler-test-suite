common /a/ x
character*3 x
!$omp threadprivate(/a/)
x='123'
call s
contains
subroutine s
common /a/ y
character*3 y
!$omp threadprivate(/a/)
x(2:3)=y(1:2)
if (y/='112')print *,'fail'
print *,'pass'
end subroutine
end
