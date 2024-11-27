module mod1
  integer,protected,dimension(3) :: II1
 contains
  subroutine sub(III)
    integer,dimension(-1:*) :: III
    III(-1) = 0
    III(0) = 1
    III(1) = 2
  end subroutine
end module

use mod1
call sub(II1)
if (II1(3) .ne. 2) write(6,*) "NG"
print *," pass"
end
