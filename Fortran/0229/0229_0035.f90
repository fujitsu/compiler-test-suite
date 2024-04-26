      module mod01
        type :: type01
           integer :: x
        end type type01
      end module mod01
     
    
     module xx
         interface
           function   p() 
            use mod01
            type(type01) :: p
          end function
         end interface
     end
     module k3
     contains
       subroutine sub (p)       
         use ::xx,b=>p
         interface
           function   p() 
            use mod01
            type(type01) :: p
          end function
         end interface
         call su( p() )
       end subroutine sub
     end
subroutine su(v)
use mod01
            type(type01) :: v
if (v%x/=1) print *,1001
end
   
    
     use k3
call g
   
       print *,'pass'
     end 
subroutine g
use k3
use xx
call sub(p)
end
           function   p() 
            use mod01
            type(type01) :: p
            p%x=1
          end function
