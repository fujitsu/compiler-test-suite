      module mod01
        type :: type01    
           integer :: x
        end type type01
      end module mod01
module n1
         interface
           function p() 
            use    ::mod01
            type(type01) :: p
           end function 
         end interface
end
     
     module k3                  
     contains
       subroutine sub (proc)  
         use n1
         procedure (p) :: proc
       end subroutine
     end
    
     use k3                   
       print *,'pass'
     end 
