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
private
     contains
       subroutine sub (proc)  
         use ::n02
         procedure (s1) :: proc
       end subroutine sub
     end
     use k3                   
       print *,'pass'
     end 
