      module mod01
        type :: type01    
           integer :: x
        end type type01
      end module mod01
     
     module k3                  
         interface
           subroutine s1(p) 
            use mod01
            type(type01) :: p
           end subroutine 
         end interface
     contains
       subroutine sub (proc)  
         procedure (s1) :: proc
       end subroutine sub
     end
    
     use k3                   
   




       print *,'pass'
     end 
