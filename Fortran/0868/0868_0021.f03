module m1
      contains
        function f() result(r)
         class(*),pointer::r    
         allocate(r, source= 2)
        end function
end 
program main
use m1
type ty
end type
      select type (v => f())   
        type is (real)        
          print *,'error'
        type is (ty)
                             
      end select               


print *,'pass'
end program
