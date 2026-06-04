subroutine sub(iii1,cha1,iii2,cha2)
integer,allocatable :: iii1
character(5),allocatable :: cha1
integer,allocatable :: iii2
character(5),allocatable :: cha2

allocate(iii1,cha1)
!$omp parallel private(iii1,cha1)
  iii1 = 100
  cha1 = "abcde"
  if ( iii1 .ne. 100 ) print *,'ng'
  if ( cha1 .ne. 'abcde' ) print *,'ng'
!$omp task private(iii1,cha1)
  iii1 = 200
  cha1 = "ghijk"
  if ( iii1 .ne. 200 ) print *,'ng'
  if ( cha1 .ne. 'ghijk' ) print *,'ng'
!$omp parallel private(iii1,cha1)
  iii1 = 300
  cha1 = "lmnop"
  if ( iii1 .ne. 300 ) print *,'ng'
  if ( cha1 .ne. 'lmnop' ) print *,'ng'
!$omp end parallel
!$omp end task
!$omp end parallel

allocate(iii2,cha2)
iii2 = 100
cha2 = "abcde"

!$omp parallel default(firstprivate)
  if ( iii2 .ne. 100 ) print *,'ng'
  if ( cha2 .ne. 'abcde' ) print *,'ng'
  iii2 = 200
  cha2 = "fghij"
!$omp task default(firstprivate)
  if ( iii2 .ne. 200 ) print *,'ng'
  if ( cha2 .ne. 'fghij' ) print *,'ng'
  iii2 = 300
  cha2 = "klmno"
!$omp parallel default(firstprivate)
  if ( iii2 .ne. 300 ) print *,'ng'
  if ( cha2 .ne. 'klmno' ) print *,'ng'
!$omp end parallel
!$omp end task
!$omp taskwait
!$omp end parallel
end subroutine

interface
subroutine sub(iii1,cha1,iii2,cha2)
integer,allocatable :: iii1
character(5),allocatable :: cha1
integer,allocatable :: iii2
character(5),allocatable :: cha2
end subroutine
end interface
integer,allocatable :: iii1
character(5),allocatable :: cha1
integer,allocatable :: iii2
character(5),allocatable :: cha2
call sub(iii1,cha1,iii2,cha2)
print *,'ok'
end
