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
  type(ty) :: t2(4)
  OPEN(2,file ='fort.60',form="unformatted")
  WRITE(2) [t1(3),t1(2)],[ty(3,4),ty(2,3)]
  close(2)
  OPEN(22,file ='fort.60',form="unformatted")
  READ(22) t2
  close(22,status="delete")
  if(t2(1)%x.ne.5)print*,101
  if(t2(1)%y.ne.6)print*,102
  if(t2(2)%x.ne.4)print*,103
  if(t2(2)%y.ne.5)print*,104
  if(t2(3)%x.ne.5)print*,105
  if(t2(3)%y.ne.6)print*,106
  if(t2(4)%x.ne.4)print*,107
  if(t2(4)%y.ne.5)print*,108
  print*,"pass"
contains
function t1(d)
  TYPE (ty) :: t1
  integer :: d
  t1%x=d
  t1%y=d+1
end function
End program

