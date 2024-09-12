module m
  INTERFACE
     module function sub()
     END function
module real function plus_one(i)
  integer i
end function plus_one
  END INTERFACE
  type strc
     real(kind=8),dimension(:),allocatable :: ar1
  end type strc
  type(strc) rr1
end
submodule(m)smod
  INTERFACE
     module function sub1()
     END function
  END INTERFACE
contains
     module function sub()
if ( sub1()/=1) print *,201
sub=1
     END function
module real function plus_one(i)
  integer i
  plus_one = rr1%ar1(i) + dble(i)
end function plus_one
end
submodule(m:smod)smod1
  INTERFACE
     module function sub2()
     END function
  END INTERFACE
contains
     module function sub1()
  real(kind=8) ans(16)
if ( sub2()/=1) print *,101
  allocate(rr1%ar1(16))
  do i=1,16
     rr1%ar1(i) = dble(i)
     ans(i) = plus_one(1)
  end do
  if (ans(10) == 2.0) then
  else
     print *,"NG",ans(10)
end if
sub1=1
     END function
end
submodule(m:smod1)smod2
  INTERFACE
     module function sub3()
     END function
  END INTERFACE
contains
     module function sub2()
if ( sub3()/=1) print *,301
sub2=1
     END function
end
submodule(m:smod2)smod3
contains
     module function sub3()
sub3=1
print *,'pass'
     END function
end

use m
if ( sub()/=1) print *,404
end
