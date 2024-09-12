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
end module


program main
use m1,only : XX
use m1,only : YY=>XX
use m1,only : foo
type(YY)  :: this_yy
type(XX)  :: this_xx
type(foo)  :: this_foo
this_xx%ii = 6
this_yy%ii = 6
this_foo%ii = 6

this_xx = this_xx .MUL. 2
this_yy = this_yy .MUL. 3
this_foo = this_foo .MUL. 4

 if(this_xx%ii .NE. 48) print*,"121"
 if(this_yy%ii .NE. 72) print*,"122"
 if(this_foo%ii .NE. 96) print*,"123"
 print*,"pass"
 
end program
