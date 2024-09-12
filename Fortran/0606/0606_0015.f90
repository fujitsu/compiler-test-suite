module foo_module
 type :: foo
 integer :: ii
 contains
    procedure :: times => times_foo
    procedure :: assign => assign_foo
    generic :: operator(*) => times
    generic :: assignment(=) => assign
 end type
 type :: bar
 integer :: ii
 contains
    procedure :: times => times_bar
    procedure :: assign => assign_bar
    generic :: operator(*) => times
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

     function times_bar(this,factor) result(product)
     class(bar) ,intent(in) :: this
     class(bar) ,allocatable :: product
     integer, intent(in) :: factor
     allocate (product, source = this)
     product%ii = -product%ii * factor *3
   end function

   subroutine assign_bar(lhs,rhs)
     class(bar) ,intent(inout) :: lhs
     class(bar) ,intent(in) :: rhs
     lhs%ii = -rhs%ii * 3
   end subroutine

end module

module m1
 use foo_module ,XX => bar,PP1=>foo
end module

program main
use m1
type(XX)  :: this_xx
this_xx%ii = 6
this_xx = this_xx *2 
 if(this_xx%ii .NE. 108) print*,"122"
 print*,"pass"
end program
