module nnn
  type ty
    integer :: x    =9
    complex :: y=(6.5,8.0)
    contains
    procedure :: w=>wform
     generic :: write(formatted) => w
  end type
  type,extends(ty):: ty2
    contains
    procedure :: w2=>wform2
  end type
contains
    subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer(kind=4), intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1),vlist(2),dtv%x+2,dtv%y,'"',iotype,'"'
    end subroutine
    subroutine wform2(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty2), intent(in) :: dtv
      integer(kind=4), intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1)+1,vlist(2)+2,dtv%x+3,dtv%y,'"',iotype,'"'
    end subroutine
end module
module m
use nnn
  type,extends(ty2):: ty3
    contains
    procedure :: w=>wform3
  end type
contains
    subroutine wform3(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty3), intent(in) :: dtv
      integer(kind=4), intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1)+2,vlist(2)+3,dtv%x+4,dtv%y,'"',iotype,'"'
    end subroutine
end module

subroutine sub1()
use m
implicit none
  class (ty),pointer :: t1
  class (ty),pointer :: t2
  class (ty),pointer :: t3
  allocate(t1)
  write(unit=35,'(DT(2,3))'),t1
  allocate(ty2::t2)
  write(unit=36,'(DT(2,3))'),t2
  allocate(ty3::t3)
  write(unit=37,'(DT(2,3))'),t3
  end

call sub1
call chk801
print *,'sngg661n : pass'
end
subroutine chk801
integer n(3)
complex c
character*2 d
rewind 35
read(35,*) n,c,d
if (any(n/=[2,3,11]))print *,1901
if (c/=(6.5,8))print *,902
if (d/='DT')print *,903
rewind 36
read(36,*) n,c,d
if (any(n/=[2,3,11]))print *,901
if (c/=(6.5,8))print *,1902
if (d/='DT')print *,1903
rewind 37
read(37,*) n,c,d
if (any(n/=[2+2,3+3,11+2]))print *,9015
if (c/=(6.5,8))print *,19025
if (d/='DT')print *,19036
end
