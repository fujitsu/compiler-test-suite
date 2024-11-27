module a_mod
  type :: b
    integer :: b1
  contains
    procedure :: p1
    procedure :: p2
    procedure :: p3
    procedure :: p4
    procedure :: p5
  end type b
contains
  subroutine p1(c1)
    class(b), intent(inout) :: c1
  end subroutine 
  subroutine p2(c1)
    class(b), intent(inout) :: c1
  end subroutine 
  subroutine p3(c1)
    class(b), intent(inout) :: c1
  end subroutine
  subroutine p4(c1)
    class(b), intent(inout) :: c1
  end subroutine 
  subroutine p5(c1)
    class(b), intent(inout) :: c1
  end subroutine 
end module

module b_mod
use a_mod
contains
subroutine b_mod_p(x1)
class (b),intent(inout):: x1
end subroutine
end

module c001_mod
use a_mod
use b_mod
end
module c002_mod
use a_mod
use b_mod
use c001_mod
end
module c003_mod
use a_mod
use b_mod
use c001_mod
use c002_mod
end
module c004_mod
use a_mod
use b_mod
use c001_mod
use c002_mod
use c003_mod
end
module c005_mod
use a_mod
use b_mod
use c001_mod
use c002_mod
use c003_mod
use c004_mod
end
module c006_mod
use a_mod
use b_mod
use c001_mod
use c002_mod
use c003_mod
use c004_mod
use c005_mod
end
module c007_mod
use a_mod
use b_mod
use c001_mod
use c002_mod
use c003_mod
use c004_mod
use c005_mod
use c006_mod
end
module c008_mod
use a_mod
use b_mod
use c001_mod
use c002_mod
use c003_mod
use c004_mod
use c005_mod
use c006_mod
use c007_mod
end
module z_mod
use a_mod
use b_mod
use c001_mod
use c002_mod
use c003_mod
use c004_mod
use c005_mod
use c006_mod
use c007_mod
use c008_mod
  implicit none
contains
subroutine z_proc
type(b)::x1a
call b_mod_p(x1a)
end subroutine
end

use z_mod
  implicit none
call z_proc
print *,'pass'
end
