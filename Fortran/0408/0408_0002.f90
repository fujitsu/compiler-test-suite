module mod
common /com1/ i1
common /com2/ i2
!$omp threadprivate(/com1/)
!$omp threadprivate(/com2/)
contains
subroutine sub1()
common /com1/ i1
common /com2/ i2
!$omp threadprivate(/com1/)
!$omp threadprivate(/com2/)
contains
subroutine i_sub1()
common /com1/ i1
common /com2/ i2
!$omp threadprivate(/com1/)
!$omp threadprivate(/com2/)
end subroutine
subroutine i_sub2()
common /com1/ i1
common /com2/ i2
!$omp threadprivate(/com1/)
!$omp threadprivate(/com2/)
end subroutine
end subroutine
subroutine sub2()
common /com1/ i1
common /com2/ i2
!$omp threadprivate(/com1/)
!$omp threadprivate(/com2/)
contains
subroutine i_sub1()
common /com1/ i1
common /com2/ i2
!$omp threadprivate(/com1/)
!$omp threadprivate(/com2/)
end subroutine
subroutine i_sub2()
common /com1/ i1
common /com2/ i2
!$omp threadprivate(/com1/)
!$omp threadprivate(/com2/)
end subroutine
end subroutine
end
print *,'pass'
end
