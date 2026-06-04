          integer :: iii=1,pp1
          associate(p1=>iii)
             block
               real :: aa(p1)
               real :: ab(size(aa))
if (size(ab) .ne.1) print *,'ng',size(ab)
if (size(aa) .ne.1) print *,'ng',size(aa)
             end block
          end associate
print *,'pass'
end
