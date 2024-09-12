module foo_module
 type :: foo
 integer :: ii
 contains
    procedure :: times => times_foo
    procedure :: ptimes1 => ftimes_foo1
    generic :: gnr=>times
    generic :: gnr1=>times,ptimes1
 end type

contains
   function times_foo(this,inp) 
     class(foo) ,intent(in) :: this
     integer, intent(in) :: inp
     integer :: times_foo
     times_foo = this%ii + inp 
   end function
   function ftimes_foo1(this,inp) 
     class(foo) ,intent(in) :: this
     real, intent(in) :: inp
     integer :: ftimes_foo1
     ftimes_foo1 = this%ii + inp + 1
   end function

end module

module m1
 use foo_module ,XX => foo
 use foo_module ,only : foo
end module


program main
use m1,only : YY=>XX
use m1,only : XX
type(xx)  :: this_xx

this_xx%ii = 6
if(this_xx%times(1) .NE. 7) print*,"122"
 if(this_xx%ptimes1(1.0) .NE. 8) print*,"122"
 if(this_xx%gnr(1) .NE. 7) print*,"123"
 if(this_xx%gnr1(1) .NE. 7) print*,"124"
 if(this_xx%gnr1(1.0) .NE. 8) print*,"125"
 print*,"pass"
end program
