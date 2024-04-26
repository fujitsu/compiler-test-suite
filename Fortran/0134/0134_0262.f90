module m1
contains
subroutine s(x)
integer x(:)
x(2)=1
!$omp parallel firstprivate(x)
if (x(2)/=1)print *,101,x(2)
if (x(3)/=3)print *,102,x(3)
x(2)=2
x(3)=4
if (x(2)/=2)print *,103,x(2)
if (x(3)/=4)print *,104,x(3)
!$omp end parallel
end subroutine
end
use m1
integer ::x(6)=(/-1,-1,-1,-1,-1,3/)
call s(x(2:6:2))
print *,'pass'
end


