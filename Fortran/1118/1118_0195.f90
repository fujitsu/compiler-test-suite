subroutine sub01(cha1,cha2,cha3,cha4)
character(:),pointer :: cha1
character(:),allocatable :: cha2
character(:),pointer :: cha3
character(:),allocatable :: cha4
character(5),target :: ttt1 = "A1234"
character(5),target :: ttt2 = "AA234"
character(5),target :: ttt3 = "abcde"
character(5),target :: ttt4 = "ghijk"
character(5),target :: ttt5 = "lmnop"

allocate(character(5)::cha2)
!$omp task private(cha1,cha2)
  cha1 => ttt3
  cha2(1:5) = "fghij"
  if ( cha1 .ne. 'abcde' ) print *,'ng1'
  if ( cha2 .ne. 'fghij' ) print *,'ng2'
!$omp parallel private(cha1,cha2)
  cha1 => ttt4
  cha2(1:5) = "lmnop"
  if ( cha1 .ne. 'ghijk' ) print *,'ng3'
  if ( cha2 .ne. 'lmnop' ) print *,'ng4'
!$omp task private(cha1,cha2)
  cha1 => ttt5
  cha2(1:5) = "qrstu"
  if ( cha1 .ne. 'lmnop' ) print *,'ng5'
  if ( cha2 .ne. 'qrstu' ) print *,'ng6'
!$omp end task
!$omp end parallel
!$omp end task

allocate(character(5)::cha4)
cha3 => ttt3
cha4(1:5) = "fghij"

!$omp task default(firstprivate)
  if ( cha3 .ne. 'abcde' ) print *,'ng7'
  if ( cha4 .ne. 'fghij' ) print *,'ng8'
  cha3 => ttt1
  cha4(1:5) = "B1234"
!$omp parallel default(firstprivate)
  if ( cha3 .ne. 'A1234' ) print *,'ng9'
  if ( cha4 .ne. 'B1234' ) print *,'ng10'
  cha3 => ttt2
  cha4(1:5) = "BB234"
!$omp task default(firstprivate)
  if ( cha3 .ne. 'AA234' ) print *,'ng11'
  if ( cha4 .ne. 'BB234' ) print *,'ng12'
!$omp end task
!$omp end parallel
!$omp end task
end subroutine

subroutine sub02(cha1,cha2,cha3,cha4)
character(:),pointer :: cha1(:)
character(:),allocatable :: cha2(:)
character(:),pointer :: cha3(:)
character(:),allocatable :: cha4(:)
character(5),target :: ttt1(5) = "A1234"
character(5),target :: ttt2(5) = "AA234"

allocate(character(5)::cha2(5))
!$omp task private(cha1,cha2)
  allocate(character(5)::cha1(5))
  cha1 = "abcde"
  cha2(1:5) = "fghij"
  if ( any(cha1/=(/('abcde',i=1,5)/))) print *,'ng13'
  if ( any(cha2/=(/('fghij',i=1,5)/))) print *,'ng14'
!$omp parallel private(cha1,cha2)
  allocate(character(5)::cha1(5))
  cha1 = "ghijk"
  cha2(1:5) = "lmnop"
  if ( any(cha1/=(/('ghijk',i=1,5)/))) print *,'ng15'
  if ( any(cha2/=(/('lmnop',i=1,5)/))) print *,'ng16'
!$omp task private(cha1,cha2)
  allocate(character(5)::cha1(5))
  cha1 = "lmnop"
  cha2(1:5) = "qrstu"
  if ( any(cha1/=(/('lmnop',i=1,5)/))) print *,'ng17'
  if ( any(cha2/=(/('qrstu',i=1,5)/))) print *,'ng18'
!$omp end task
!$omp end parallel
!$omp end task

allocate(character(5)::cha3(5),cha4(5))
cha3 = "abcde"
cha4(1:5) = "fghij"

!$omp task default(firstprivate)
  if ( any(cha3/=(/('abcde',i=1,5)/))) print *,'ng19'
  if ( any(cha4/=(/('fghij',i=1,5)/))) print *,'ng20'
  cha3 => ttt1
  cha4(1:5) = "B1234"
!$omp parallel default(firstprivate)
  if ( any(cha3/=(/('A1234',i=1,5)/))) print *,'ng21'
  if ( any(cha4/=(/('B1234',i=1,5)/))) print *,'ng22'
  cha3 => ttt2
  cha4(1:5) = "BB234"
!$omp task default(firstprivate)
  if ( any(cha3/=(/('AA234',i=1,5)/))) print *,'ng23'
  if ( any(cha4/=(/('BB234',i=1,5)/))) print *,'ng24'
!$omp end task
!$omp end parallel
!$omp end task
end subroutine
interface
subroutine sub01(cha1,cha2,cha3,cha4)
character(:),pointer :: cha1
character(:),allocatable :: cha2
character(:),pointer :: cha3
character(:),allocatable :: cha4
end subroutine
subroutine sub02(cha1,cha2,cha3,cha4)
character(:),pointer :: cha1(:)
character(:),allocatable :: cha2(:)
character(:),pointer :: cha3(:)
character(:),allocatable :: cha4(:)
end subroutine
end interface
character(:),pointer :: cha1
character(:),allocatable :: cha2
character(:),pointer :: cha3
character(:),allocatable :: cha4
character(:),pointer :: cha21(:)
character(:),allocatable :: cha22(:)
character(:),pointer :: cha23(:)
character(:),allocatable :: cha24(:)
call sub01(cha1,cha2,cha3,cha4)
call sub02(cha21,cha22,cha23,cha24)
print *,'ok'
end
