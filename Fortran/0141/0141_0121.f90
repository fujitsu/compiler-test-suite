module m1
  type x
    integer:: x0
  end type
end
module m2
  use m1
  private
  public:: x,sub1
  type,extends(x):: y
    private
    integer:: x1
    integer,public:: x2
  end type
type(y),private:: v1
type(y),public:: v2
contains
subroutine sub1
v1%x0=1
if (v1%x0/=1) print *,101
v1%x1=2
if (v1%x1/=2) print *,103
end subroutine
end
use m2
v2%x2=1
if (v2%x2/=1) print *,102
call sub1
print *,'pass'
end

