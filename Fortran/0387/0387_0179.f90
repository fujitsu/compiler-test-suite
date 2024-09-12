module mod
interface
  subroutine sub(x)
    integer :: x
  end subroutine
end interface
procedure (sub), pointer :: p
end
use mod
  p => sub
  call p(1)
 print *,'pass'
 end

  subroutine sub(x)
    integer :: x
  end subroutine
