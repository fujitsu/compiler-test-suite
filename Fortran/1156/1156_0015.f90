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
  class (ty),pointer :: t1
  class (ty),pointer :: t2
  class (ty),pointer :: t3
  allocate(t1)
  write(unit=107)t1
  allocate(ty3::t2)
  write(unit=108)t2
  allocate(ty3::t3)
  write(unit=109)t3
  end

call sub1
call chk801
print *,'sngg690n : pass'
end
subroutine chk801
integer n(1)
complex c
rewind 107
read(107) n,c
if (any(n/=[11]))print *,1901
if (c/=(6.5,8))print *,902
rewind 108
read(108) n,c
if (any(n/=[13]))print *,1902
if (c/=(6.5,8))print *,902
rewind 109
read(109) n,c
if (any(n/=[13]))print *,1903
if (c/=(6.5,8))print *,902
end
