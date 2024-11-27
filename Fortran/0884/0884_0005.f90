module foo_module
 type :: foo
 integer :: ii
 contains
    procedure :: times => times_foo
    generic :: gnr=>times
 end type
 type :: boo
 integer :: ii
 contains
    procedure :: etimes => times_boo
    generic :: gnr=>etimes
 end type

contains
   function times_foo(this,inp) 
     class(foo) ,intent(in) :: this
     integer, intent(in) :: inp
     integer :: times_foo
     times_foo = this%ii + inp 
   end function
   function times_boo(this,inp) 
     class(boo) ,intent(in) :: this
     integer, intent(in) :: inp
     integer :: times_boo
     times_boo = this%ii + inp + 1
   end function

end module

module m1
 use foo_module ,XX => boo,PP1=>foo
end module

program main
use m1
type(xx)  :: this_xx
this_xx%ii = 6
 if(this_xx%etimes(1) .NE. 8) print*,"122"
 print*,"pass"
end program
