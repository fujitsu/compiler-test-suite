module m1
  type y3
    integer,allocatable::x
    integer::x1
  end type
contains
  subroutine s4(v)
  type(y3),allocatable::v
  integer::omp_get_num_threads,tnum

  !$omp parallel
  if (.not. allocated(v%x)) print *,'101'
  !$omp sections lastprivate(v,w)
  !$omp section
  v%x=1
  v%x1=10
  !$omp section
  v%x=2
  v%x1=20
  !$omp section
  v%x=3
  v%x1=30
  !$omp section
  v%x=4
  v%x1=40
  !$omp end sections
  !$omp master
  tnum = omp_get_num_threads()
  !$omp end master
  !$omp end parallel

  if (v%x  /= 4 )  print *,'102',v%x,tnum
  if (v%x1 /= 40 ) print *,'102',v%x,tnum

  end subroutine s4
end module m1

use m1
type(y3),allocatable::v
allocate(v)
allocate(v%x)
v%x=0
v%x1=0
call s4(v)
print *,'pass'
end
