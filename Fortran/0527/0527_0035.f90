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
       subroutine sb
         use ::n02
         use ::mod01
            type(type01) :: p
         procedure (s1) :: proc
          return
       entry      sub (proc)
         call proc(p)
         if (p%x/=1) print *,900
       end subroutine
     end

     use k3
   call tt
       print *,'pass'
     end
subroutine tt
use k3
use n02
call sb
call sub(s1)
end
           subroutine s1(p)
            use mod01
            type(type01) :: p
p%x=1
          end subroutine s1
