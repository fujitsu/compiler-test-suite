module m1
integer a1(5),a2(5)
!$omp threadprivate (a1,a2)
end
use m1
integer omp_get_thread_num
call sub
print *,  'pass'
end

subroutine sub
end

