module m
  type ty
    integer :: x    =9
    complex :: y=(6.5,8.0)
    contains
    procedure :: w=>wform
     generic :: write(unformatted) => w
  end type
  type,extends(ty):: ty2
    contains
    procedure :: w2=>wform2
  end type
contains
    subroutine wform(dtv, unit, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer(kind=4), intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        write(unit,iostat=iostat,iomsg=iomsg) dtv%x+2,dtv%y
    end subroutine
    subroutine wform2(dtv, unit, iostat, iomsg)
      class(ty2), intent(in) :: dtv
      integer(kind=4), intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        write(unit,iostat=iostat,iomsg=iomsg)dtv%x+3,dtv%y
    end subroutine
end module
module nm
use m
  type,extends(ty2):: ty3
    contains
    procedure :: w=>wform3
  end type
contains
    subroutine wform3(dtv, unit, iostat, iomsg)
      class(ty3), intent(in) :: dtv
      integer(kind=4), intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        write(unit,iostat=iostat,iomsg=iomsg) dtv%x+4,dtv%y
    end subroutine
end module

subroutine sub1()
use nm
implicit none
  class (ty3),pointer :: t1
  class (ty3),pointer :: t2
  class (ty3),pointer :: t3
  allocate(t1)
  write(unit=101)t1
  allocate(ty3::t2)
  write(unit=102)t2
  allocate(ty3::t3)
  write(unit=103)t3
  end

call sub1
call chk801
print *,'sngg688n : pass'
end
subroutine chk801
integer n(1)
complex c
rewind 101
read(101) n,c
if (any(n/=[13]))print *,1901
if (c/=(6.5,8))print *,902
rewind 102
read(102) n,c
if (any(n/=[13]))print *,1902
if (c/=(6.5,8))print *,902
rewind 103
read(103) n,c
if (any(n/=[13]))print *,1903
if (c/=(6.5,8))print *,902
end
