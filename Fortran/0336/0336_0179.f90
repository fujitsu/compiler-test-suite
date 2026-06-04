module moda
contains
   subroutine func()
   common r
   r=5
   end subroutine  
   subroutine main
   pointer(base,x)
   real r
   common r
   r=1
   call func()
   print *, "r = ",r
   end subroutine
end
use moda
call main
end
