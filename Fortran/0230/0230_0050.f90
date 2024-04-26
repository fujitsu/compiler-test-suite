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
       subroutine t1 (pp)       
         procedure (s1) :: pp    
       end subroutine
        subroutine chk(y)
            use mod01
            type(type01) :: y
        end subroutine
     end
    
     use k3       
       print *,'pass'
     end 
