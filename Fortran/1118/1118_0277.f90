subroutine sub01(arg01)
character(*),allocatable :: arg01(:)

allocate(arg01(5))
arg01 = "abcde"
if ( 10 .ne. len(arg01)) print *,'ng1'

!$omp parallel
  if ( 10 .ne. len(arg01)) print *,'ng2'
!$omp task 
  if ( 10 .ne. len(arg01)) print *,'ng3'
!$omp task
  if ( 10 .ne. len(arg01)) print *,'ng4'
  if ( any(arg01/=(/('abcde',i=1,5)/))) print *,'ng5'
!$omp end task
!$omp taskwait
if ( 10 .ne. len(arg01)) print *,'ng6'
!$omp end task
!$omp taskwait
if ( 10 .ne. len(arg01)) print *,'ng7'
!$omp end parallel
end subroutine

subroutine sub02(arg01)
character(*),allocatable :: arg01(:)

allocate(arg01(5))
arg01 = "abcde"
if ( 10 .ne. len(arg01)) print *,'ng8'

!$omp task
!$omp task
!$omp parallel firstprivate(arg01)
  if ( 10 .ne. len(arg01)) print *,'ng9'
  if ( any(arg01/=(/('abcde',i=1,5)/))) print *,'ng10'
!$omp end parallel
if ( 10 .ne. len(arg01)) print *,'ng11'
!$omp end task
!$omp taskwait
if ( 10 .ne. len(arg01)) print *,'ng12'
!$omp end task
!$omp taskwait
end subroutine

subroutine sub03(arg01)
character(*),allocatable :: arg01(:)

allocate(arg01(5))
arg01 = "abcde"
if ( 10 .ne. len(arg01)) print *,'ng13'

!$omp task
!$omp parallel firstprivate(arg01)
!$omp task
  if ( 10 .ne. len(arg01)) print *,'ng14'
  if ( any(arg01/=(/('abcde',i=1,5)/))) print *,'ng15'
!$omp end task
!$omp taskwait
if ( 10 .ne. len(arg01)) print *,'ng16'
!$omp end parallel
if ( 10 .ne. len(arg01)) print *,'ng17'
!$omp end task
!$omp taskwait
end subroutine

interface
subroutine sub01(arg01)
character(*),allocatable :: arg01(:)
end subroutine
subroutine sub02(arg01)
character(*),allocatable :: arg01(:)
end subroutine
subroutine sub03(arg01)
character(*),allocatable :: arg01(:)
end subroutine
end interface
character(10),allocatable :: cha01(:)
character(10),allocatable :: cha02(:)
character(10),allocatable :: cha03(:)
call sub01(cha01)
call sub02(cha02)
call sub03(cha03)
print *,'ok'
end
