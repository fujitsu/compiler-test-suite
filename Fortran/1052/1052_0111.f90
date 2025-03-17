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
  !$omp do lastprivate(v,w)
  do i=1,10
    v%x=i
    v%x1=i*10
    if( i == 1 ) then
      if (.not. allocated(v%x))  print *,'100'
    endif
  end do
  !$omp end do
  !$omp master
  tnum = omp_get_num_threads()
  !$omp end master
  !$omp end parallel

  if (v%x  /= 10 )  print *,'102',v%x,tnum
  if (v%x1 /= 100 ) print *,'102',v%x1,tnum

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
