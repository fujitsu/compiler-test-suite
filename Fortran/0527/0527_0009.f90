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
       function   sb() 
         use ::n02
         use ::mod01
            type(type01) :: p
         procedure (s1),pointer :: proc ,sb
            sb=>s1
          return
       entry     proc()   
proc=>s1
       end 
     end

     use k3
   call tt
       print *,'pass'
     end 
subroutine tt
use k3
use n02
use mod01
         procedure (s1),pointer :: p
            type(type01) :: y
p=> sb()
call p(y)
if (y%x/=1)print *,9001
p=> proc()
call p(y)
if (y%x/=1)print *,9002
end
           subroutine s1(p)
            use mod01
            type(type01) :: p
p%x=1
          end subroutine s1
