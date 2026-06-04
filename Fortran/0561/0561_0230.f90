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
  USE m
  TYPE (ty) :: t1(6,7,8),t2(6,7,8)
  OPEN(2,file ='fort.64',form="unformatted")
  WRITE(2) t1(2:5,3:7,:)
  close(2)
  OPEN(22,file ='fort.64',form="unformatted")
  READ(22) t2(2:5,3:7,:)
  close(22,status="delete")
  if(any(t2(2:5,3:7,:)%x.ne.11))print*,101
  if(any(t2(2:5,3:7,:)%y.ne.10))print*,102
  print*,"pass"
End program

