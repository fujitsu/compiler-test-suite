module moda
  integer::i
contains
   subroutine main
   call maim
   end subroutine
   subroutine maim
     i=777
   end subroutine  
end

use moda
call main
if (i/=777) print *,'error'
print *,'pass'
end
