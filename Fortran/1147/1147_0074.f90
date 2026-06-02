module m1
      type :: ty1
        integer::x
      end type ty1
      interface ty1
         module procedure proc1
      end interface ty1
      contains
      function proc1(k) result(v)
         type (ty1) :: v
!!!!v=ty1(k)
v%x=k
      end function proc1
end module m1
module nnn
   implicit none
   private
   public :: ty2
   type :: ty2
      private
   contains
      procedure :: proc2
   end type ty2
contains
   subroutine proc2(this,  handlers)
      use m1
      class(ty2), intent(inout) :: this
      type(ty1), intent(inout) :: handlers
   end subroutine proc2
end module nnn
module kkkk
   use nnn
   use m1
   implicit none
   private
   public :: sub
  interface
     module subroutine sub
     end subroutine sub
  end interface
end module kkkk
submodule(kkkk)smod
contains
  module subroutine sub
      type (ty1) :: h1
      type (ty2) :: h2
call h2%proc2(h1)
end
end

      use kkkk
call sub
print *,'sngg987n : pass'
end
