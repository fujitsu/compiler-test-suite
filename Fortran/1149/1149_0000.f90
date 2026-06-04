module km
 type :: foo
    private
 integer :: ii=8
 contains
    private
    procedure :: times => times_foo
    generic :: gnr=>times
end type
private
  public sub
  interface
     module subroutine sub
     end subroutine sub
  end interface
contains
   function times_foo(this,inp) 
     class(foo) ,intent(in) :: this
     integer, intent(in) :: inp
     integer :: times_foo
     times_foo = this%ii + inp 
   end function
end
submodule(km)smod
contains
  module subroutine sub
type(foo)  :: this_pp
 if(this_pp%ii       .NE. 8) print*,"124"
 if(this_pp%times(1) .NE. 9) print*,"125"
 if(this_pp%gnr  (1) .NE. 9) print*,"126"
end
end
use km
call sub
 print*,"sngg055o : pass"
end program


