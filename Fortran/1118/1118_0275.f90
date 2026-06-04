subroutine sub02(cha1,cha2,cha3,cha4,length)
character(length),pointer :: cha1(:)
character(length),allocatable :: cha2(:)
character(length),pointer :: cha3(:)
character(length),allocatable :: cha4(:)
character(5),target :: ttt1(5) = "A1234"
character(5),target :: ttt2(5) = "AA234"
character(5),target :: ttt3(5) = "abcde"
character(5),target :: ttt4(5) = "ghijk"
character(5),target :: ttt5(5) = "lmnop"

allocate(cha2(5))
!$omp task private(cha1,cha2)
  cha1 => ttt3
  cha2 = "fghij"
  if ( any(cha1/=(/('abcde',i=1,5)/))) print length,'ng13'
  if ( any(cha2/=(/('fghij',i=1,5)/))) print length,'ng14'
!$omp task private(cha1,cha2)
  cha1 => ttt4
  cha2 = "lmnop"
  if ( any(cha1/=(/('ghijk',i=1,5)/))) print length,'ng15'
  if ( any(cha2/=(/('lmnop',i=1,5)/))) print length,'ng16'
!$omp parallel private(cha1,cha2)
  cha1 => ttt5
  cha2 = "qrstu"
  if ( any(cha1/=(/('lmnop',i=1,5)/))) print length,'ng17'
  if ( any(cha2/=(/('qrstu',i=1,5)/))) print length,'ng18'
!$omp end parallel
!$omp end task
!$omp end task

allocate(cha3(5),cha4(5))
cha3 => ttt3
cha4 = "fghij"

!$omp task default(firstprivate)
  if ( any(cha3/=(/('abcde',i=1,5)/))) print length,'ng19'
  if ( any(cha4/=(/('fghij',i=1,5)/))) print length,'ng20'
  cha3 => ttt1
  cha4 = "B1234"
!$omp task default(firstprivate)
  if ( any(cha3/=(/('A1234',i=1,5)/))) print length,'ng21'
  if ( any(cha4/=(/('B1234',i=1,5)/))) print length,'ng22'
  cha3 => ttt2
  cha4 = "BB234"
!$omp parallel default(firstprivate)
  if ( any(cha3/=(/('AA234',i=1,5)/))) print length,'ng23'
  if ( any(cha4/=(/('BB234',i=1,5)/))) print length,'ng24'
!$omp end parallel
!$omp end task
!$omp end task
end subroutine

interface
subroutine sub02(cha1,cha2,cha3,cha4,length)
character(length),pointer :: cha1(:)
character(length),allocatable :: cha2(:)
character(length),pointer :: cha3(:)
character(length),allocatable :: cha4(:)
end subroutine
end interface
character(5),pointer :: cha21(:)
character(5),allocatable :: cha22(:)
character(5),pointer :: cha23(:)
character(5),allocatable :: cha24(:)
call sub02(cha21,cha22,cha23,cha24,5)
print *,'ok'
end
