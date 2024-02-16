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
         interface
           function   p() 
            use mod01
            type(type01) :: p
          end function
         end interface
call sub(p)
       print *,'pass'
     end 
    subroutine sub (p)       
         interface
           function   p() 
            use mod01
            type(type01) :: p
          end function
         end interface
 call chk(p())
    end subroutine
           function   p() 
            use mod01
            type(type01) :: p
           p%x=1
          end function
subroutine chk(v)
use mod01
            type(type01) :: v
         if (v%x/=1) print *,801
end
