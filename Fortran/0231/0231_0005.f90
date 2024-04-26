      module mod01        
        type :: y0   
           integer :: y
        end type
        type :: type01   
           integer :: x
           type(y0)::z
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
       subroutine sub (proc)   
         use ::n02
         procedure (s1) :: proc 
       end subroutine sub
     end
     use k3                    
       print *,'pass'
     end 
