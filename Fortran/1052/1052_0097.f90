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
    write(1,*) 100 
  end subroutine
 end
subroutine s1
use m1
  type(y),allocatable:: v
  integer(8)::loc00,loc01
  allocate(v)
  allocate(v%y2)
  v%y1=1
  v%y2%x1=2
  loc00=LOC(v)
  loc01=LOC(v%y2)
!$omp parallel
 !$omp sections firstprivate(v)
 !$omp section
  if( v%y1    /= 1 ) print *,1501
  if( v%y2%x1 /= 2 ) print *,1502
  v%y1=10
  v%y2%x1=100
 !$omp section
  v%y1=20
  v%y2%x1=200
 !$omp section
  v%y1=30
  v%y2%x1=300
  if( loc00 == LOC(v)    ) print *,1601
  if( loc01 == LOC(v%y2) ) print *,1602
 !$omp end sections
!$omp end parallel
  if (v%y1/=1) print *,201
  if (v%y2%x1/=2) print *,301
end
call omp_set_num_threads(2)
call s1
rewind 1
read(1,*) k;if(k/=100) print *,101
read(1,*) k;if(k/=100) print *,101
read(1,*) k;if(k/=100) print *,101
read(1,*,end=100) k
print *,102
100print *,'pass'
end
