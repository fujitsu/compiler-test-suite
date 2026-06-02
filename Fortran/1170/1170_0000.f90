         module mod                       ! 1., 10.
           type ty                        ! 2., 8.
              integer::x
            contains
              procedure:: proc
              generic :: gen => proc      ! 3., 4., 13.
           end type ty
       
          interface
             module subroutine sub(var)  ! 5., 6., 7., 12.
               class(ty)::var            ! 7., 8.
             end subroutine sub
          end interface
        contains
          subroutine proc(var)
            class(ty)::var
if (var%x/=1) print *,1001
          end subroutine proc
        end module mod
      
       submodule (mod) submod           ! 9., 10.
       contains
         module procedure sub           ! 11., 12.
           implicit none
if (var%x/=1) print *,1002
           call  var%gen()              ! 13.
           call  var%proc()              ! 13.
         end procedure sub
       end submodule submod
use mod
class(ty),pointer::var
allocate(var)
var%x=1
call sub(var)
print *,'sngg338o : pass'
end
