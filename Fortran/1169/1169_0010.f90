module m1
  type t1
     integer::x
   contains
     procedure:: proc
     generic :: gen => proc
  end type t1
  
  interface
     module subroutine sub(var)
       class(t1)::var
     end subroutine
  end interface
contains
  subroutine proc(var) 
    class(t1), intent(in)::var
    if (var%x/=1) print *,9001
  end 
end 

submodule (m1) submod
contains
  module procedure sub
    implicit none
    call  var%gen() 
  end procedure
end 
use m1
 class(t1),allocatable::var
allocate(var)
var%x=1
call sub(var)
print *,'sngg142n : pass'
end
