      module mod01    
        type :: type01 
           integer :: x
        end type 
      end 
      module nod    
        type :: ty
           integer :: z
        end type 
      end 
     
     module k3
     contains
       subroutine sub (d1,p)       
         use nod
         interface
           function   p() 
            use mod01
            type(type01) :: p
           end function
         end interface
         type(ty)::d1
       end subroutine
     end
    
     use k3
   
       print *,'pass'
     end 
