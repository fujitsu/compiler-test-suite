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
  integer :: i,n=10
  type(y),allocatable:: v
  integer,allocatable:: kk, lp
  allocate(v, kk, lp)
  allocate(v%y2)
  kk=-1
  lp=-2
  v%y1=1
  v%y2%x1=2
!$omp parallel
!$omp do firstprivate(v) reduction(+:kk) lastprivate(lp)
  do i=1,n

  v%y1=11
  v%y2%x1=12
  if (v%y1/=11) print *,1201
  if (v%y2%x1/=12) print *,1301

    lp=i
    kk=kk+1
  end do
!$omp end do
!$omp end parallel

  if (v%y1/=1) print *,201
  if (v%y2%x1/=2) print *,301
  if (kk/=9 .or. lp/=10) print *,'NG kk=',kk,'lp=',lp
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
