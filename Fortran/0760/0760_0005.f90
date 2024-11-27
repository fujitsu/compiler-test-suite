contains
subroutine sub1()
!$omp threadprivate(/com2/)
common /com2/ j
end subroutine
subroutine sub2()
common /com2/ j
end subroutine
end
