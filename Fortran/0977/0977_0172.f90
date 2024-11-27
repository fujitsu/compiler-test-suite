module m1
integer,allocatable::a(:)
!$omp threadprivate(a)
end
subroutine sub
use m1
allocate(a(3))
a=(/11,12,13/)
end
subroutine sss
use m1
if (any(a/=(/11,12,13/)))write(6,*) "NG"
end
call sub
call sss
print *,'pass'
end

