module pFIO_AbstractDataReferenceMod
   implicit none
   private

   public :: AbstractDataReference

   type,abstract :: AbstractDataReference
      integer, allocatable :: shape(:)
      integer :: type_kind
   contains
      procedure :: allocate
      procedure :: deallocate
   end type AbstractDataReference
contains
   subroutine allocate(this, rc)
      class (AbstractDataReference), intent(inout) :: this
      integer, optional, intent(out) :: rc
   end subroutine allocate

   subroutine deallocate(this, rc)
      class (AbstractDataReference), intent(inout) :: this
      integer, optional, intent(out) :: rc
   end subroutine deallocate

end module pFIO_AbstractDataReferenceMod

module pFIO_AbstractRequestHandleMod
   use pFIO_AbstractDataReferenceMod
   implicit none
   private

   public :: AbstractRequestHandle

   type, abstract :: AbstractRequestHandle
      class (AbstractDataReference),allocatable :: data_reference
   contains
      procedure(wait), deferred :: wait
   end type AbstractRequestHandle

   abstract interface
      subroutine wait(this, rc)
         import AbstractRequestHandle
         class (AbstractRequestHandle), intent(inout) :: this
         integer, optional, intent(out) :: rc
      end subroutine wait
   end interface
end module pFIO_AbstractRequestHandleMod

module pFIO_AbstractSocketMod
   implicit none
   private

   public :: AbstractSocket

   type, abstract :: AbstractSocket
   contains
      procedure (put), deferred :: put
   end type AbstractSocket

   abstract interface
      function put(this, request_id, local_reference, rc) result(handle)
         use pFIO_AbstractDataReferenceMod
         use pFIO_AbstractRequestHandleMod
         import AbstractSocket
         class (AbstractRequestHandle), allocatable :: handle
         class (AbstractSocket), intent(inout) :: this
         integer, intent(in) :: request_id
         class (AbstractDataReference), intent(in) :: local_reference
         integer, optional, intent(out) :: rc
      end function put
   end interface

end module pFIO_AbstractSocketMod

module pFIO_BaseThreadMod

   implicit none
contains

   subroutine clear
   use pFIO_AbstractSocketMod
   use pFIO_AbstractRequestHandleMod
      class(AbstractRequestHandle), pointer :: rh_ptr
      integer :: status

        call rh_ptr%wait()
        call rh_ptr%data_reference%deallocate(status)

   end subroutine

end module pFIO_BaseThreadMod

subroutine ss

   use pFIO_AbstractSocketMod
   use pFIO_AbstractRequestHandleMod
use    pFIO_BaseThreadMod
      class(AbstractRequestHandle), pointer :: rh_ptr
      integer :: status

        call rh_ptr%wait()
        call rh_ptr%data_reference%deallocate(status)
end
print *,'pass'
end
