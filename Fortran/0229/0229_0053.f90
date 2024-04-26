      module mod01        
        type :: type01 
           integer :: x
        end type 
      end module
      module nod        
        type :: type01 
           integer :: y(100)
        end type 
      end module
     
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
         type(type01)::d1
          call xx(p())
         d1%y=2
       end subroutine
     end
    
     use k3
  call t
       print *,'pass'
     end 
subroutine xx(u)
use mod01
         type(type01)::u
if (u%x/=1) print *,8001
end

subroutine t
use k3
use nod
         type(type01)::d1
         interface
           function   q() 
            use mod01
            type(type01) :: q
           end function
         end interface

call sub(d1,q)
if (any(d1%y/=2)) print *,1010
end
           function   q() 
            use mod01
            type(type01) :: q
        q%x=1
           end function
