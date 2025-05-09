module foo_module
 type :: foo
 integer :: ii
 contains
    procedure :: times1 => ftimes_foo1
    generic :: gnr=>times1
 end type
 type,extends(foo) :: ZZ
 integer :: jj
 contains
    procedure :: times1 => Rtimes_foo1
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

   function Stimes_foo(this,inp,inp1) 
     class(ZZ) ,intent(in) :: this
     integer , intent(in) :: inp
     integer , intent(in) :: inp1
     integer :: Stimes_foo
     Stimes_foo = this%ii + inp + inp1 + 2
   end function
   function Rtimes_foo1(this,inp) 
     class(ZZ) ,intent(in) :: this
     real, intent(in) :: inp
     integer :: Rtimes_foo1
     Rtimes_foo1 = this%ii + inp + 3
   end function
end module

program main
use foo_module,only : ZZ
use foo_module,only : YY=>ZZ
type(YY)  :: this_yy
type(ZZ)  :: this_zz
this_yy%ii = 6
this_zz%ii = 7
 if(this_yy%times1(1.0) .NE. 10) print*,"121" 
 if(this_yy%gnr(1.0) .NE. 10) print*,"122" 
 if(this_zz%times1(1.0) .NE. 11) print*,"123" 
 if(this_zz%gnr(1.0) .NE. 11) print*,"124" 
 print*,"pass"
end program
