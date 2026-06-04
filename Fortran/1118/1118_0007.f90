integer :: iii1
character(5) :: cha1
integer :: iii2
character(5) :: cha2

!$omp task private(iii1,cha1)
  iii1 = 100
  cha1 = "abcde"
  if ( iii1 .ne. 100 ) print *,'ng'
  if ( cha1 .ne. 'abcde' ) print *,'ng'
!$omp task private(iii1,cha1)
  iii1 = 200
  cha1 = "ghijk"
  if ( iii1 .ne. 200 ) print *,'ng'
  if ( cha1 .ne. 'ghijk' ) print *,'ng'
!$omp task private(iii1,cha1)
  iii1 = 300
  cha1 = "lmnop"
  if ( iii1 .ne. 300 ) print *,'ng'
  if ( cha1 .ne. 'lmnop' ) print *,'ng'
!$omp end task
!$omp end task
!$omp end task

iii2 = 100
cha2 = "abcde"

!$omp task firstprivate(iii2,cha2)
  if ( iii2 .ne. 100 ) print *,'ng'
  if ( cha2 .ne. 'abcde' ) print *,'ng'
  iii2 = 200
  cha2 = "67890"
!$omp task firstprivate(iii2,cha2)
  if ( iii2 .ne. 200 ) print *,'ng'
  if ( cha2 .ne. '67890' ) print *,'ng'
  iii2 = 300
  cha2 = "A2345"
!$omp task firstprivate(iii2,cha2)
  if ( iii2 .ne. 300 ) print *,'ng'
  if ( cha2 .ne. 'A2345' ) print *,'ng'
  iii2 = 400
  cha2 = "6789B"
  if ( iii2 .ne. 400 ) print *,'ng'
  if ( cha2 .ne. '6789B' ) print *,'ng'
!$omp end task
!$omp end task
!$omp end task
print *,'ok'
end
