module mod
procedure (sub), pointer :: p
contains  
  subroutine test01()
  p => sub
  call p(1)
  end subroutine
  subroutine sub(x)
    integer :: x
    if (x.ne.1) print *,'fail'
  end subroutine
end 

use mod
 call test01()
 print *,'pass'
 end
