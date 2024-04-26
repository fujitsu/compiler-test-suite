module PFL_Config
   implicit none
contains
   subroutine build_locks()
   type, abstract :: AbstractLock
   contains
      procedure(lock), deferred :: acquire
   end type AbstractLock

   abstract interface
      subroutine lock(this)
         import AbstractLock
         class (AbstractLock), intent(inout) :: this
      end subroutine lock
   end interface

   print *, "pass"

   contains
   function build_lock() result(lock)
     class (AbstractLock), allocatable :: lock
   end function build_lock
   end subroutine build_locks
end
use PFL_Config
call build_locks()
end
subroutine  func1(build_lock)
 use PFL_Config
 print *,"pass"
end subroutine
function build_lock()
end function
