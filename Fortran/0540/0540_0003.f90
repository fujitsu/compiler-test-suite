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
   use mod01
   implicit none
   private

   public :: ytype

   type, abstract :: ytype
      class (type01),allocatable :: data_reference
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
      procedure (put), deferred :: put
   end type AbstractSocket

   abstract interface
      function put(this, request_id, local_reference, rc) result(handle)
         use mod01
         use mod02
         import AbstractSocket
         class (ytype), allocatable :: handle
         class (AbstractSocket), intent(inout) :: this
         integer, intent(in) :: request_id
         class (type01), intent(in) :: local_reference
         integer, optional, intent(out) :: rc
      end function put
   end interface

end module mod03

module m4
contains 
subroutine ss(rh_ptr)
   use mod03
   use mod02
      class(ytype), pointer :: rh_ptr

end
end
use m4
   use mod03
   use mod02

      class(ytype), pointer :: rh_ptr
      integer :: status

if (0==1)then
        call rh_ptr%wait()
        call rh_ptr%data_reference%deallocate(status)
endif

print *,'pass'
   end
