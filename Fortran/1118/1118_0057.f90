subroutine sub01(iii1,cha1,iii2,cha2)
integer,pointer :: iii1
character(5),pointer :: cha1
integer,pointer :: iii2
character(5),pointer :: cha2

!$omp parallel private(iii1,cha1)
  allocate(iii1,cha1)
  iii1 = 100
  cha1 = "abcde"
  if ( iii1 .ne. 100 ) print *,'ng'
  if ( cha1 .ne. 'abcde' ) print *,'ng'
!$omp parallel private(iii1,cha1)
  allocate(iii1,cha1)
  iii1 = 200
  cha1 = "ghijk"
  if ( iii1 .ne. 200 ) print *,'ng'
  if ( cha1 .ne. 'ghijk' ) print *,'ng'
!$omp task private(iii1,cha1)
  allocate(iii1,cha1)
  iii1 = 300
  cha1 = "lmnop"
  if ( iii1 .ne. 300 ) print *,'ng'
  if ( cha1 .ne. 'lmnop' ) print *,'ng'
!$omp end task
!$omp end parallel
!$omp end parallel

allocate(iii2,cha2)
iii2 = 100
cha2 = "abcde"

!$omp parallel default(firstprivate)
  if ( iii2 .ne. 100 ) print *,'ng'
  if ( cha2 .ne. 'abcde' ) print *,'ng'
!$omp parallel default(firstprivate)
  if ( iii2 .ne. 100 ) print *,'ng'
  if ( cha2 .ne. 'abcde' ) print *,'ng'
!$omp task default(firstprivate)
  if ( iii2 .ne. 100 ) print *,'ng'
  if ( cha2 .ne. 'abcde' ) print *,'ng'
!$omp end task
!$omp end parallel
!$omp end parallel
end subroutine

interface
subroutine sub01(iii1,cha1,iii2,cha2)
integer,pointer :: iii1
character(5),pointer :: cha1
integer,pointer :: iii2
character(5),pointer :: cha2
end subroutine
end interface

call sub01(null(),null(),null(),null())
print *,'ok'
end
