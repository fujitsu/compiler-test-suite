module m
  type ty
    integer, allocatable :: x  !  =9
    real :: y=8
    integer :: r
  end type
interface
  subroutine xx
  end subroutine
end interface

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
contains
  subroutine sub1()
implicit none
type cover
    TYPE (ty) :: t1
  end type

  type(cover) :: obj
  allocate(obj%t1%x)
  obj%t1%x=9
  open(unit=71, file='fort.1',form='FORMATTED')
  write(unit=71,*),obj
close(unit=77,status='delete')
  end subroutine sub1
end

use m1
 class (ty),pointer :: t1
 allocate(t1)
 allocate(t1%x,source=1)
  write(unit=2,'(DT(2,3))'),t1
call sub1
  call xx

print *,'sngg832n : pass'
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


  subroutine xx
  end subroutine
