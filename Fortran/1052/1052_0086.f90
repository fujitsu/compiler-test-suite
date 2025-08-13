module m1
  type x
     integer::x1
     contains
       final:: xp
  end type
  type y
    integer::y1
    type(x),allocatable::y2
  end type
contains
  subroutine xp(d)
    type(x):: d
    write(4,*) 100 
  end subroutine
 end
subroutine s1
use m1
  type(y),allocatable:: v
  integer::n
  n=10
  allocate(v)
  allocate(v%y2)
  v%y1=1
  v%y2%x1=2
!$omp parallel
 !$omp do schedule(dynamic) firstprivate(v)
  do i=1,n
    if( i == 1 ) then
      if( v%y1    /= 1 ) print *,1501
      if( v%y2%x1 /= 2 ) print *,1502
    endif
    v%y1=v%y1+1
    v%y2%x1=v%y2%x1+1
  end do
 !$omp end do
!$omp end parallel
  if (v%y1/=1) print *,201
  if (v%y2%x1/=2) print *,301
end
call omp_set_num_threads(2)
call s1
rewind 4
read(4,*) k;if(k/=100) print *,101
read(4,*) k;if(k/=100) print *,101
read(4,*) k;if(k/=100) print *,101
read(4,*,end=100) k
print *,102
100print *,'pass'
end
