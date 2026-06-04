module moda
contains
   subroutine func()
   common r
   r = 5
   end subroutine  
   subroutine main
   real r
   common r
   call pp
   contains
   subroutine pp
   pointer(base,x)
   r = 1
   call func()
   print *, "r = ",r
   end subroutine
   end subroutine
end
use moda
call main
end
