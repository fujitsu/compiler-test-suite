      module mod01
        type :: type01 
           integer :: x
        end type 
        type :: type02 
           integer :: x
        end type 
      end module mod01
     
     module k3
     contains
       subroutine sub (p2,p)       
         use mod01
         interface
           function   p() 
            use mod01
            type(type01) :: p
          end function
         end interface
         type(type02)::p2
         p2%x=1
       end subroutine sub
     end
    
     use k3
   




       print *,'pass'
     end 
