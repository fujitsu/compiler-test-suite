module mod
interface
  subroutine sub2(x)
    integer :: x
  end subroutine
end interface
contains  
  subroutine test01()
  end subroutine
  subroutine sub(x)
    integer :: x
    if (x.ne.1) print *,'fail'
  end subroutine
end 

use mod
procedure (sub2), pointer :: p
procedure (sub), pointer :: pa
  p => sub
  pa => p
  call pa(1)
 call test01()
 print *,'pass'
 end
  subroutine sub2(x)
    integer :: x
    if (x.ne.2) print *,'fail'
  end subroutine
