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
end interface write(unformatted)
interface read(unformatted)
    subroutine runform(dtv, unit, iostat, iomsg)
      import ty
      class(ty), intent(inout) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
    end subroutine
end interface read(unformatted)
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
  type rt
    TYPE (ty) :: t1
  end type

  type(rt) :: obj1,obj2
  OPEN(2,file ='fort.65',form="unformatted")
  WRITE(2) obj1
  close(2)
  OPEN(22,file ='fort.65',form="unformatted")
  READ(22) obj2
  close(22,status="delete")
  if(obj2%t1%x.ne.11)print*,101
  if(obj2%t1%y.ne.10)print*,102
  print*,"pass"
End program
