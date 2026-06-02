module m1
  type t1
     integer::x
   contains
     procedure:: proc
     generic :: gen => proc
  end type t1
contains
  subroutine proc(var) 
    class(t1), intent(in)::var
    if (var%x/=1) print *,9001
  end 
end 
module m2
       use m1
  interface
     module subroutine sub(var)
       class(t1), intent(inout)::var
     end subroutine
  end interface
end

submodule (m2) submod
use m1
contains
  module procedure sub
    implicit none
    call  var%gen() 
    call  var%proc() 
  end procedure
end 
use m2
 class(t1),allocatable::var
allocate(var)
var%x=1
call sub(var)
print *,'sngg139n : pass'
end
