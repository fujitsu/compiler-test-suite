module m1
      contains
        function f() result(r)
         class(*),pointer::r  
         allocate(r, source= 2)
        end function
end 
program main
use m1
      select type (v => f()) 
        class default 
          print *,'error'
        type is (integer)  
                        
      end select               


print *,'pass'
end program
