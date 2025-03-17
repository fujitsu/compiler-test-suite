module m1
  type y3
    integer,allocatable::x
    integer::x1
  end type
end
subroutine s4
use m1
type(y3), allocatable::v
integer::omp_get_num_threads,tnum
integer::s,n

s=1
n=10
allocate(v)
allocate(v%x)
v%x=0
v%x1=0
!$omp parallel
if (.not. allocated(v%x)) print *,'101'
!$omp do schedule(dynamic) lastprivate(v,w)
  do i=s,n
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
call s4
print *,'pass'
end
