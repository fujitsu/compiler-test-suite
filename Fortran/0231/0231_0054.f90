      module mod01
        type :: type01    
           integer :: x
        end type type01
      end module mod01
      module n02          
        contains           
           subroutine s1(p) 
            use mod01
            type(type01) :: p
          end subroutine s1
      end 
     module k3                  
         use ::n02
     contains
       subroutine sub (proc)  
         procedure (s1) :: proc
       end subroutine sub
     end
module mmx
     use k3 ,only:sub                  
end
module mmu
     use mmx,only:sub                  
end
use mmu
       print *,'pass'
     end 
