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
use m1,only : XX
use m1,only : YY=>XX
use m1,only : foo
type(YY)  :: this_yy
type(xx)  :: this_xx
type(foo)  :: this_foo
this_xx%ii = 6
this_yy%ii = 6
this_foo%ii = 6
if(this_xx%times(1) .NE. 7) print*,"122"
 if(this_xx%ptimes1(1.0) .NE. 8) print*,"123"
 if(this_xx%gnr(1) .NE. 7) print*,"124"
 if(this_xx%gnr1(1) .NE. 7) print*,"125"
 if(this_xx%gnr1(1.0) .NE. 8) print*,"126"
if(this_yy%times(1) .NE. 7) print*,"127"
 if(this_yy%ptimes1(1.0) .NE. 8) print*,"128"
 if(this_yy%gnr(1) .NE. 7) print*,"129"
 if(this_yy%gnr1(1) .NE. 7) print*,"130"
 if(this_yy%gnr1(1.0) .NE. 8) print*,"131"
if(this_foo%times(1) .NE. 7) print*,"132"
 if(this_foo%ptimes1(1.0) .NE. 8) print*,"133"
 if(this_foo%gnr(1) .NE. 7) print*,"134"
 if(this_foo%gnr1(1) .NE. 7) print*,"135"
 if(this_foo%gnr1(1.0) .NE. 8) print*,"136"
 print*,"pass"
end program
