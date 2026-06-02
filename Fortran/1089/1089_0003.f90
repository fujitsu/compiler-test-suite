       subroutine sub()
          integer :: ii = 2,kk=3
          associate(pp=>ii)
          associate(qq=>kk)
             block
               real :: a(2 ,qq)
                 if (size(a)/=6) print *,20001
             end block
          end associate
          end associate
      end subroutine
call sub
print *,'sngg143p : pass'
           end
