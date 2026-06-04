module m1
  type t1
     integer::x
   contains
     procedure:: proc
     generic :: assignment(=) => proc
  end type t1
  
  interface
     module subroutine sub(var)
       class(t1), intent(inout)::var
     end subroutine
  end interface
contains
  subroutine  proc(var,n)
    class(t1), intent(out)::var
    integer,intent(in)::n
    var%x=n
  end subroutine
end 

submodule (m1) submod
contains
  module procedure sub
    implicit none
    var=2
    if (var%x /= 2) print *,101 
    var=3
    if (var%x /= 3) print *,1012
    call proc(var,4)
    if (var%x /= 4) print *,1014
  end procedure
end 
use m1
 class(t1),allocatable::var
allocate(var)
call sub(var)
print *,'sngg133n : pass'
end
