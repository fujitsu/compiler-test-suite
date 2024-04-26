module mod02
   implicit none
   private

   public :: ytype

   type, abstract :: ytype
   contains
      procedure(wait), deferred :: wait
   end type ytype

   abstract interface
      subroutine wait(this, rc)
         import ytype
         class (ytype), intent(inout) :: this
         integer, optional, intent(out) :: rc
      end subroutine wait
   end interface
end module mod02

module mod03
   implicit none
   private

   abstract interface
      function put() result(handle)
         use mod02
         class (ytype), allocatable :: handle
      end function put
   end interface

end module mod03

   use mod03
   use mod02

      class(ytype), pointer :: rh_ptr

if (0==1)then
        call rh_ptr%wait()
end if

print *,'pass'
   end
