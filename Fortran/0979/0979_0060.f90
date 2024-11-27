module mod1
  integer,protected,dimension(2,3) :: II1
 contains
  subroutine sub(III)
    integer,dimension(-1:,:) :: III
    III = 3
  end subroutine
end module

use mod1
call sub(II1)
if (II1(2,3) .ne. 3) write(6,*) "NG"
print *," pass"
end
