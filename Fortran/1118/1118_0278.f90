subroutine sub01(arg01)
character(*),pointer :: arg01(:)
character(20),target :: ttt01(5) = "abcde"

allocate(arg01(5))
arg01 => ttt01
if ( 10 .ne. len(arg01)) print *,'ng1'

!$omp parallel default(firstprivate)
!$omp task 
!$omp task
  if ( 10 .ne. len(arg01)) print *,'ng2'
  if ( any(arg01/=(/('abcde',i=1,5)/))) print *,'ng3'
!$omp end task
if ( 10 .ne. len(arg01)) print *,'ng4'
!$omp end task
if ( 10 .ne. len(arg01)) print *,'ng5'
!$omp end parallel
end subroutine

subroutine sub02(arg01)
character(*),pointer :: arg01(:)
character(20),target :: ttt01(5) = "abcde"

allocate(arg01(5))
arg01 => ttt01
if ( 10 .ne. len(arg01)) print *,'ng1'

!$omp task 
!$omp task
!$omp parallel
  if ( 10 .ne. len(arg01)) print *,'ng2'
  if ( any(arg01/=(/('abcde',i=1,5)/))) print *,'ng3'
!$omp end parallel
if ( 10 .ne. len(arg01)) print *,'ng4'
!$omp end task
if ( 10 .ne. len(arg01)) print *,'ng5'
!$omp end task
end subroutine

subroutine sub03(arg01)
character(*),pointer :: arg01(:)
character(20),target :: ttt01(5) = "abcde"

allocate(arg01(5))
arg01 => ttt01
if ( 10 .ne. len(arg01)) print *,'ng1'

!$omp task 
!$omp parallel
!$omp task
  if ( 10 .ne. len(arg01)) print *,'ng2'
  if ( any(arg01/=(/('abcde',i=1,5)/))) print *,'ng3'
!$omp end task
if ( 10 .ne. len(arg01)) print *,'ng4'
!$omp end parallel
if ( 10 .ne. len(arg01)) print *,'ng5'
!$omp end task
end subroutine

interface
subroutine sub01(arg01)
character(*),pointer :: arg01(:)
end subroutine
subroutine sub02(arg01)
character(*),pointer :: arg01(:)
end subroutine
subroutine sub03(arg01)
character(*),pointer :: arg01(:)
end subroutine
end interface
character(10),pointer :: cha01(:)
character(10),pointer :: cha02(:)
character(10),pointer :: cha03(:)
call sub01(cha01)
call sub02(cha02)
call sub03(cha03)
print *,'ok'
end
