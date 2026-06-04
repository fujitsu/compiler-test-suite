       subroutine sub()
          integer :: ii = 2,kk=3
          associate(p1=>ii)
          associate(qq=>kk,pp=>ii)
             block
               real :: a(pp,qq)
                 if (size(a)/=6) print *,20001,size(a)
             end block
          end associate
          end associate
      end subroutine
call sub
print *,'pass'
end
