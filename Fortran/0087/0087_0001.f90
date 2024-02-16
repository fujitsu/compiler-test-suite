      module mod01
        type :: type01
           integer :: x
        end type type01
      end module mod01
     
module z
  interface
    module subroutine sub (p)       
         interface
           function   p() 
            use mod01
            type(type01) :: p
          end function
         end interface
    end subroutine
   end interface
end
      
   submodule  (z) smod 
     contains
       module subroutine sub (p)       
         interface
           function   p() 
            use mod01
            type(type01) :: p
          end function
         end interface
       end subroutine sub
     end
    
     use z
       print *,'pass'
     end 
