module m1
  type y3
    integer,allocatable::x
    integer::x1
  end type
contains
  subroutine s4(v)
  type(y3),allocatable::v(:)
  integer::omp_get_num_threads,tnum
  integer::s,n

  s=1
  n=10
  !$omp parallel
  if (.not. allocated(v(1)%x)) print *,'101'
  !$omp do schedule(dynamic) lastprivate(v,w)
  do i=s,n
    v(1)%x=i
    v(1)%x1=i*10
    if( i == 1 ) then
      if (.not. allocated(v(1)%x))  print *,'100'
    endif
  end do
  !$omp end do
  !$omp master
  tnum = omp_get_num_threads()
  !$omp end master
  !$omp end parallel

  if (v(1)%x  /= 10 )  print *,'102',v(1)%x,tnum
  if (v(1)%x1 /= 100 ) print *,'102',v(1)%x1,tnum

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
