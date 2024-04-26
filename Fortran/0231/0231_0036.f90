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
private
public::proc
     contains
       function   pr()       
         use ::n02
       entry      proc()       
         procedure (s1),pointer :: proc ,pr
         proc=>s1
       end function
     end
     use k3     
 call xx
       print *,'pass'
     end 
subroutine xx
     use k3     
use n02
use mod01
         procedure (s1),pointer :: y
            type(type01) :: w=type01(1)
y=>proc()
call y(w)
end
           subroutine s1(p) 
            use mod01
            type(type01) :: p
if (p%x/=1) print *,2002
          end subroutine s1
