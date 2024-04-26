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
          d1%z=kk(p)
       end function  
     end
    
     use k3
         interface
           function   gg() 
            use mod01
            type(type01) :: gg
           end function
         end interface
     call sub (f(gg))
   
       print *,'pass'
     end 
subroutine sub(d1)
use nod
         type(type01)::d1
          if (d1%z/=1) print *,9001
end
           function   gg() 
            use mod01
            type(type01) :: gg
           gg%x=1
           end function
function kk(p)
         interface
           function   p() 
            use mod01
            type(type01) :: p
           end function
         end interface
kk=1
end
