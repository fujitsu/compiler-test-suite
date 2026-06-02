module m1
  type t1
     integer::x
   contains
     procedure:: proc
     generic :: operator(.x.) => proc
  end type t1
  
  interface
     module subroutine sub(var)
       class(t1), intent(inout)::var
     end subroutine
  end interface
contains
  function  proc(var,n) result(r)
    class(t1), intent(in)::var
    integer,intent(in)::n
    integer::r
    r=var%x+n
  end function
end 

submodule (m1) submod
contains
  module procedure sub
    implicit none
    if (  var%proc(1) /= 2) print *,101 
    if ( (var.x.1) /= 2) print *,1012
  end procedure
end 
use m1
 class(t1),allocatable::var
allocate(var)
var%x=1
call sub(var)
print *,'sngg132n : pass'
end
