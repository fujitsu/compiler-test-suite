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
     use k3 ,only:sub                  
       print *,'pass'
     end 
