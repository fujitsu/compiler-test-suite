common /com01/cha1
common /com02/cha2
character(:),pointer :: cha1
character(:),pointer :: cha2
character(5),target :: ttt1 = "A1234"
character(5),target :: ttt2 = "AA234"

!$omp parallel private(/com01/)
  allocate(character(5)::cha1)
  cha1 = "abcde"
  if ( cha1 .ne. 'abcde' ) print *,'ng1'
!$omp parallel private(/com01/)
  allocate(character(5)::cha1)
  cha1 = "ghijk"
  if ( cha1 .ne. 'ghijk' ) print *,'ng3'
!$omp task private(/com01/)
  allocate(character(5)::cha1)
  cha1 = "lmnop"
  if ( cha1 .ne. 'lmnop' ) print *,'ng5'
!$omp end task
!$omp end parallel
!$omp end parallel

allocate(character(5)::cha2)
cha2 = "abcde"

!$omp parallel default(firstprivate)
  if ( cha2 .ne. 'abcde' ) print *,'ng7'
  cha2 => ttt1
!$omp parallel default(firstprivate)
  if ( cha2 .ne. 'A1234' ) print *,'ng9'
  cha2 => ttt2
!$omp task default(firstprivate)
  if ( cha2 .ne. 'AA234' ) print *,'ng11'
!$omp end task
!$omp end parallel
!$omp end parallel
print *,'ok'
end
