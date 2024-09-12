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

     module k3               
     contains
       function   proc()       
         use ::n02
         procedure (s1),pointer :: proc 
         proc=>s1
       end function
     end

     use k3     
call tt

       print *,'pass'
     end 
           subroutine s1(p) 
            use mod01
            type(type01) :: p
            p%x=1
          end subroutine s1
subroutine tt
use mod01
use k3
use n02
         procedure (s1),pointer :: p 
            type(type01) :: d
p=>proc()
call p(d)
if (d%x/=1) print *,2002
end
