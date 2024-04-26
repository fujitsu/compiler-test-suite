      module mod01    
        type :: type01 
           integer :: x
        end type 
      end 
      module nod    
        type :: type01
           integer :: z
        end type 
      end 
     
     module k3
     contains
       function  f (p) result(d1)      
         use nod
         interface
           function   p() 
            use mod01
            type(type01) :: p
           end function
         end interface
         type(type01)::d1
          d1%z=1
       end function  
     end
    
     use k3   
   
       print *,'pass'
     end 
