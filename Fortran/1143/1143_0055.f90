module m1
  type t1
     integer::x
   contains
     procedure:: fun
     generic :: gen => fun
  end type t1
  
  interface
     module subroutine sub(me)
       class(t1), intent(inout)::me
     end subroutine
  end interface
contains
     function fun(me) result(r)
       class(t1), intent(in)::me
       logical :: r
    if (me%x/=1) print *,9001
    r = .false.
  end 
end module m1

submodule (m1) submod
contains
    module subroutine sub(me)
    implicit none
       class(t1), intent(inout)::me
    if ( me%gen()) print *,1001
    if ( me%fun()) print *,2001
  end subroutine
end 
use m1
 class(t1),allocatable::me
allocate(me)
me%x=1
call sub(me)
print *,'sngg127n : pass'
end
