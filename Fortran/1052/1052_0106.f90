module m1
  type y3
    integer,allocatable::x
    integer::x1
  end type
contains
  subroutine s4(v)
  type(y3),allocatable::v(:)
  integer::omp_get_num_threads,tnum

  !$omp parallel
  if (.not. allocated(v(1)%x)) print *,'101'
  !$omp sections lastprivate(v,w)
  !$omp section
  v(1)%x=1
  v(1)%x1=10
  !$omp section
  v(1)%x=2
  v(1)%x1=20
  !$omp section
  v(1)%x=3
  v(1)%x1=30
  !$omp section
  v(1)%x=4
  v(1)%x1=40
  !$omp end sections
  !$omp master
  tnum = omp_get_num_threads()
  !$omp end master
  !$omp end parallel

  if (v(1)%x  /= 4 )  print *,'102',v(1)%x,tnum
  if (v(1)%x1 /= 40 ) print *,'102',v(1)%x1,tnum

  end subroutine s4
end module m1

use m1
type(y3),allocatable::v(:)
allocate(v(10))
allocate(v(1)%x)
v(1)%x=0
v(1)%x1=0
call s4(v)
print *,'pass'
end
