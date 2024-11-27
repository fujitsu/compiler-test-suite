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
    integer::k1
   k1=1
    select type(c1)
      type is(b)
        k1=2
    end select
    if (k1/=2) print *,1001
    if (c1%b1/=-1) print *,101
    if (c1%b2/=-2) print *,102
    if (a1/=1 ) print *,110
  end subroutine 
  subroutine p2(c1, a1, a2)
    class(b), intent(inout) :: c1
    integer, intent(in) :: a1
    integer, intent(in) :: a2
    if (c1%b1/=-1) print *,201
    if (c1%b2/=-2) print *,202
    if (a1/=11 ) print *,210
    if (a2/=12) print *,210
  end subroutine 
  subroutine p3(c1, a1, a2 ,a3)
    class(b), intent(inout) :: c1
    integer, intent(in) :: a1
    integer, intent(in) :: a2
    integer, intent(in) :: a3
    if (c1%b1/=-1) print *,201
    if (c1%b2/=-2) print *,202
    if (a1/=21 ) print *,211
    if (a2/=22) print *,212
    if (a3/=23) print *,213
  end subroutine
  subroutine p4(c1, b1)
    class(b), intent(inout) :: c1
    real   , intent(in) :: b1
    if (c1%b1/=-1) print *,301
    if (c1%b2/=-2) print *,302
    if (abs(b1-31)>0.0001 ) print *,311
  end subroutine 
  subroutine p5(c1, b1 ,b2)
    class(b), intent(inout) :: c1
    real   , intent(in) :: b1,b2
    if (c1%b1/=-1) print *,401
    if (c1%b2/=-2) print *,402
    if (abs(b1-41)>0.0001 ) print *,411
    if (abs(b2-42)>0.0001 ) print *,412
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
