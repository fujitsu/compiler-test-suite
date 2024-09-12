module mod
common /com1/ i1
common /com2/ i2
!$omp threadprivate(/com1/)
!$omp threadprivate(/com2/)
contains
subroutine m_sub1()
common /com1/ i1
common /com2/ i2
!$omp threadprivate(/com1/)
!$omp threadprivate(/com2/)
call i_sub1()
call i_sub2()
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
subroutine m_sub2()
common /com1/ i1
common /com2/ i2
!$omp threadprivate(/com1/)
!$omp threadprivate(/com2/)
call i_sub1()
call i_sub2()
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
subroutine sub1()
 common /com1/ i1
 common /com2/ i2
!$omp threadprivate(/com1/)
!$omp threadprivate(/com2/)
 call i_sub1()
 call i_sub2()
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
 call i_sub1()
 call i_sub2()
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
subroutine i_sub2()
  common /com3/ i1
  common /com4/ i2
 !$omp threadprivate(/com4/)
  end subroutine
use mod
 common /com3/ j1
 common /com4/ j2
 !$omp threadprivate(/com4/)
call sub1()
call sub2()
call m_sub1()
call m_sub2()
call i_sub2()
print *,'pass'
end
