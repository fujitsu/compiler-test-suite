module mod
contains  
  subroutine sub(x)
    integer :: x
    if (x.ne.1) print *,'fail'
  end subroutine
end 

use mod
procedure (sub), pointer :: p
  p => sub
  call p(1)
 print *,'pass'
 end
