       subroutine sub()
          integer :: ii = 2
          associate(pp=>ii)
             block
               real :: a(pp)
                 if (size(a)/=2) print *,20001
                 a=3
                 if (any(a/=3)) print *,9001
             end block
          end associate
      end subroutine
call sub
print *,'sngg636n : pass'
           end
