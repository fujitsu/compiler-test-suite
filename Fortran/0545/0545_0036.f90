module d1
  type foo
  end type
  type ,extends(foo)::e
  end type
end
module foo_module
 type :: foo
 integer :: ii
 contains
    procedure :: times => times_foo
    generic :: gnr=>times
 end type
  type ,extends(foo)::e
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
 use foo_module ,YY => foo
end module

module dr
use d1,only:e
use m1,only : foo
use m1,only : XX,ZZ=>XX,YY,PP=>XX

use m1,only : ZZ=>XX
end
program main
use dr
type(foo)  :: this
type(xx)  :: this_xx
type(zz)  :: this_zz
type(YY)  :: this_yy
type(PP)  :: this_pp
this%ii = 5
this_zz%ii = 6
this_xx%ii = 6
this_yy%ii = 7
this_pp%ii = 8
 if(this%times(1) .NE. 6) print*,"121"
 if(this_xx%times(1) .NE. 7) print*,"122"
 if(this_yy%times(1) .NE. 8) print*,"123"
 if(this_zz%times(1) .NE. 7) print*,"124"
 if(this_pp%times(1) .NE. 9) print*,"125"
 if(this%gnr(1) .NE. 6) print*,"121"
 if(this_xx%gnr(1) .NE. 7) print*,"122"
 if(this_yy%gnr(1) .NE. 8) print*,"123"
 if(this_zz%gnr(1) .NE. 7) print*,"124"
 if(this_pp%gnr(1) .NE. 9) print*,"125"
 print*,"pass"
end program


