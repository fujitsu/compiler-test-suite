       subroutine sub()
          integer :: ii = 2,kk=3
          associate(pp=>ii,qq=>kk)
             block
               real :: a(pp,qq)
                 if (size(a)/=6) print *,20001
                 a=3
                 if (any(a/=3)) print *,9001
             end block
          end associate
      end subroutine
call sub
print *,'sngg640n : pass'
           end
