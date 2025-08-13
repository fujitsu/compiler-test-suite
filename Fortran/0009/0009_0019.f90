module m1
 real:: value  
end

module m2
contains
 subroutine inner
   call inner_def
   contains
 subroutine inner_def
 use m1       
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
 write(22,*) value 
end 
