subroutine sub01(cha1,cha2,cha3,cha4,length)
character(length),pointer :: cha1
character(length),allocatable :: cha2
character(length),pointer :: cha3
character(length),allocatable :: cha4
character(5),target :: ttt1 = "A1234"
character(5),target :: ttt2 = "AA234"

allocate(cha2)
!$omp parallel private(cha1,cha2)
  allocate(cha1)
  cha1 = "abcde"
  cha2 = "fghij"
  if ( cha1 .ne. 'abcde' ) print *,length,'ng1'
  if ( cha2 .ne. 'fghij' ) print *,length,'ng2'
!$omp task private(cha1,cha2)
  allocate(cha1)
  cha1 = "ghijk"
  cha2 = "lmnop"
  if ( cha1 .ne. 'ghijk' ) print *,length,'ng3'
  if ( cha2 .ne. 'lmnop' ) print *,length,'ng4'
!$omp task private(cha1,cha2)
  allocate(cha1)
  cha1 = "lmnop"
  cha2 = "qrstu"
  if ( cha1 .ne. 'lmnop' ) print *,length,'ng5'
  if ( cha2 .ne. 'qrstu' ) print *,length,'ng6'
!$omp end task
!$omp end task
!$omp end parallel

allocate(cha3,cha4)
cha3 = "abcde"
cha4 = "fghij"

!$omp parallel default(firstprivate)
  if ( cha3 .ne. 'abcde' ) print *,length,'ng7'
  if ( cha4 .ne. 'fghij' ) print *,length,'ng8'
  cha3 => ttt1
  cha4 = "B1234"
!$omp task default(firstprivate)
  if ( cha3 .ne. 'A1234' ) print *,length,'ng9'
  if ( cha4 .ne. 'B1234' ) print *,length,'ng10'
  cha3 => ttt2
  cha4 = "BB234"
!$omp task default(firstprivate)
  if ( cha3 .ne. 'AA234' ) print *,length,'ng11'
  if ( cha4 .ne. 'BB234' ) print *,length,'ng12'
!$omp end task
!$omp end task
!$omp end parallel
end subroutine

interface
subroutine sub01(cha1,cha2,cha3,cha4,length)
character(length),pointer :: cha1
character(length),allocatable :: cha2
character(length),pointer :: cha3
character(length),allocatable :: cha4
end subroutine
end interface
character(5),pointer :: cha1
character(5),allocatable :: cha2
character(5),pointer :: cha3
character(5),allocatable :: cha4
call sub01(cha1,cha2,cha3,cha4,5)
print *,'ok'
end
