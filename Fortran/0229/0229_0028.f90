      module mod01
        type :: type01
           integer :: x
        end type type01
      end module mod01
     
     module k3
     contains
       subroutine sub (p)       
         interface
           function   p() result(r)
            use mod01
            type(type01) :: r
          end function
         end interface
       end subroutine
     end
    
     use k3
       print *,'pass'
     end 
