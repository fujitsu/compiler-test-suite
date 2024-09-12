call test01()
print *,'pass'
end 

module mod01
integer k,kk
!$omp threadprivate(i,j)
end
subroutine test01()
use mod01
end
