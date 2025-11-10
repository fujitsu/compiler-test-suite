include '000.txt'
common /coM2/ j
!$omp threadprivate(/coM2/)
contains
subroutine sub1()
common /com/ i
common /coM2/ j
end subroutine
subroutine sub2()
common /com2/ j
end subroutine
end
