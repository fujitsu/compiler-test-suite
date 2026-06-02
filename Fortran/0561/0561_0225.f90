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
  TYPE (ty) :: t1,t2,t3

  OPEN(2,file ='fort.59',form="unformatted")
  WRITE(2) [t1,t1]
  close(2)
  OPEN(22,file ='fort.59',form="unformatted")
  READ(22) t2,t3
  close(22,status="delete")
  if(t2%x.ne.11)print*,101
  if(t2%y.ne.10)print*,102
  if(t3%x.ne.11)print*,103
  if(t3%y.ne.10)print*,104
  print*,"pass"
End program

