module m1
  type t1
     integer::x
   contains
     procedure:: proc
     generic :: gen => proc
  end type t1
  
  interface
     module function f()  result(var)
       class(t1),allocatable::var
     end function
  end interface
contains
  subroutine proc(var) 
    class(t1), intent(out)::var
    var%x=1
  end subroutine
end 

submodule (m1) submod
contains
  module procedure f
    implicit none
    allocate(var)
    call  var%gen() 
    if (var%x/=1) print *,9111
    var%x=0
    call  var%proc() 
    if (var%x/=1) print *,9211
  end procedure
end 
use m1
 type(t1)::var
var=f()
    if (var%x/=1) print *,9011
print *,'sngg140n : pass'
end
