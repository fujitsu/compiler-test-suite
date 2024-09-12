module foo_module
 type :: foo
 integer :: ii
 contains
    procedure :: times => times_foo
      procedure :: assign => assign_foo
    generic :: operator(*) => times
    generic :: assignment(=) => assign
 end type

contains
   function times_foo(this,factor) result(product)
     class(foo) ,intent(in) :: this
     class(foo) ,allocatable :: product
     integer, intent(in) :: factor
     allocate (product, source = this)
     product%ii = -product%ii * factor
   end function

   subroutine assign_foo(lhs,rhs)
     class(foo) ,intent(inout) :: lhs
     class(foo) ,intent(in) :: rhs
     lhs%ii = -rhs%ii
   end subroutine
end module

module m1
 use foo_module ,only : foo
 use foo_module ,XX => foo
 use foo_module ,YY => foo
end module


program main
use m1
 type(foo)  :: this
 type(XX)  :: this_xx
 type(YY)  :: this_yy
 this%ii = 5
 this_xx%ii = 6
 this_yy%ii = 7
 this = this * 5
 this_xx = this_xx * 5
 this_yy = this_yy * 5
  if (this%ii .ne. 25) print*,  "101"
  if (this_xx%ii .ne. 30) print*,  "201"
  if (this_yy%ii .ne. 35) print*,  "301"
  print *, "pass"
end program


