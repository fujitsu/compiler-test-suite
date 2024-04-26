module PFL_Config
   implicit none
   type :: AbstractLock
   end type AbstractLock
   contains
   type (AbstractLock) function build_lock() 
   end function build_lock
   end 
   print *, "pass"
end 
