module m1
 type :: foo
 integer :: ii=8
 contains
    procedure :: times => times_foo
    generic :: gnr=>times
 end type
interface gnr
procedure::times_foo2
end interface

contains
   function times_foo(this,inp) 
     class(foo) ,intent(in) :: this
     integer, intent(in) :: inp
     integer :: times_foo
     times_foo = this%ii + inp 
   end function
   function times_foo2(this,inp) 
     class(foo) ,intent(in) :: this
     integer, intent(in) :: inp
     integer :: times_foo2
     times_foo2 = this%ii + inp +10
   end function

end module

module km
use m1
private::gnr
  public sub
  interface
     module subroutine sub
     end subroutine sub
  end interface
end
submodule(km)smod
contains
  module subroutine sub
type(foo)  :: this_pp
 if(this_pp%ii       .NE. 8) print*,"124"
 if(this_pp%times(1) .NE. 9) print*,"125"
 if(this_pp%gnr(1) .NE. 9) print*,"125"
 if (gnr(this_pp,1) .NE. 19) print*,"126"
end
end
use km
call sub
 print*,"sngg046o : pass"
end program


