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
    write(12,*) 100 
  end subroutine
 end
subroutine s1
use m1
  type(y),allocatable:: v
  allocate(v)
  allocate(v%y2)
  v%y1=1
  v%y2%x1=2
!$omp parallel 
 !$omp single firstprivate(v)
  if( .not. allocated(v)    ) print *,1201
  if( .not. allocated(v%y2) ) print *,1202
  if( v%y1    /= 1 ) print *,1203
  if( v%y2%x1 /= 2 ) print *,1203
  v%y1=11
  v%y2%x1=12
 !$omp end single
!$omp end parallel
  if (v%y1/=1) print *,201
  if (v%y2%x1/=2) print *,301
end
call omp_set_num_threads(2)
call s1
rewind 12
read(12,*) k;if(k/=100) print *,101
read(12,*,end=100) k
print *,102
100print *,'pass'
end
