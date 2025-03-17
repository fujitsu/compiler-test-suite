module m1
  type z
     integer::z1
     contains
       final:: zp
  end type
  type x
     integer::x1
     type(z), allocatable::xx
     contains
       final:: xp
  end type

  type, extends(x)::y
     integer::y1
     contains
       final:: yp
  end type
  integer::xpno

contains
  subroutine xp(d)
    type(x):: d
!$omp atomic
    xpno=xpno+1
  end subroutine

  subroutine yp(d)
    type(y):: d
!$omp atomic
    xpno=xpno+1
  end subroutine

  subroutine zp(d)
    type(z):: d
!$omp atomic
    xpno=xpno+1
  end subroutine
end module m1

subroutine s1()
use m1
  class(x),allocatable:: v
  allocate(v)
  v%x1=1
!$omp parallel private(v)
  deallocate(v)
  allocate(y::v)

  select type(v)
   type is(y)
    v%x1=2
    v%y1=3
  class default
   print*,"911"
  end select
!$omp end parallel

  select type(v)
   type is(x)
    if(v%x1 /= 1) print*,"101"
  class default
   print*,"912"
  end select
end

use m1
xpno=0
call omp_set_num_threads(4)
call s1()
if( xpno /= 1+4+4+4 ) print *,'NG : xpno=',xpno
print *,'PASS'
end
