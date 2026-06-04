character(len = 2) :: a
call sub(a)
contains
subroutine sub(b)
character(len = 2) :: b(..)
character :: c
c = new_line(b)
if(c == ' ')print*,101
print*,'PASS'
end subroutine sub
end

