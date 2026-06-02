module m1
  type t1
     integer::x
   contains
     procedure,nopass:: proc
     generic :: gen => proc
  end type t1
  
  interface
     module subroutine sub(var)
       class(t1), intent(inout)::var
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
     module subroutine sub(var)
    implicit none
       class(t1), intent(inout)::var
    call  var%gen(var) 
    call  var%proc(var) 
     end subroutine
end 
use m1
 class(t1),allocatable::var
allocate(var)
var%x=1
call sub(var)
print *,'sngg136n : pass'
end
