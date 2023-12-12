module m1
 real:: value  
end

module m2
 use m1       
contains
 subroutine def
  call inner
 end subroutine
 subroutine inner
   call inner_def
   contains
 subroutine inner_def
 use m1       
  value = 2    
  call ref
 end subroutine
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

