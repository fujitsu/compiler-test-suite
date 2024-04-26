module a_mod
  type :: b
    integer :: b1
  contains
    procedure :: p1
    procedure :: p2
    procedure :: p3
    procedure :: p4
    procedure :: p5
    procedure,nopass :: ss
    generic:: g=>p1
    generic:: g=>p2
    generic:: g=>p3
    generic:: g=>p4
    generic:: g=>p5
    generic:: g=>ss
    final:: ss
  end type b
contains
  subroutine p1(c1)
    class(b) :: c1
    c1%b1=1
  end subroutine 
  subroutine p2(c1,i)
    class(b) :: c1
    c1%b1=1
    if (i/=1) print *,101
  end subroutine 
  subroutine p3(c1,i,j)
    class(b) :: c1
    c1%b1=1
    if (i/=1) print *,101
    if (j/=1) print *,101
  end subroutine
  subroutine p4(c1,i,j,k)
    class(b):: c1
    c1%b1=1
    if (i/=1) print *,101
    if (j/=1) print *,101
    if (k/=1) print *,101
  end subroutine 
  subroutine p5(c1,i,j,k,l)
    class(b):: c1
    c1%b1=1
    if (i/=1) print *,101
    if (j/=1) print *,101
    if (k/=1) print *,101
    if (l/=1) print *,101
  end subroutine 
  subroutine ss(c1)
  type(b)::c1
  c1%b1=0
  end subroutine 
end module

module b_mod
use a_mod
  implicit none
contains
subroutine b_mod_p(x1)
class (b):: x1
call x1%p1()
call x1%p2(1)
call x1%p3(1,1)
call x1%p4(1,1,1)
call x1%p5(1,1,1,1)
call x1%ss(x1)
call ss(x1)
call x1%g()
call x1%g(1)
call x1%g(1,1)
call x1%g(1,1,1)
call x1%g(1,1,1,1)
call x1%ss(x1)
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
x1a%b1=-1
call b_mod_p(x1a)
end subroutine
end

use z_mod
  implicit none
call z_proc
print *,'pass'
end
