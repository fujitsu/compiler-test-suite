module m1
  type t1
     integer::x
   contains
     procedure:: proc
     generic :: gen => proc
  end type t1
  
  interface
     module subroutine sub(me)
       class(t1), intent(inout)::me
     end subroutine
  end interface
contains
     subroutine proc(me) 
       class(t1), intent(in)::me
    if (me%x/=1) print *,9001
  end 
end 

submodule (m1) submod
contains
  module procedure sub
    implicit none
    call  me%gen() 
    call  me%proc()
  end procedure
end 
use m1
 class(t1),allocatable::me
allocate(me)
me%x=1
call sub(me)
print *,'sngg128n : pass'
end
