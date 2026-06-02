subroutine sub01(cha1,cha2,cha3,cha4)
character(*),pointer :: cha1
character(*),allocatable :: cha2
character(*),pointer :: cha3
character(*),allocatable :: cha4
character(5),target :: ttt1 = "A1234"
character(5),target :: ttt2 = "AA234"

allocate(cha2)
!$omp task private(cha1,cha2)
  allocate(cha1)
  cha1 = "abcde"
  cha2 = "fghij"
  if ( cha1 .ne. 'abcde' ) print *,'ng1'
  if ( cha2 .ne. 'fghij' ) print *,'ng2'
!$omp parallel private(cha1,cha2)
  allocate(cha1)
  cha1 = "ghijk"
  cha2 = "lmnop"
  if ( cha1 .ne. 'ghijk' ) print *,'ng3'
  if ( cha2 .ne. 'lmnop' ) print *,'ng4'
!$omp task private(cha1,cha2)
  allocate(cha1)
  cha1 = "lmnop"
  cha2 = "qrstu"
  if ( cha1 .ne. 'lmnop' ) print *,'ng5'
  if ( cha2 .ne. 'qrstu' ) print *,'ng6'
!$omp end task
!$omp end parallel
!$omp end task

allocate(cha3,cha4)
cha3 = "abcde"
cha4 = "fghij"

!$omp task default(firstprivate)
  if ( cha3 .ne. 'abcde' ) print *,'ng7'
  if ( cha4 .ne. 'fghij' ) print *,'ng8'
  cha3 => ttt1
  cha4 = "B1234"
!$omp parallel default(firstprivate)
  if ( cha3 .ne. 'A1234' ) print *,'ng9'
  if ( cha4 .ne. 'B1234' ) print *,'ng10'
  cha3 => ttt2
  cha4 = "BB234"
!$omp task default(firstprivate)
  if ( cha3 .ne. 'AA234' ) print *,'ng11'
  if ( cha4 .ne. 'BB234' ) print *,'ng12'
!$omp end task
!$omp end parallel
!$omp end task
end subroutine

interface
subroutine sub01(cha1,cha2,cha3,cha4)
character(*),pointer :: cha1
character(*),allocatable :: cha2
character(*),pointer :: cha3
character(*),allocatable :: cha4
end subroutine
end interface
character(5),pointer :: cha1
character(5),allocatable :: cha2
character(5),pointer :: cha3
character(5),allocatable :: cha4
call sub01(cha1,cha2,cha3,cha4)
print *,'ok'
end
