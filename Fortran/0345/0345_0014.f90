module moda
contains
   subroutine main1(i)
   print *,'erro'
   entry main(i)
   call func(i)
   end subroutine
   subroutine func(i)
    i=777
   end subroutine  
end

use moda
call main(i)
if (i/=777) print *,'error'
print *,'pass'
end
