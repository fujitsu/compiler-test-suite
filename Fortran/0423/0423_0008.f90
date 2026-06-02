module m
  type ty
    integer :: x    =9
     real :: y=8
  end type
interface write(unformatted)
    subroutine wunform(dtv, unit, iostat, iomsg)
      import ty
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
    end subroutine
end interface
interface read(unformatted)
    subroutine runform(dtv, unit, iostat, iomsg)
      import ty
      class(ty), intent(inout) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
    end subroutine
end interface
end module

module m1
use m,only:write(unformatted),read(unformatted),ty
end module

    subroutine wunform(dtv, unit, iostat, iomsg)
      use m
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
     write(unit,iostat=iostat,iomsg=iomsg) dtv%x+1,dtv%y+2
    end subroutine
    subroutine runform(dtv, unit, iostat, iomsg)
      use m
      class(ty), intent(inout) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
     read(unit,iostat=iostat,iomsg=iomsg) dtv%x,dtv%y
      dtv%x=dtv%x+1
    end subroutine

program main
  USE m1
  type(ty)::t2(2)
  OPEN(2,file ='fort.65',form="unformatted")
  WRITE(2) [ty(2,3),ty(5,6)]
  close(2)
  OPEN(22,file ='fort.65',form="unformatted")
  READ(22) t2
  close(22,status="delete")
  if(t2(1)%x.ne.4)print*,101
  if(t2(1)%y.ne.5)print*,102
  if(t2(2)%x.ne.7)print*,103
  if(t2(2)%y.ne.8)print*,104
  print*,"pass"
End program
