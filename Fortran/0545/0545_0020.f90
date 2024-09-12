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
 type,extends(XX) :: ZZ
 integer :: jj
 contains
    procedure :: Ztimes => Stimes_foo
    procedure :: Qtimes1 => Rtimes_foo1
    generic :: gnr=>Ztimes,Qtimes1
    generic :: gRnr1=>Ztimes
 end type
contains
   function Stimes_foo(this,inp,inp1) 
     class(ZZ) ,intent(in) :: this
     integer , intent(in) :: inp
     integer , intent(in) :: inp1
     integer :: Stimes_foo
     Stimes_foo = this%ii + inp + inp1 + 2
   end function
   function Rtimes_foo1(this,inp) 
     class(ZZ) ,intent(in) :: this
     real , intent(in) :: inp
     integer :: Rtimes_foo1
     Rtimes_foo1 = this%ii + inp + 3
   end function
end module


program main
use m1,only : XX
use m1,only : YY=>ZZ
use m1,only : ZZ
type(YY)  :: this_yy
type(xx)  :: this_xx
type(zz)  :: this_zz
this_xx%ii = 6
this_yy%ii = 6
this_zz%ii = 6
if(this_xx%times(1) .NE. 7) print*,"122"
 if(this_xx%ptimes1(1.0) .NE. 8) print*,"123"
 if(this_xx%gnr(1) .NE. 7) print*,"124"
 if(this_xx%gnr1(1) .NE. 7) print*,"125"
 if(this_xx%gnr1(1.0) .NE. 8) print*,"126"
if(this_yy%times(1) .NE. 7) print*,"127"
 if(this_yy%ptimes1(1.0) .NE. 8) print*,"128"
if(this_yy%Ztimes(1,2) .NE. 11) print*,"129"
 if(this_yy%Qtimes1(1.0) .NE. 10) print*,"130"
 if(this_yy%gnr(1) .NE. 7) print*,"131"
if(this_yy%gnr(1,2) .NE. 11) print*,"132"
 if(this_yy%gnr(1.0) .NE. 10) print*,"133"
 if(this_yy%gnr1(1) .NE. 7) print*,"134"
 if(this_yy%gnr1(1.0) .NE. 8) print*,"135"
if(this_zz%times(1) .NE. 7) print*,"136"
 if(this_zz%ptimes1(1.0) .NE. 8) print*,"137"
if(this_zz%Ztimes(1,2) .NE. 11) print*,"138"
 if(this_zz%Qtimes1(1.0) .NE. 10) print*,"139"
 if(this_zz%gnr(1) .NE. 7) print*,"140"
if(this_zz%gnr(1,2) .NE. 11) print*,"141"
 if(this_zz%gnr(1.0) .NE. 10) print*,"142"
 if(this_zz%gnr1(1) .NE. 7) print*,"143"
 if(this_zz%gnr1(1.0) .NE. 8) print*,"144"
 print*,"pass"
end program
