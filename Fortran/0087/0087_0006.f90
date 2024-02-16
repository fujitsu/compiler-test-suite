      module mod01       
        type :: type01  
           integer :: x
        end type type01
      end module mod01
     
module z
  interface
    subroutine sub (p)       
         interface
           function   p() 
            use mod01
            type(type01) :: p
          end function
         end interface
    end subroutine
   end interface
end
      
     use z,only:sub  
       print *,'pass'
     end 
