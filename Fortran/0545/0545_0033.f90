module foo_module
 type :: foo
 integer :: ii
 contains
    procedure :: times => times_foo
     procedure :: assign => assign_foo
    generic :: operator(.MUL.) => times
    generic :: assignment(=) => assign
 end type

contains
    function times_foo(this,factor) result(product)
     class(foo) ,intent(in) :: this
     class(foo) ,allocatable :: product
     integer, intent(in) :: factor
     allocate (product, source = this)
     product%ii = -product%ii * factor *2
   end function

   subroutine assign_foo(lhs,rhs)
     class(foo) ,intent(inout) :: lhs
     class(foo) ,intent(in) :: rhs
     lhs%ii = -rhs%ii * 2
   end subroutine

end module

module m1
 use foo_module ,XX => foo
 use foo_module ,only : foo
 type,extends(XX) :: ZZ
 integer :: jj
 contains
    procedure :: Ztimes => Stimes_foo
    procedure :: Qassign => Rassign_foo
     generic :: operator(.MUL.) => Ztimes

 end type
contains
    function Stimes_foo(this,factor) result(product)
     class(ZZ) ,intent(in) :: this
     real :: product
     real, intent(in) :: factor
     product = -this%jj * factor *3
   end function

   subroutine Rassign_foo(lhs,rhs)
     class(ZZ) ,intent(out) :: lhs
     class(ZZ) ,intent(in) :: rhs
     lhs%jj = -rhs%jj * 3
   end subroutine
end module


program main
use m1,only : XX
use m1,only : YY=>ZZ
use m1,only : ZZ
type(YY)  :: this_yy
type(XX)  :: this_xx
type(ZZ)  :: this_zz
real  :: i
this_xx%ii = 6
this_yy%ii = 6
this_zz%ii = 6

this_xx = this_xx .MUL. 3
this_yy = this_yy .MUL. 4
this_zz = this_zz .MUL. 5

if ( this_xx%ii.NE. 72) print *, "101"
if ( this_yy%ii.NE. 96) print *, "102"
if ( this_zz%ii.NE. 120) print *, "103"

this_yy%jj = 7
this_zz%jj = 8
i = this_yy.MUL.3.0
if( i.NE. -63) print *, "201"
i = this_zz.MUL.3.0
if( i.NE. -72) print *, "202"
print *, "pass"

end program
