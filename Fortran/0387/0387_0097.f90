module mod01
 interface
  subroutine m1sub01()
  end subroutine
 end interface
end module

module mod02
 interface
  subroutine m2sub01(dpproc01)
   use mod01
   procedure(m1sub01), pointer :: dpproc01
  end subroutine
 end interface
end module

use mod02

interface
 subroutine sub01(dpproc01)
  use mod01
  procedure(m1sub01), pointer :: dpproc01
 end subroutine
end interface

procedure(m2sub01),pointer :: pproc01
pproc01 => sub01

print *,'pass'

end

subroutine sub01(dpproc01)
 use mod01
 procedure(m1sub01), pointer :: dpproc01
end subroutine
