module d1
  type foo
  end type
  type ,extends(foo)::e
  end type
  type boo
  end type
  type ,extends(boo)::ee
  end type
end
module foo_module
 type :: foo
 integer :: ii
 contains
    procedure :: times => times_foo
    procedure :: assign => assign_foo
    generic :: operator(.MUL.) => times
    generic :: assignment(=) => assign
 end type
 type :: boo
 integer :: ii
 contains
    procedure :: times => times_boo
    procedure :: assign => assign_boo
    generic :: operator(.MUL.) => times
    generic :: assignment(=) => assign
 end type
  type ,extends(foo)::e
  end type
  type ,extends(boo)::ee
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

     function times_boo(this,factor) result(product)
     class(boo) ,intent(in) :: this
     class(boo) ,allocatable :: product
     integer, intent(in) :: factor
     allocate (product, source = this)
     product%ii = -product%ii * factor *3
   end function

   subroutine assign_boo(lhs,rhs)
     class(boo) ,intent(inout) :: lhs
     class(boo) ,intent(in) :: rhs
     lhs%ii = -rhs%ii * 3
   end subroutine 

   

end module

module m1
 use d1         ,only : ee,e
 use foo_module ,only : foo
 use foo_module ,XX => foo,XX1=>boo
 use foo_module ,YY => foo
end module


program main
 use m1         ,only : ee,e
use m1,only : foo
use m1,only : XX,ZZ=>XX,YY,PP=>XX,PP1=>XX1
use m1,only : YY
use m1,only : ZZ=>XX
type(foo)  :: this
type(XX)  :: this_xx
type(ZZ)  :: this_zz
type(YY)  :: this_yy
type(PP)  :: this_pp
type(PP1)  :: this_pp1
this%ii = 5
this_zz%ii = 6
this_xx%ii = 6
this_yy%ii = 7
this_pp%ii = 8
this_pp1%ii = 9

this = this .MUL. 2
this_zz = this_zz .MUL. 2
this_xx = this_xx .MUL. 2
this_yy = this_yy .MUL. 2
this_pp = this_pp .MUL. 2
this_pp1 = this_pp1 .MUL. 2
 
 if(this%ii .NE. 40) print*,"121"
 if(this_xx%ii .NE. 48) print*,"122"
 if(this_zz%ii .NE. 48) print*,"123"
 if(this_yy%ii .NE. 56) print*,"124"
 if(this_pp%ii .NE. 64) print*,"125"
 if(this_pp1%ii .NE. 162) print*,"126"
 print*,"pass"
end program


