include '001.txt'
contains
subroutine sub1()
include '001.txt'
!$omp threadprivate(/com1/)
end subroutine
subroutine sub2()
!$omp threadprivate(/com1/)
include '001.txt'
end subroutine
end
