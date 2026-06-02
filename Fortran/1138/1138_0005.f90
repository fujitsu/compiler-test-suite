module m
  type ty
    integer :: x    =9
    contains
  end type
  interface  write(unformatted)
     procedure :: pform
  end interface
 interface  write(formatted)
      procedure::yform
  end interface
contains
    subroutine yform(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer(kind=4), intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1),vlist(2),dtv%x+2
    end subroutine
    subroutine pform(dtv, unit, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer(kind=4), intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        write(unit,iostat=iostat,iomsg=iomsg) dtv%x+2
    end subroutine
end module
module mm
use m
implicit none
 private::write(unformatted),write(formatted)
end

use mm

print *,'sngg890n : pass'
end
