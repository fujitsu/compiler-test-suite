     module k3      
     contains
       subroutine sub (p)       
         interface
           function   p() 
        type :: type01   
           integer :: x
        end type type01
            type(type01) :: p
          end function
         end interface
       end subroutine sub
     end
     use k3 
       print *,'pass'
     end 
