call s1
call s2
end
subroutine s1
real ,dimension(10) :: var
real ,dimension(10) :: array
pointer (ptr,var)
ptr = loc(array)
associate(ppp=>ptr)
!$omp parallel  firstprivate(ptr)
var = 1.0
!$omp end parallel
!$omp sections firstprivate(ptr) lastprivate(ptr)
var = 2
!$omp end sections
end associate
end
subroutine s2
integer:: fun
!$omp task firstprivate(fun)
!$omp end task
associate(ppp=>fun)
!$omp task firstprivate(fun)
!$omp end task
end associate
!$omp task firstprivate(fun)
!$omp end task
end 


