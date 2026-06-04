 module mod 
           integer :: a
           integer :: b
         end

        module mod1  
           use mod, only : bb=>b
           private
           public :: sub
        contains
          subroutine sub()     
            bb=1
          end subroutine
        end

        use mod, only : a  
        use mod1, only : sub  
        a=2
call sub
        call chk
print *,'pass'
        end

subroutine chk
use mod
if (a/=2) print *,101
if (b/=1) print *,103
end
