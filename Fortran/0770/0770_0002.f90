module mod
  type x
    real :: x1
  end type
  type y
    integer :: x1
  end type
  type z
    character :: x1
  end type
    interface write
        module procedure sub1,sub3
    end interface write
    interface write(formatted)
        module procedure sub1,sub3
    end interface write(formatted)
contains
subroutine sub
    interface write(formatted)
        module procedure sub4
    end interface write(formatted)
end subroutine

subroutine sub1(dtv,unit,iotype,vlist,iostat, iomsg)
            class(x), intent(in) :: dtv
            integer,intent(in) :: unit
           entry sub2(iotype,vlist,iostat, iomsg)
           character (len=*), intent(in) :: iotype
             integer, intent(in) :: vlist(:)
            integer, intent(out) :: iostat
            character (len=*), intent(inout) :: iomsg
end subroutine
subroutine sub3(dtv,unit,iotype,vlist,iostat, iomsg)
            class(y), intent(in) :: dtv
            integer,intent(in) :: unit
           character (len=*), intent(in) :: iotype
             integer, intent(in) :: vlist(:)
            integer, intent(out) :: iostat
            character (len=*), intent(inout) :: iomsg
end subroutine
subroutine sub4(dtv,unit,iotype,vlist,iostat, iomsg)
            class(y), intent(in) :: dtv
            integer,intent(in) :: unit
           character (len=*), intent(in) :: iotype
             integer, intent(in) :: vlist(:)
            integer, intent(out) :: iostat
            character (len=*), intent(inout) :: iomsg
end subroutine
end module 
use mod
            type(y) :: dtv=y(1)
            integer :: unit=1
           character (len=3) :: iotype='DTx'
             integer:: vlist(2)=[2,3]
            integer:: iostat
            character (len=100) :: iomsg=''
call write(dtv,unit,iotype,vlist,iostat, iomsg)
print *,'pass'
end
