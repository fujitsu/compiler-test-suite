module moda
contains
   subroutine nain
   call func
   end subroutine
   subroutine func
   end subroutine  
end

use moda
call nain
print *,'pass'
end
