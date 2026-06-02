       subroutine sub()
          integer :: ii = 2,kk=3
          associate(pp=>ii,qq=>kk)
             block
               real :: b(pp,qq)
                 if (size(b)/=6) print *,20002
                 b=3
                 if (any(b/=3)) print *,9001
             block
               real :: a(pp,qq)
                 if (size(a)/=6) print *,20001
                 if (size(b)/=6) print *,20001
                 a=4
                 if (any(a/=4)) print *,9002
                 if (any(b/=3)) print *,9003
             end block
             end block
          end associate
      end subroutine
call sub
print *,'sngg642n : pass'
           end
