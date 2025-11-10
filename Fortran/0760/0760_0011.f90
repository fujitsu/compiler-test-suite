include '002.txt'
contains
subroutine sub1()
!$omp threadprivate(/com1/)
include '001.txt'
end subroutine
subroutine sub2()
include '002.txt'
!$omp threadprivate(/com1/)
end subroutine
end
