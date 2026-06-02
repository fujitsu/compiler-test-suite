   Module m
   contains
   function f1()
     entry E1()
       E1 = 4
   end function
   subroutine s
     procedure(E1),pointer :: ptr !!!!
ptr=>f1
if(ptr()/=4) print *,1001
ptr=>e1
if(ptr()/=4) print *,1002
   end 
   end 
use m
call s

     print*,"sngg165o : pass"
   end

