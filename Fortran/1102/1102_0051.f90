   Module m
   contains
   function f1()
     entry E1()
       E1 = 4
   end function
   subroutine s
     procedure(E1),pointer :: ptr !!!!
   end 
   end 

     print*,"sngg221i : pass"
   end

