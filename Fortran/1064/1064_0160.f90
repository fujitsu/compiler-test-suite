1 module mod
       integer :: a
       integer :: b
  end
 module mod1
7   use mod, only : bb=>b
           private
           public :: sub
        contains
          subroutine sub()
            real(8) :: a(1:bb,10)
          end subroutine
        end

        use mod, only : a
        use mod1, only : sub
        a=1
        if (a/=1) print *,101
print *,'pass'
        end
