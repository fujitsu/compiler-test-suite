      module mod01        
type trt
           integer :: xy=0
end type
type tz
           integer :: xz=0
type(trt)::etx
end type
        type :: type01
           integer :: x
type(tz)::et
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
         call ss(p())
       end subroutine sub
     end
    
use mod01
     use k3,only:sub 
         interface
           function   f() 
            use mod01
            type(type01) :: f
           end function
         end interface
call sub(f)
       print *,'pass'
     end 
           function   f() 
            use mod01
            type(type01) :: f
            f%x=1
           end function
  subroutine ss(t)
            use mod01
            type(type01) :: t
if (t%x/=1) print *,2002
end
