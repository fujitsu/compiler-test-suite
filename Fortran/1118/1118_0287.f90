subroutine sub01(arg01)
character(*) :: arg01(:)

if ( 10 .ne. len(arg01)) print *,'ng1'

!$omp parallel private(arg01)
arg01 = "1234567890"
!$omp task private(arg01) 
arg01 = "1234567890"
!$omp task private(arg01)
arg01 = "1234567890"
  if ( 10 .ne. len(arg01)) print *,'ng2'
  if ( any(arg01/=(/('1234567890',i=1,10)/))) print *,'ng3'
!$omp end task
if ( 10 .ne. len(arg01)) print *,'ng4'
!$omp end task
if ( 10 .ne. len(arg01)) print *,'ng5'
!$omp end parallel
end subroutine

subroutine sub02(arg01)
character(*) :: arg01(:)

if ( 10 .ne. len(arg01)) print *,'ng1'

!$omp task private(arg01) 
arg01 = "1234567890"
!$omp task private(arg01)
arg01 = "1234567890"
!$omp parallel private(arg01)
arg01 = "1234567890"
  if ( 10 .ne. len(arg01)) print *,'ng2'
  if ( any(arg01/=(/('1234567890',i=1,10)/))) print *,'ng3'
!$omp end parallel
if ( 10 .ne. len(arg01)) print *,'ng4'
!$omp end task
if ( 10 .ne. len(arg01)) print *,'ng5'
!$omp end task
end subroutine

interface
subroutine sub01(arg01)
character(*) :: arg01(:)
end subroutine
subroutine sub02(arg01)
character(*) :: arg01(:)
end subroutine
end interface
character(10) :: cha01(10) = "AAAAAAAAAA"
character(10) :: cha02(10) = "BBBBBBBBBB"
call sub01(cha01)
call sub02(cha02)
print *,'ok'
end
