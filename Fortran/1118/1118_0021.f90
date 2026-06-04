integer,pointer :: iii1
character(5),pointer :: cha1
integer,pointer :: iii2
character(5),pointer :: cha2

!$omp task private(iii1,cha1)
  allocate(iii1,cha1)
  iii1 = 100
  cha1 = "abcde"
  if ( iii1 .ne. 100 ) print *,'ng1'
  if ( cha1 .ne. 'abcde' ) print *,'ng2'
!$omp parallel private(iii1,cha1)
  allocate(iii1,cha1)
  iii1 = 200
  cha1 = "ghijk"
  if ( iii1 .ne. 200 ) print *,'ng3'
  if ( cha1 .ne. 'ghijk' ) print *,'ng4'
!$omp task private(iii1,cha1)
  allocate(iii1,cha1)
  iii1 = 300
  cha1 = "lmnop"
  if ( iii1 .ne. 300 ) print *,'ng5'
  if ( cha1 .ne. 'lmnop' ) print *,'ng6'
!$omp end task
!$omp end parallel
!$omp end task

allocate(iii2,cha2)
iii2 = 100
cha2 = "abcde"

!$omp task default(firstprivate)
  if ( iii2 .ne. 100 ) print *,'ng7'
  if ( cha2 .ne. 'abcde' ) print *,'ng8'
  iii2 = 200
  cha2 = "67890"
!$omp parallel default(firstprivate)
  if ( iii2 .ne. 200 ) print *,'ng9'
  if ( cha2 .ne. '67890' ) print *,'ng10'
!$omp task default(firstprivate)
  if ( iii2 .ne. 200 ) print *,'ng11'
  if ( cha2 .ne. '67890' ) print *,'ng12'
!$omp end task
!$omp end parallel
!$omp end task
print *,'ok'
end
