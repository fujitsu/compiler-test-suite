module m
  type ty
    integer :: x    =9
    complex :: y=(6.5,8.0)
    contains
  end type
 public::read(formatted),read(unformatted)
  interface  read(unformatted)
     procedure :: sform
  end interface
  interface read(formatted)
    procedure::rform
  end interface
contains
    subroutine sform(dtv, unit, iostat, iomsg)
      class(ty), intent(inout) :: dtv
      integer(kind=4), intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        read(unit,iostat=iostat,iomsg=iomsg) k1,k2,dtv%x,dtv%y
    end subroutine
    subroutine rform(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty), intent(inout) :: dtv
      integer(kind=4), intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        read(unit,*,iostat=iostat,iomsg=iomsg) k1,k2,dtv%x,dtv%y
    end subroutine
end module
module mm
use m
implicit none
public::sub1
  interface
     module subroutine sub1()
     end subroutine
  end interface
end
submodule (mm) m1sub
contains
  module subroutine sub1()
implicit none

  class (ty),pointer :: t1
if (1==1) return
  allocate(t1)
  read(801,'(DT(2,3))')t1
  allocate(t1)
  read(601)t1
end subroutine
end

use mm
call sub1

print *,'sngg905n : pass'
end
