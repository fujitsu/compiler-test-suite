module m
  INTERFACE
     module subroutine sub
     END subroutine
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
     module subroutine sub1
     END subroutine
  END INTERFACE
contains
     module subroutine sub
call sub1()
     END subroutine
module real function plus_one(i)
  integer i
  plus_one = rr1%ar1(i) + dble(i)
end function plus_one
end
submodule(m:smod)smod1
  INTERFACE
     module subroutine sub2
     END subroutine
  END INTERFACE
contains
     module subroutine sub1
  real(kind=8) ans(16)
call sub2()
  allocate(rr1%ar1(16))
  do i=1,16
     rr1%ar1(i) = dble(i)
     ans(i) = plus_one(1)
  end do
  if (ans(10) == 2.0) then
  else
     print *,"NG",ans(10)
end if
     END subroutine
end
submodule(m:smod1)smod2
  INTERFACE
     module subroutine sub3
     END subroutine
  END INTERFACE
contains
     module subroutine sub2
call sub3()
     END subroutine
end
submodule(m:smod2)smod3
contains
     module subroutine sub3
print *,'pass'
     END subroutine
end

use m
call sub()
end
