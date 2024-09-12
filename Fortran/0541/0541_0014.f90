module mod01
   implicit none
   private

   public :: type_y

   type,abstract :: type_y
      integer, allocatable :: shape(:)
      integer :: type_kind
   contains
      procedure :: allocate
      procedure :: deallocate
   end type type_y
contains
   subroutine allocate(this, rc)
      class (type_y), intent(inout) :: this
      integer, optional, intent(out) :: rc
   end subroutine allocate

   subroutine deallocate(this, rc)
      class (type_y), intent(inout) :: this
      integer, optional, intent(out) :: rc
   end subroutine deallocate

end module mod01

module nnmod02
   use mod01
   implicit none
   private

   public :: AbstractRequestHandle

   type, abstract :: AbstractRequestHandle
      class (type_y),allocatable :: data_reference
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
end module nnmod02

module kkkkmod
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
         use nnmod02
         import AbstractSocket
         class (AbstractRequestHandle), allocatable :: handle
         class (AbstractSocket), intent(inout) :: this
         integer, intent(in) :: request_id
         class (type_y), intent(in) :: local_reference
         integer, optional, intent(out) :: rc
      end function put
   end interface

end module kkkkmod

module rrmod
   use kkkkmod
   use nnmod02

end module rrmod
print *,'pass'
end
