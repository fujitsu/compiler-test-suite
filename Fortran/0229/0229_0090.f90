      module mod01        
        type :: type01    
           integer :: x
        end type type01
      end module mod01
     
      module mod02          
        interface           
           subroutine s1(p) 
            use mod01
            type(type01) :: p
          end subroutine s1
        end interface
      end module mod02
    
     module mod03              
         use mod01             
     contains
       subroutine sub (proc)   
         use :: mod02
         procedure (s1) :: proc
       end subroutine sub
     end module mod03
    
     program main
     use mod03
   
    
     print *,'pass'
     end program
