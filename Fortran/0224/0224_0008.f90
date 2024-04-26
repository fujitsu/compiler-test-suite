   subroutine build_locks()
   implicit none
   type :: AbstractLock
   end type AbstractLock
   call locksinsert(build_lock)
   contains
     type (AbstractLock) function build_lock() 
     if (1.eq.2) build_lock = AbstractLock()
     end function build_lock
   end subroutine build_locks
print *,"pass"
end
subroutine  locksinsert(build_lock)
   interface
    function build_lock()
    end function
   end interface
   print *, "pass"
end
