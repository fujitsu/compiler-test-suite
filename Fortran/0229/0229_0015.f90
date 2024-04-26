      module mod01
        type :: type01    
           integer :: x
        end type type01
      end module mod01
     
    
     module k3                  
     contains
       subroutine sub (proc)  
         interface
           subroutine s1(p) 
            use mod01
            type(type01) :: p
           end subroutine 
         end interface
         procedure (s1) :: proc
       end subroutine sub
     end
    
     use k3                   
   




       print *,'pass'
     end 
