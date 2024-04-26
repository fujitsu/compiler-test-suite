      module mod01
        type :: type01 
           integer :: x
        end type 
      end module mod01
     
     module k3
     contains
       subroutine sub (p)       
         use mod01
         interface
           function   p() 
            use mod01
            type(type01) :: p
           end function
         end interface
         type(type01)::d1
       end subroutine
     end
    
     use k3
   
       print *,'pass'
     end 
