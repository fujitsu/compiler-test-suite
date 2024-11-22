module a_mod
  implicit none
  type :: b
    integer :: b1=-1
    integer :: b2=-2
  contains
    procedure :: p1
    procedure :: p2
    procedure :: p3
    procedure :: p4
    procedure :: p5
  end type b
contains
  subroutine p1(c1, a1)
    class(b), intent(inout) :: c1
    integer, intent(in) :: a1
  end subroutine 
  subroutine p2(c1, a1, a2)
    class(b), intent(inout) :: c1
    integer, intent(in) :: a1
    integer, intent(in) :: a2
  end subroutine 
  subroutine p3(c1, a1, a2 ,a3)
    class(b), intent(inout) :: c1
    integer, intent(in) :: a1
    integer, intent(in) :: a2
    integer, intent(in) :: a3
  end subroutine
  subroutine p4(c1, b1)
    class(b), intent(inout) :: c1
    real   , intent(in) :: b1
  end subroutine 
  subroutine p5(c1, b1 ,b2)
    class(b), intent(inout) :: c1
    real   , intent(in) :: b1,b2
  end subroutine 
end module

module b_mod
use a_mod
  implicit none
contains
subroutine b_mod_p(x1)
class (b),intent(inout):: x1
call x1%p1(1)
call x1%p2(11,12)
call x1%p3(21,22,23)
call x1%p4(31.0)
call x1%p5(41.0,42.0)
end subroutine
end

module c001_mod
use a_mod
use b_mod
  implicit none
end
module c002_mod
use a_mod
use b_mod
use c001_mod
  implicit none
end
module c003_mod
use a_mod
use b_mod
use c001_mod
use c002_mod
  implicit none
end
module c004_mod
use a_mod
use b_mod
use c001_mod
use c002_mod
use c003_mod
  implicit none
end
module c005_mod
use a_mod
use b_mod
use c001_mod
use c002_mod
use c003_mod
use c004_mod
  implicit none
end
module c006_mod
use a_mod
use b_mod
use c001_mod
use c002_mod
use c003_mod
use c004_mod
use c005_mod
  implicit none
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
  implicit none
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
  implicit none
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
contains
subroutine z_proc
type(b)::x1a
call b_mod_p(x1a)
call b_mod_p(x1a)
call b_mod_p(x1a)
end subroutine
end

module y_mod
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
use z_mod
contains
subroutine y_proc
type(b)::x1a
call b_mod_p(x1a)
call b_mod_p(x1a)
call b_mod_p(x1a)
end subroutine
end

module x_mod
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
use z_mod
use y_mod
contains
subroutine x_proc
type(b)::x1a
call b_mod_p(x1a)
call b_mod_p(x1a)
call b_mod_p(x1a)
end subroutine
end

use x_mod
print *,'pass'
end