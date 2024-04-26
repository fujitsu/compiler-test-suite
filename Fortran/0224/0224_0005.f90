module PFL_Config
   implicit none
contains
   subroutine build_locks()
   type :: AbstractLock
   end type AbstractLock
   call locksinsert(build_lock)
   contains
     type (AbstractLock) function build_lock() 
     if (1.eq.2) build_lock = AbstractLock()
     end function build_lock
   end subroutine build_locks
end 
use PFL_Config
   print *,"pass"
end
subroutine  locksinsert(build_lock)
 interface
  function build_lock()
    end function
   end interface
end 
