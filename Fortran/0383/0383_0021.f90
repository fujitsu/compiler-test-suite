module mod01
  interface
    subroutine m1sub01()
    end subroutine
  end interface
end module

module mod02
  interface
    subroutine m2sub01(dpproc01,dpproc02)
      use mod01
      procedure(m1sub01), pointer :: dpproc01
      procedure(m1sub01), pointer :: dpproc02
    end subroutine
  end interface
end module

subroutine sub01()
  print *,'sub01'
end subroutine

subroutine sub02(dpproc01,dpproc02)
  use mod01
  procedure(m1sub01), pointer :: dpproc01
  procedure(m1sub01), pointer :: dpproc02
  call dpproc01()
  call dpproc02()
end subroutine

use mod01
use mod02
interface
  subroutine sub02(dpproc01,dpproc02)
    use mod01
    procedure(m1sub01), pointer :: dpproc01
    procedure(m1sub01), pointer :: dpproc02
  end subroutine
end interface
procedure(m2sub01),pointer :: pproc01
procedure(m2sub01),pointer :: pproc02
procedure(m1sub01),pointer :: pproc03
procedure(m1sub01),pointer :: pproc04
procedure(m1sub01) :: sub01
pproc01 => sub02
pproc02 => sub02
pproc03 => sub01
pproc04 => sub01
call pproc01(pproc03,pproc04)
call pproc02(pproc03,pproc04)
print *,'pass '
end
