      module mod01
        type :: type01    
           integer :: x
        end type type01
        type :: type02    
           integer :: x
        end type
      end module mod01
      module n02          
            use mod01
        contains           
           subroutine s1(p) 
            type(type01) :: p
          end subroutine s1
           subroutine s2(p) 
            type(type02) :: p
          end subroutine
      end 
     module k3                  
     contains
       subroutine sub (proc)  
         use ::n02
         procedure (s1) :: proc
       end subroutine sub
       subroutine subbb (proc)  
         use ::n02
         procedure (s2) :: proc
       end subroutine 
     end
   module w
     use k3 ,only:subbb                  
     use k3 ,only:sub                  
end
module ww
use w,only:sub,subbb
end
module www
use ww,only:sub,subbb
end
use www
       print *,'pass'
     end 
