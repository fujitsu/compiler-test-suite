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

module km
 use foo_module ,only : foo
 use foo_module ,XX => foo
private
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
type(XX)  :: this_tt
 if(this_pp%ii       .NE. 8) print*,"124"
 if(this_pp%times(1) .NE. 9) print*,"125"
 if(this_tt%ii       .NE. 8) print*,"1241"
 if(this_tt%times(1) .NE. 9) print*,"1251"
end
end
use km
call sub
 print*,"sngg008o : pass"
end program


