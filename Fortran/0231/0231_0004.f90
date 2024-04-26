      module d0  
       type :: y0
           integer :: y
        end type
      end
      module mod01  
        use d0
        type,extends(y0) :: type01
           integer :: x
        end type type01
      end module mod01
     module k3      
     contains
       subroutine sub (p)       
         interface
           function   p() 
            use mod01
            type(type01) :: p
          end function
         end interface
       end subroutine sub
     end
     use k3       
       print *,'pass'
     end 
