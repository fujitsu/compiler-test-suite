module foo_module
 type :: foo
 integer :: ii
 contains
    procedure :: times => times_foo
    generic :: gnr=>times
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


program main
use m1
 type(foo)  :: this
 type(xx)  :: this_xx
 type(YY)  :: this_yy
 this%ii = 5
 this_xx%ii = 6
 this_yy%ii = 7
 if(this%gnr(1) .NE. 6) print*,"121"
 if(this_xx%gnr(1) .NE. 7) print*,"122"
 if(this_yy%gnr(1) .NE. 8) print*,"123"
 print*,"pass"
end program


