subroutine sub01(iii1,cha1,iii2,cha2,index)
integer :: iii1(index)
character(5) :: cha1(index)
integer :: iii2(index)
character(5) :: cha2(index)
integer :: index

!$omp task private(iii1,cha1)
  iii1 = 100
  cha1 = "abcde"
  if ( any(iii1/=(/(100,i=1,5)/))) print *,'ng1'
  if ( any(cha1/=(/('abcde',i=1,5)/))) print *,'ng2'
!$omp parallel private(iii1,cha1)
  iii1 = 200
  cha1 = "ghijk"
  if ( any(iii1/=(/(200,i=1,5)/))) print *,'ng3'
  if ( any(cha1/=(/('ghijk',i=1,5)/))) print *,'ng4'
!$omp parallel private(iii1,cha1)
  iii1 = 300
  cha1 = "lmnop"
  if ( any(iii1/=(/(300,i=1,5)/))) print *,'ng5'
  if ( any(cha1/=(/('lmnop',i=1,5)/))) print *,'ng6'
!$omp end parallel
!$omp end parallel
!$omp end task

iii2 = 100
cha2 = "abcde"

!$omp task firstprivate(iii2,cha2)
  if ( any(iii2/=(/(100,i=1,5)/))) print *,'ng7'
  if ( any(cha2/=(/('abcde',i=1,5)/))) print *,'ng8'
  iii2 = 200
  cha2 = "67890"
!$omp parallel firstprivate(iii2,cha2)
  if ( any(iii2/=(/(200,i=1,5)/))) print *,'ng9'
  if ( any(cha2/=(/('67890',i=1,5)/))) print *,'ng10'
  iii2 = 300
  cha2 = "A2345"
!$omp parallel firstprivate(iii2,cha2)
  if ( any(iii2/=(/(300,i=1,5)/))) print *,'ng11'
  if ( any(cha2/=(/('A2345',i=1,5)/))) print *,'ng12'
  iii2 = 400
  cha2 = "6789B"
  if ( any(iii2/=(/(400,i=1,5)/))) print *,'ng13'
  if ( any(cha2/=(/('6789B',i=1,5)/))) print *,'ng14'
!$omp end parallel
!$omp end parallel
!$omp end task
end subroutine

subroutine sub02(index)
integer :: iii1(index)
character(5) :: cha1(index)
integer :: iii2(index)
character(5) :: cha2(index)
integer :: index

!$omp task private(iii1,cha1)
  iii1 = 100
  cha1 = "abcde"
  if ( any(iii1/=(/(100,i=1,5)/))) print *,'ng1'
  if ( any(cha1/=(/('abcde',i=1,5)/))) print *,'ng2'
!$omp parallel private(iii1,cha1)
  iii1 = 200
  cha1 = "ghijk"
  if ( any(iii1/=(/(200,i=1,5)/))) print *,'ng3'
  if ( any(cha1/=(/('ghijk',i=1,5)/))) print *,'ng4'
!$omp parallel private(iii1,cha1)
  iii1 = 300
  cha1 = "lmnop"
  if ( any(iii1/=(/(300,i=1,5)/))) print *,'ng5'
  if ( any(cha1/=(/('lmnop',i=1,5)/))) print *,'ng6'
!$omp end parallel
!$omp end parallel
!$omp end task

iii2 = 100
cha2 = "abcde"

!$omp task firstprivate(iii2,cha2)
  if ( any(iii2/=(/(100,i=1,5)/))) print *,'ng7'
  if ( any(cha2/=(/('abcde',i=1,5)/))) print *,'ng8'
  iii2 = 200
  cha2 = "67890"
!$omp parallel firstprivate(iii2,cha2)
  if ( any(iii2/=(/(200,i=1,5)/))) print *,'ng9'
  if ( any(cha2/=(/('67890',i=1,5)/))) print *,'ng10'
  iii2 = 300
  cha2 = "A2345"
!$omp parallel firstprivate(iii2,cha2)
  if ( any(iii2/=(/(300,i=1,5)/))) print *,'ng11'
  if ( any(cha2/=(/('A2345',i=1,5)/))) print *,'ng12'
  iii2 = 400
  cha2 = "6789B"
  if ( any(iii2/=(/(400,i=1,5)/))) print *,'ng13'
  if ( any(cha2/=(/('6789B',i=1,5)/))) print *,'ng14'
!$omp end parallel
!$omp end parallel
!$omp end task
end subroutine

interface
subroutine sub01(iii1,cha1,iii2,cha2,index)
integer :: iii1(5)
character(5) :: cha1(5)
integer :: iii2(5)
character(5) :: cha2(5)
integer :: index
end subroutine
end interface

integer :: iii1(5)
character(5) :: cha1(5)
integer :: iii2(5)
character(5) :: cha2(5)
iii1 = 100
cha1 = "abcde"
iii2 = 100
cha2 = "abcde"
call sub01(iii1,cha1,iii2,cha2,5)
call sub02(5)
print *,'ok'
end
