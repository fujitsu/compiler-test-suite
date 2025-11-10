include '001.txt'
!$omp threadprivate(/com1/)
contains
subroutine sub1()
include '000.txt'
include '001.txt'
end subroutine
subroutine sub2()
include '002.txt'
end subroutine
end
