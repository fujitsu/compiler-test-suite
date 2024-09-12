module m
  type ty
    integer :: x    =9
     real :: y=8
  contains
    procedure :: pp=>wform
     generic :: write(formatted) => pp
  end type
   integer,save::a=1
  type,extends(ty)::tty
    integer :: x2
     real :: y2
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
  a=a+dtv%x
 if(size(vlist)/=0) then
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1),vlist(2),dtv%x+2,dtv%y,iotype
      else
        write(unit,*,iostat=iostat,iomsg=iomsg) dtv%x+1,dtv%y,iotype
      end if
    end subroutine

    subroutine wform2(dtv, unit, iotype, vlist, iostat, iomsg)
      class(tty), intent(in) :: dtv
      integer, intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg

  a=a+dtv%x+1
 if(size(vlist)/=0) then
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1)+2,vlist(2)+3,dtv%x+2,dtv%y,iotype
      else
        write(unit,*,iostat=iostat,iomsg=iomsg) dtv%x+1,dtv%y,iotype
      end if
    end subroutine
end module
program main
  USE m
  CLASS(ty),pointer :: t1
  type(tty),pointer :: obj
  allocate(t1)
  allocate(tty::obj)
 open(unit=71, file='fort.44',form='FORMATTED')
  write(unit=71,*)t1,obj
 close(unit=71,status='delete')

 if(a .ne. 20)print*,101
print*,'pass'
End program
