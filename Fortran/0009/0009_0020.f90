module m1
 real:: value  
end

module m2
contains
 subroutine inner
 use m1       
   call inner_def
   contains
 subroutine inner_def
  value = 2    
  call ref
 end subroutine
 end subroutine
 subroutine def
  call inner
 end subroutine
end

use m2,only: def 
call def
print *,'OK'
end

subroutine ref  
 use m1        
 write(1,*) value 
end 
