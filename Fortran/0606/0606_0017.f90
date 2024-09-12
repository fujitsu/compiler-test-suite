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
     product%ii = -product%ii * factor
   end function

   subroutine assign_foo(lhs,rhs)
     class(foo) ,intent(inout) :: lhs
     class(foo) ,intent(in) :: rhs
     lhs%ii = -rhs%ii
   end subroutine


end module

program main
 use foo_module ,XX => foo
 use foo_module ,only : foo

 type(foo)  :: this
 type(XX)  :: this_xx
 this%ii = 5
 this_xx%ii = 6
 this = this.MUL. 5
 this_xx = this_xx .MUL. 5
  if (this%ii .ne. 25) print*,  "101"
  if (this_xx%ii .ne. 30) print*,  "201"
 print*,"pass"
end program


