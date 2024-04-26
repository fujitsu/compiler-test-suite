      module mod01
        type :: type01    
           integer :: x
        end type type01
      end module mod01
     
     module k3                  
        use mod01             
     contains
       subroutine sub (proc)  
         interface
           subroutine s1(p) 
            import ::type01
            type(type01) :: p
           end subroutine 
         end interface
         procedure (s1) :: proc
       end subroutine sub
     end
    
     use k3                   
   




       print *,'pass'
     end 
