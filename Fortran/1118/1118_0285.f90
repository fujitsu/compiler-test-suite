subroutine sub01(arg01)
character(*),allocatable :: arg01

allocate(arg01)
arg01 = "abcde"
if ( 10 .ne. len(arg01)) print *,'ng1'

!$omp parallel private(arg01)
arg01 = "abcde"
!$omp task private(arg01)
arg01 = "abcde"
!$omp task private(arg01)
arg01 = "abcde"
  if ( 10 .ne. len(arg01)) print *,'ng2'
  if ( arg01 .ne. 'abcde') print *,'ng3'
!$omp end task
!$omp taskwait
if ( 10 .ne. len(arg01)) print *,'ng4'
!$omp end task
!$omp taskwait
if ( 10 .ne. len(arg01)) print *,'ng5'
!$omp end parallel
end subroutine

subroutine sub02(arg01)
character(*),allocatable :: arg01

allocate(arg01)
arg01 = "abcde"
if ( 10 .ne. len(arg01)) print *,'ng1'

!$omp parallel private(arg01)
arg01 = "abcde"
!$omp task private(arg01)
arg01 = "abcde"
!$omp task private(arg01)
arg01 = "abcde"
  if ( 10 .ne. len(arg01)) print *,'ng2'
  if ( arg01 .ne. 'abcde') print *,'ng3'
!$omp end task
!$omp taskwait
if ( 10 .ne. len(arg01)) print *,'ng4'
!$omp end task
!$omp taskwait
if ( 10 .ne. len(arg01)) print *,'ng5'
!$omp end parallel
end subroutine

subroutine sub03(arg01)
character(*),allocatable :: arg01

allocate(arg01)
arg01 = "abcde"
if ( 10 .ne. len(arg01)) print *,'ng1'

!$omp task private(arg01)
arg01 = "abcde"
!$omp task private(arg01)
arg01 = "abcde"
!$omp parallel  private(arg01)
arg01 = "abcde"
  if ( 10 .ne. len(arg01)) print *,'ng2'
  if ( arg01 .ne. 'abcde') print *,'ng3'
!$omp end parallel
!$omp taskwait
if ( 10 .ne. len(arg01)) print *,'ng4'
!$omp end task
!$omp taskwait
if ( 10 .ne. len(arg01)) print *,'ng5'
!$omp end task
end subroutine

interface
subroutine sub01(arg01)
character(*),allocatable :: arg01
end subroutine
subroutine sub02(arg01)
character(*),allocatable :: arg01
end subroutine
subroutine sub03(arg01)
character(*),allocatable :: arg01
end subroutine
end interface
character(10),allocatable :: cha01
character(10),allocatable :: cha02
character(10),allocatable :: cha03
call sub01(cha01)
call sub02(cha02)
call sub03(cha03)
print *,'ok'
end
