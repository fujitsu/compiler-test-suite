module PFL_Config
   implicit none
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
contains
   subroutine build_locks()

   call locksinsert(build_lock)
   end subroutine build_locks
   function build_lock() result(lock)
     class (AbstractLock), allocatable :: lock
   end function build_lock
end
print *,"pass"
end
        subroutine locksinsert(func)
           use PFL_Config
           print *,"pass"
        end
           function  func()
           end function
