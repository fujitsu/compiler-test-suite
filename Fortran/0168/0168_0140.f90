 1 module mod 
           integer :: a
           integer :: b
         end

        module mod1             
           use mod, only : bb=>b 
           private
           public :: sub
        contains
          subroutine sub()     
           real(8) :: a(bb) 
          end subroutine
        end

        use mod, only : a   
        use mod1, only : sub 
print *,'pass'
        end
