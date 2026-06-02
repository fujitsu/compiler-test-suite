module moda
contains
   recursive subroutine func(p)
   integer,pointer :: p
   p=5
   end subroutine  
   recursive subroutine main
   integer,target :: j
   call pp
   contains
   recursive subroutine pp
   integer,pointer :: p
   p=>j
   j=1
   call func(p)
   print *, "j = ",j
   end subroutine
   end subroutine
end
use moda
call main
end
