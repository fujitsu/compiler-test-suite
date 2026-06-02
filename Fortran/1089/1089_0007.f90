       subroutine sub()
          integer :: ii = 2,kk=3
          associate(pp=>ii,p1=>1,p2=>2)
          associate(q1=>1,qq=>kk,p3=>3)
          associate(w2=>ii)
          associate(r2=>w2)
          associate(q2=>2,q3=>kk ,p4=>4)
             block
               real :: a(pp,qq,w2,r2)
                 if (size(a)/=6*2*2) print *,20001
          associate(z2=>2,z3=>kk ,z4=>4)
          associate(s2=>w2)
block
          associate(u2=>2,u3=>kk ,u4=>4)
             block
               real :: b(s2,pp,qq,w2,r2)
                 if (size(b)/=6*2*2*2) print *,20002
             end block
          end associate
             end block
          end associate
          end associate
             end block
          end associate
          end associate
          end associate
          end associate
          end associate
      end subroutine
call sub
print *,'sngg147p : pass'
           end
