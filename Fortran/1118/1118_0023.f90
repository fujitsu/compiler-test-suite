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
!$omp task private(iii1,cha1)
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
!$omp end task
!$omp end task

allocate(iii2,cha2)
iii2 = 100
cha2 = "12345"

!$omp task default(firstprivate)
  if ( iii2 .ne. 100 ) print *,'ng7'
  if ( cha2 .ne. '12345' ) print *,'ng8'
  iii2 = 200
  cha2 = "67890"
!$omp task 
  if ( iii2 .ne. 200 ) print *,'ng9'
  if ( cha2 .ne. '67890' ) print *,'ng10'
  iii2 = 300
  cha2 = "A2345"
!$omp task default(firstprivate)
  if ( iii2 .ne. 300 ) print *,'ng11:',iii2
  if ( cha2 .ne. 'A2345' ) print *,'ng12:',cha2
  iii2 = 400
  cha2 = "6789B"
  if ( iii2 .ne. 400 ) print *,'ng13:',iii2
  if ( cha2 .ne. '6789B' ) print *,'ng14:',cha2
!$omp end task
!$omp end task
!$omp end task
print *,'ok'
end
