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
      class(ty2), intent(inout) :: this
      integer, intent(in) :: handlers
   end subroutine proc2
end module nnn
module kkkk
   use nnn
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
      type (ty2) :: h2
call h2%proc2(1)
end
end

      use kkkk
call sub
print *,'sngg989n : pass'
end
