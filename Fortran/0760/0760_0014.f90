contains
subroutine sub1()
include '001.txt'
end subroutine
subroutine sub2()
!$omp threadprivate(/com1/)
include '002.txt'
end subroutine
end
