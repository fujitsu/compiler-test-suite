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
  integer,allocatable:: kk, lp
  allocate(v, kk,lp)
  allocate(v%y2)
  kk=-1
  lp=-2
  v%y1=1
  v%y2%x1=2
!$omp parallel
!$omp sections firstprivate(v) reduction(+:kk) lastprivate(lp)
 !$omp section
  v%y1=11
  v%y2%x1=12
  if (v%y1/=11) print *,1201
  if (v%y2%x1/=12) print *,1301
  lp=v%y1
  kk=kk+1
 !$omp section
  v%y1=21
  v%y2%x1=22
  if (v%y1/=21) print *,1201
  if (v%y2%x1/=22) print *,1301
  lp=v%y1
  kk=kk+1
 !$omp section
  v%y1=31
  v%y2%x1=32
  if (v%y1/=31) print *,1201
  if (v%y2%x1/=32) print *,1301
  lp=v%y1
  kk=kk+1
!$omp end sections
!$omp end parallel

  if (v%y1/=1) print *,201
  if (v%y2%x1/=2) print *,301
  if (kk/=2 .or. lp/=31) print *,'NG kk=',kk,'lp=',lp
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
