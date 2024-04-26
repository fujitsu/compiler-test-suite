print *,"pass"
end
   subroutine build_locks()
   implicit none
   type :: AbstractLock
   end type AbstractLock
   print *, (build_lock())
   contains
   type (AbstractLock) function build_lock() 
   end function build_lock
   end subroutine build_locks
