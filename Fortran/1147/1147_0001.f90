module foo_module
 type :: foo
 integer :: ii=8
 contains
    procedure :: times => times_foo
    !generic :: gnr=>times
 end type

contains
   function times_foo(this,inp) 
     class(foo) ,intent(in) :: this
     integer, intent(in) :: inp
     integer :: times_foo
     times_foo = this%ii + inp 
   end function

end module

module m1
 use foo_module ,only : foo
 use foo_module ,XX => foo
end module


module km
use m1,only : foo
use m1,only : PP=>XX
  public sub
  interface
     module subroutine sub
     end subroutine sub
  end interface
end
submodule(km)smod
contains
  module subroutine sub
type(PP)  :: this_pp
 if(this_pp%ii       .NE. 8) print*,"124"
 if(this_pp%times(1) .NE. 9) print*,"125"
end
end
module gg
use km
  public xub,hhh,sub
private
  interface
     module subroutine xub
     end 
  end interface
contains
subroutine hhh
type(PP)  :: this_pp
type(foo)  :: this_f
 if(this_pp%ii       .NE. 8) print*,"124"
 if(this_pp%times(1) .NE. 9) print*,"125"
 if(this_f %ii       .NE. 8) print*,"124"
 if(this_f %times(1) .NE. 9) print*,"125"
end
end
submodule(gg)xmod
contains
  module subroutine xub
type(PP)  :: this_pp
type(foo)  :: this_f
 if(this_pp%ii       .NE. 8) print*,"124"
 if(this_pp%times(1) .NE. 9) print*,"125"
 if(this_f %ii       .NE. 8) print*,"124"
 if(this_f %times(1) .NE. 9) print*,"125"
end
end
use gg
call sub
call xub
call hhh
 print*,"sngg009o : pass"
end program

