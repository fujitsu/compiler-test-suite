subroutine sub01(arg01)
character(*) :: arg01(:)
character(10) :: ttt(5) = '1234567890'

arg01 = ttt
if ( 10 .ne. len(arg01)) print *,'ng1'

!$omp parallel default(firstprivate)
  if ( 10 .ne. len(arg01)) print *,'ng2'
!$omp task 
  if ( 10 .ne. len(arg01)) print *,'ng3'
  if ( any(arg01/=(/('1234567890',i=1,5)/))) print *,'ng4'
!$omp end task
!$omp task
  if ( 10 .ne. len(arg01)) print *,'ng5'
  if ( any(arg01/=(/('1234567890',i=1,5)/))) print *,'ng6'
!$omp end task
if ( 10 .ne. len(arg01)) print *,'ng7'
!$omp end parallel
end subroutine

subroutine sub02(arg01)
character(*) :: arg01(:)
character(10) :: ttt(5) = '1234567890'

arg01 = ttt
if ( 10 .ne. len(arg01)) print *,'ng8'

!$omp parallel 
  if ( 10 .ne. len(arg01)) print *,'ng9'
!$omp task default(firstprivate)
  if ( 10 .ne. len(arg01)) print *,'ng10'
  if ( any(arg01/=(/('1234567890',i=1,5)/))) print *,'ng11'
!$omp end task
!$omp task
  if ( 10 .ne. len(arg01)) print *,'ng12'
  if ( any(arg01/=(/('1234567890',i=1,5)/))) print *,'ng13'
!$omp end task
if ( 10 .ne. len(arg01)) print *,'ng14'
!$omp end parallel
end subroutine

subroutine sub03(arg01)
character(*) :: arg01(:)
character(10) :: ttt(5) = '1234567890'

arg01 = ttt
if ( 10 .ne. len(arg01)) print *,'ng15'

!$omp parallel 
  if ( 10 .ne. len(arg01)) print *,'ng16'
!$omp task 
  if ( 10 .ne. len(arg01)) print *,'ng17'
  if ( any(arg01/=(/('1234567890',i=1,5)/))) print *,'ng18'
!$omp end task
!$omp task default(firstprivate)
  if ( 10 .ne. len(arg01)) print *,'ng19'
  if ( any(arg01/=(/('1234567890',i=1,5)/))) print *,'ng20'
!$omp end task
if ( 10 .ne. len(arg01)) print *,'ng21'
!$omp end parallel
end subroutine

interface
subroutine sub01(arg01)
character(*) :: arg01(:)
end subroutine
subroutine sub02(arg01)
character(*) :: arg01(:)
end subroutine
subroutine sub03(arg01)
character(*) :: arg01(:)
end subroutine
end interface
character(10) :: cha01(5)
character(10) :: cha02(5)
character(10) :: cha03(5)
call sub01(cha01)
call sub02(cha02)
call sub03(cha03)
print *,'ok'
end
