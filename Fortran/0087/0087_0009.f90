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
        call tr(p())
       end subroutine sub
     end
    
     use z
call sb
       print *,'pass'
     end 
subroutine sb
use z
         interface
           function   p() 
            use mod01
            type(type01) :: p
          end function
         end interface
call sub(p)
end
subroutine tr(d)
use mod01
            type(type01) :: d
if (d%x/=1) print *,501
end
           function   p() 
            use mod01
            type(type01) :: p
             p%x=1
          end function
