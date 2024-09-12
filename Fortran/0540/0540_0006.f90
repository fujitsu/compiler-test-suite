module mod01
   implicit none
   private

   public :: type01

   type,abstract :: type01
      integer, allocatable :: shape(:)
      integer :: type_kind
   contains
      procedure :: deallocate
   end type type01
contains

   subroutine deallocate(this, rc)
      class (type01), intent(inout) :: this
      integer, optional, intent(out) :: rc
   end subroutine deallocate

end module mod01

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

   public :: AbstractSocket

   type, abstract :: AbstractSocket
   contains
   end type AbstractSocket

   abstract interface
      function put(this) result(handle)
         use mod01
         use mod02
         import AbstractSocket
         class (ytype), allocatable :: handle
         class (AbstractSocket), intent(inout) :: this
      end function put
   end interface

end module mod03

   use mod02
   use mod03

      class(ytype), pointer :: rh_ptr

if (1==0) call rh_ptr%wait()

print *,'pass'
   end
