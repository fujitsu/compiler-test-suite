      module mod01
type trt
           integer :: xy
end type
type t
           integer :: xz
type(trt)::etx
end type
        type :: type01
           integer :: x
type(t)::et
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
    
use mod01
     use k3 ,only:sub
       print *,'pass'
     end 
