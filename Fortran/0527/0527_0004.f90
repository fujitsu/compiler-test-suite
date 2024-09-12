      module mod01
        type :: type01
           integer :: x
        end type type01
      end module mod01

      module n02
        interface
           subroutine s1(p)
            use mod01
            type(type01) :: p
          end subroutine s1
        end interface
      end 

     module k3
     contains
       subroutine sub (proc)
            use mod01
            type(type01) :: p
          interface
            subroutine proc(p)
             use mod01
             type(type01) :: p
           end subroutine
          end interface
         call proc(p)
if (p%x/=1) print *,90
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
use n02
use k3
         procedure (s1) :: proc
call sub(proc)
end
           subroutine proc(p)
            use mod01
            type(type01) :: p
p%x=1
          end subroutine
