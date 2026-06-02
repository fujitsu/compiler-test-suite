subroutine sub01(arg01)
character(*),allocatable :: arg01(:)

allocate(arg01(5))
arg01 = "abcde"
if ( 10 .ne. len(arg01)) print *,'ng1'

!$omp parallel private(arg01)
arg01 = "abcde"
!$omp task private(arg01)
arg01 = "abcde"
!$omp task private(arg01)
arg01 = "abcde"
  if ( 10 .ne. len(arg01)) print *,'ng2'
  if ( any(arg01/=(/('abcde',i=1,5)/))) print *,'ng3'
!$omp end task
if ( 10 .ne. len(arg01)) print *,'ng4'
!$omp end task
if ( 10 .ne. len(arg01)) print *,'ng5'
!$omp taskwait
!$omp end parallel
end subroutine

subroutine sub02(arg01)
character(*),allocatable :: arg01(:)

allocate(arg01(5))
arg01 = "abcde"
if ( 10 .ne. len(arg01)) print *,'ng6'

!$omp task private(arg01)
arg01 = "abcde"
!$omp task private(arg01)
arg01 = "abcde"
!$omp parallel private(arg01)
arg01 = "abcde"
  if ( 10 .ne. len(arg01)) print *,'ng7'
  if ( any(arg01/=(/('abcde',i=1,5)/))) print *,'ng8'
!$omp end parallel
if ( 10 .ne. len(arg01)) print *,'ng9'
!$omp end task
if ( 10 .ne. len(arg01)) print *,'ng10'
!$omp taskwait
!$omp end task
end subroutine

subroutine sub03(arg01)
character(*),allocatable :: arg01(:)

allocate(arg01(5))
arg01 = "abcde"
if ( 10 .ne. len(arg01)) print *,'ng11'

!$omp task private(arg01)
arg01 = "abcde"
!$omp parallel private(arg01)
arg01 = "abcde"
!$omp task private(arg01)
arg01 = "abcde"
  if ( 10 .ne. len(arg01)) print *,'ng12'
  if ( any(arg01/=(/('abcde',i=1,5)/))) print *,'ng13'
!$omp end task
!$omp taskwait
if ( 10 .ne. len(arg01)) print *,'ng14'
!$omp end parallel
if ( 10 .ne. len(arg01)) print *,'ng15'
!$omp end task
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
