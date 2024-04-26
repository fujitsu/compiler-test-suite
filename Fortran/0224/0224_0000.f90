module PFL_Config
contains
   subroutine build_locks()
   type :: AbstractLock
   end type AbstractLock
   print *, build_lock()
   contains
   type (AbstractLock) function build_lock() 
   end function build_lock
   end subroutine build_locks
end 
  print *,"pass"
end
