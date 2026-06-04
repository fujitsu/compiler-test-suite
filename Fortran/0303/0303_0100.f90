subroutine sub01(cha4)
character(:),allocatable :: cha4

allocate(character(5)::cha4)

cha4(1:5) = "fghij"

!$omp task default(firstprivate)
  if ( cha4 .ne. 'fghij' ) print *,'ng1'
  cha4(1:5) = "B1234"
!$omp parallel default(firstprivate)
  if ( cha4 .ne. 'B1234' ) print *,'ng2'
!$omp end parallel
!$omp end task
!$omp taskwait
end subroutine

interface
subroutine sub01(cha4)
character(:),allocatable :: cha4
end subroutine
end interface

character(:),allocatable :: cha4
call sub01(cha4)
print *,'pass'
end
