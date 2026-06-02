module m
  type ty
    integer, allocatable :: x  !  =9
    real :: y=8
    integer :: r
  end type

interface read (unformatted)
    subroutine rform(dtv, unit, iostat, iomsg)
      import ty
      class(ty), intent(inout) :: dtv
      integer(kind=4), intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
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
private::read (unformatted)
contains
  subroutine sub1()
implicit none
type cover
    TYPE (ty) :: t1
  end type

  type(cover) :: obj
  allocate(obj%t1%x)
  obj%t1%x=9
  open(unit=71, file='fort.84',form='FORMATTED')
  write(unit=71,*),obj
close(unit=77,status='delete')
  end subroutine sub1
end 

use m1
 class (ty),pointer :: t1
 allocate(t1)
 allocate(t1%x,source=9)
  write(unit=701,'(DT(2,3))'),t1
call sub1

print *,'sngg831n : pass'
end

    subroutine rform(dtv, unit, iostat, iomsg)
      use m
      class(ty), intent(inout) :: dtv
      integer(kind=4), intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        read(unit,iostat=iostat,iomsg=iomsg) k1,k2,dtv%r,dtv%y
     k3=dtv%r
     z=dtv%y
    end subroutine
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


