module PFL_Config
   implicit none
contains
   subroutine build_locks()
   type :: AbstractLock
   end type AbstractLock
   call locksinsert(build_lock)
   contains
   type (AbstractLock) function build_lock() 
   end function build_lock
   end subroutine build_locks
end 
print *,"pass"
end
subroutine locksinsert(func)
   use PFL_Config
   print *,"pass"
end
function  func()
end function
