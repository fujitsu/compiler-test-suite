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
       subroutine       r(proc)       
         use ::n02
         procedure (s1),pointer :: proc 
         proc=>s1
       end subroutine
     end
     use k3,only:     
 call xx
       print *,'pass'
     end 
subroutine xx
     use k3,only:r
use n02,only:s1
use mod01,only:type01
         procedure (s1),pointer :: y
            type(type01) :: w=type01(1)
call r(y)
call y(w)
end
           subroutine s1(p) 
            use mod01
            type(type01) :: p
if (p%x/=1) print *,2002
          end subroutine s1
