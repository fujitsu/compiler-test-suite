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
       entry      sub (proc)   
         procedure (s1) :: proc 
       end subroutine
     end
     use k3,only:sub
call xx
       print *,'pass'
     end 
subroutine xx
     use k3
use n02
            use mod01
         procedure (s1),pointer :: y
            type(type01) :: w=type01(1)
call proc(w)
end
           subroutine proc(p)
            use mod01
            type(type01) :: p
if (p%x/=1) print *,2002
          end subroutine 
