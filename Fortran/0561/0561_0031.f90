module m
  type ty
    integer :: x    =9
     real :: y=8
  contains
    procedure :: pp =>wform
     generic :: write(formatted) => pp
  end type
  integer::a=1

  type,extends(ty)::tty
    integer :: x2=10
     real :: y2=9
  contains
    procedure :: pp=>wform2
  end type
contains
    subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
     a=dtv%x
if(size(vlist)/=0) then
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1),vlist(2),dtv%x+1,dtv%y,iotype
      else
        write(unit,*,iostat=iostat,iomsg=iomsg) dtv%x+2,dtv%y,iotype
      end if
    end subroutine

    subroutine wform2(dtv, unit, iotype, vlist, iostat, iomsg)
      class(tty), intent(in) :: dtv
      integer, intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
a=dtv%x+a+1
if(size(vlist)/=0) then
     write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1)+3,vlist(2)+5,dtv%x+3,dtv%y+5,iotype
      else
        write(unit,*,iostat=iostat,iomsg=iomsg) dtv%x+1,dtv%y,iotype
      end if
    end subroutine
end module
program main
  USE m
  TYPE(ty),pointer :: t1
  TYPE(ty),target::t2
  TYPE(tty) :: obj
  t1=>t2
 open(unit=71, file='fort.34',form='FORMATTED')
  write(unit=71,*)obj
 close(unit=71)
if(a .ne. 11)print*,101
print*,'pass'

End program
