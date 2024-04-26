      module mod01
        type :: type01
           integer :: x
        end type type01
      end module mod01
     
     module k3
     contains
       subroutine s1 (p)       
         interface
           function   p() 
            use mod01
            type(type01) :: p
          end function
         end interface
       end subroutine
        subroutine chk(y)
            use mod01
            type(type01) :: y
            if (y%x/=1) print *,90001
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
