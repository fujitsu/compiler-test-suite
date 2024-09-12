      module mod01
        type :: type01
           integer :: x
        end type type01
      end module mod01

     module k3
     contains
       subroutine sub (p)
            use mod01
            type(type01) :: pp
          interface
            function   p()
             use mod01
             type(type01) :: p
           end 
          end interface
         pp  =p()
if (pp%x/=1) print *,90
       end subroutine sub
     end

module mm
     use k3
end
use mm
call tt
       print *,'pass'
     end 
subroutine tt
use k3
          interface
            function   p()
             use mod01
             type(type01) :: p
           end 
          end interface
call sub(p)
end
            function   p()
             use mod01
             type(type01) :: p
p%x=1
          end 
