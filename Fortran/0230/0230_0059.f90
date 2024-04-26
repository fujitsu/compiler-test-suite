      module mod01
        type :: type01
           integer :: x
        end type type01
      end module mod01
     
     module k3                  
     contains
       subroutine sub (proc)
         use mod01
         interface
           subroutine s1(p) 
            import ::type01
            type(type01) :: p
           end subroutine 
         end interface
         procedure (s1) :: proc
       end subroutine 
     end
    
     use k3                   
       print *,'pass'
     end 
