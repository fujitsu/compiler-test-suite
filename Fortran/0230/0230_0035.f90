      module mod01
        type :: type01
           integer :: x
        end type type01
      end module mod01
     
     module k3
     contains
       subroutine u1 (ppp,r)       
         interface
           function   r() 
            use mod01
            type(type01) :: r
          end function
         end interface
       end subroutine
     end
    
     use k3       
       print *,'pass'
     end 
           function   q() 
            use mod01
            type(type01) :: q
             q%x=1
          end function
