       subroutine sub()
          integer :: ii = 2,kk=3
          associate(pp=>ii)
          associate(qq=>kk)
             block
                 k=pp+qq
                 if (k/=5) print *,901
             end block
          end associate
          end associate
      end subroutine
call sub
print *,'sngg142p : pass'
           end
