       subroutine sub()
          integer :: ii = 2,kk=3
          associate(p1=>ii)
             block
               real :: aa(p1)
          associate(qq=>kk,pp=>ii)
             block
               real :: a(pp,qq),ab(size(aa))
                 if (size(a)/=6) print *,20001,size(a)
             end block
          end associate
             end block
          end associate
      end subroutine
call sub
print *,'pass'
end
