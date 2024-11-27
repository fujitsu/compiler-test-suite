module mod1
  integer :: II1
  protected :: II1
  type aaa
    integer :: II2
  end type
  protected :: II2
  
 contains
  subroutine sub(III)
    integer :: III
    II1 =1
    II2 =2
    III = II1+ II2
  end subroutine
end module

use mod1
integer :: III
call sub(III)
if (III .ne. 3) write(6,*) "NG"
print *," pass"
end
