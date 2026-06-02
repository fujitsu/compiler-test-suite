module m
  type ty
    integer :: x    =9
    complex :: y=(6.5,8.0)
    contains
    procedure :: w=>wform
  end type
  type,extends(ty):: ty2
    contains
     generic :: write(unformatted) => w2
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
  write(unit=98)t1
  allocate(ty3::t2)
  write(unit=99)t2
  allocate(ty3::t3)
  write(unit=100)t3
  end

call sub1
call chk801
print *,'sngg687n : pass'
end
subroutine chk801
integer n(1)
complex c
rewind 98
read(98) n,c
if (any(n/=[12]))print *,1901
if (c/=(6.5,8))print *,902
rewind 99
read(99) n,c
if (any(n/=[12]))print *,1902
if (c/=(6.5,8))print *,902
rewind 100
read(100) n,c
if (any(n/=[12]))print *,1903
if (c/=(6.5,8))print *,902
end
