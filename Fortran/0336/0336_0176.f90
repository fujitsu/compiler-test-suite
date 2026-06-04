module moda
contains
   subroutine func(p)
   value p
   pointer(p,iq)
   iq=5
   end subroutine  
   subroutine main
   integer j
   call pp
   contains
   subroutine pp
   j=1
   call func(loc(j))
   print *,"j = ",j
   end subroutine
   end subroutine
end
use moda
call main
end
