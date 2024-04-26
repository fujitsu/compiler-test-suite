module mod01
      type :: ty_prc
      end type ty_prc
      interface ty_prc
         module procedure proc01
      end interface ty_prc
      contains
      function proc01() result(v)
         type (ty_prc) :: v
      end function proc01
end module mod01
module mod02
   implicit none
   private
   public :: ty2
   type :: ty2
      private
      integer::xx
   end type ty2
contains
   subroutine proc2( handlers)
      use mod01
      type(ty_prc), intent(inout) :: handlers
   end subroutine proc2
end module mod02
module mod03
   use mod02
   use mod01
   implicit none
   private
   public :: ty_prc
end module mod03
  subroutine xxx
      use mod03
      type (ty_prc) :: handlers
   end subroutine
print *,'pass'
end
