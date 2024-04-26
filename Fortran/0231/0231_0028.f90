     module k3   
      interface
       subroutine sub (s)       
         interface
           function   s(p) 
        interface
            function p()
        type :: y
           integer :: x
        end type 
        type :: type01
           integer :: x
           type(y)::uu
        end type type01
            type(type01) :: p
          end function
         end interface
          end function
         end interface
       end subroutine sub
         end interface
     end
   module nn
     use k3 
       procedure(sub),pointer::pp
  end
use nn
       print *,'pass'
     end 
