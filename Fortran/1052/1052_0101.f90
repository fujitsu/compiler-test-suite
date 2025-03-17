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
  integer::xpno
contains
  subroutine xp(d)
    type(x):: d
!$omp atomic
    xpno=xpno+1
  end subroutine
 end
subroutine s1
use m1
  type(y),allocatable:: v
  allocate(v)
  allocate(v%y2)
  v%y1=1
  v%y2%x1=2
!$omp taskgroup
!$omp task firstprivate(v)
  if (v%y1/=1) print *,1501
  if (v%y2%x1/=2) print *,1501
  v%y1=11
  v%y2%x1=12
  if (v%y1/=11) print *,1201
  if (v%y2%x1/=12) print *,1301
!$omp end task
!$omp task firstprivate(v)
  if (v%y1/=1) print *,1501
  if (v%y2%x1/=2) print *,1501
  v%y1=21
  v%y2%x1=22
  if (v%y1/=21) print *,1201
  if (v%y2%x1/=22) print *,1301
!$omp end task
!$omp end taskgroup
  if (v%y1/=1) print *,201
  if (v%y2%x1/=2) print *,301
end

use m1
xpno=0
call omp_set_num_threads(2)
call s1
if( xpno /= 3 ) print *,101
print *,'pass'
end
