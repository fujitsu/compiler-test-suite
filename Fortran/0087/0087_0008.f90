      module mod01       
        type :: type01  
           integer :: x
        end type type01
      end module mod01
     
      module n02       
        interface     
           subroutine s1(p) 
            use mod01
            type(type01) :: p
          end subroutine s1
        end interface
      end 

   module w
    interface 
       module subroutine sub (proc)     
         use ::n02
         procedure (s1) :: proc 
       end subroutine
       module subroutine s3     
       end
    end interface
   end
    
   submodule (w) smod            
     contains
       module subroutine sub (proc)     
         use ::n02
         use mod01
         procedure (s1) :: proc 
         type(type01):: d
         call proc(d)
         if (d%x/=1) print *,801
       end subroutine sub
    end
   submodule (w: smod) smod3            
     contains
       module subroutine s3
         use ::n02
         procedure (s1) :: pr 
call sub(pr)
       end
       end 
    
     use w                   
call qq
       print *,'pass'
     end 

subroutine qq
use w
!!use mod01
use n02
         procedure (s1) :: pr 
call sub(pr)
end
           subroutine pr(p) 
            use mod01
            type(type01) :: p
           p%x=1
          end 
