       subroutine sub(bb,pp1)
          integer :: iii=1,pp1
          integer :: bb(pp1)
          associate(p1=>iii)
             block
               real :: aa(p1)
          associate(qq=>1,pp=>1)
             block
               real ::ab(size(bb))
             end block
          end associate
             end block
          end associate
      end subroutine
integer :: pp1=1
integer :: bb(1)=1
call sub(bb,pp1)
print *,'pass'
end
