       subroutine sub()
          integer :: ii = 2,kk=3
          associate(pp=>ii)
          associate(qq=>kk)
             block
               real :: a(pp,qq)
                 if (size(a)/=6) print *,20001,size(a)
                 a=3
                 if (any(a/=3)) print *,9001
             end block
          end associate
          end associate
      end subroutine
call sub
print *,'sngg638n : pass'
           end
