      module mod01
        type :: type01    
           integer :: x
        end type type01
      end module mod01
      module n02          
            use mod01
        contains           
           subroutine s1(p) 
            type(type01) :: p
          end subroutine s1
      end 
     module k3                  
     contains
       subroutine sub (proc)  
         use ::n02
         procedure (s1) :: proc
       end subroutine sub
     end
     use k3,only:sub                   
       print *,'pass'
     end 
