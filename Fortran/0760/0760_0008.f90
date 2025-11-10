include '001.txt'
contains
subroutine sub1()
!$omp threadprivate(/com1/)
common /com1/ i
end subroutine
subroutine sub2()
common /com1/ j
end subroutine
end
