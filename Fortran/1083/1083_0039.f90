module m
  type ty
    integer, allocatable :: x  !  =9
    real :: y=8
  end type

interface write(formatted)
    subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
      import ty
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
    end subroutine
end interface
end module

module m1
use m
implicit none
private::write(formatted)
public::sub1
  interface
     module subroutine sub1()
     end subroutine
  end interface
end module m1
submodule (m1) m1sub
contains
  module subroutine sub1()
implicit none
type cover
    TYPE (ty) :: t1
  end type

  type(cover) :: obj
  allocate(obj%t1%x)
  obj%t1%x=9
  open(unit=71, file='fort.54',form='FORMATTED')
  write(unit=71,*),obj
close(unit=77,status='delete')

  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg834n : pass'
end

    subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
      use m
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg

      if(size(vlist)/=0) then
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1),vlist(2),dtv%x+2,dtv%y,iotype
      else
        write(unit,*,iostat=iostat,iomsg=iomsg) dtv%x+1
      end if
    end subroutine
