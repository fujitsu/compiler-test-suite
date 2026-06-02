subroutine sub01(arg01)
character(*),allocatable :: arg01

if ( 10 .ne. len(arg01)) print *,'ng1'

!$omp parallel default(firstprivate)
!$omp task 
!$omp task
  if ( 10 .ne. len(arg01)) print *,'ng2'
  if ( arg01 .ne. '1234567890') print *,'ng3'
!$omp end task
if ( 10 .ne. len(arg01)) print *,'ng4'
!$omp end task
if ( 10 .ne. len(arg01)) print *,'ng5'
!$omp end parallel
end subroutine

subroutine sub02(arg01)
character(*),allocatable :: arg01

if ( 10 .ne. len(arg01)) print *,'ng6'

!$omp parallel default(firstprivate)
!$omp task 
!$omp task
  if ( 10 .ne. len(arg01)) print *,'ng7'
  if ( arg01 .ne. '1234567890') print *,'ng8'
!$omp end task
if ( 10 .ne. len(arg01)) print *,'ng9'
!$omp end task
if ( 10 .ne. len(arg01)) print *,'ng10'
!$omp end parallel
end subroutine

subroutine sub03(arg01)
character(*),allocatable :: arg01

if ( 10 .ne. len(arg01)) print *,'ng11'

!$omp task 
!$omp task
!$omp parallel default(firstprivate)
  if ( 10 .ne. len(arg01)) print *,'ng12'
  if ( arg01 .ne. '1234567890') print *,'ng13'
!$omp end parallel
if ( 10 .ne. len(arg01)) print *,'ng14'
!$omp end task
if ( 10 .ne. len(arg01)) print *,'ng15'
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
allocate(cha01)
allocate(cha02)
allocate(cha03)
cha01 = "1234567890"
cha02 = "1234567890"
cha03 = "1234567890"
call sub01(cha01)
call sub02(cha02)
call sub03(cha03)
print *,'ok'
end
