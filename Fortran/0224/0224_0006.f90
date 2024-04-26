module PFL_Config
   implicit none
   type :: AbstractLock
   end type AbstractLock
contains
   subroutine build_locks()
   call locksinsert(build_lock)
   contains
     type (AbstractLock) function build_lock() 
     if (1.eq.2) build_lock = AbstractLock()
     end function build_lock
   end subroutine build_locks
end 
print *,"pass"
end
subroutine  locksinsert(build_lock)
 interface
  function build_lock()
    end function
   end interface
end
