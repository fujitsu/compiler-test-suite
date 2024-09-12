module m
  type ty
    integer :: x    =9
     real :: y=8
  contains
    procedure :: wunform
    procedure :: runform
    generic :: read(unformatted) => runform
    generic :: write(unformatted) => wunform
  end type
contains
    subroutine wunform(dtv, unit, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
     write(unit,iostat=iostat,iomsg=iomsg) dtv%x+3,dtv%y
    end subroutine
    subroutine runform(dtv, unit, iostat, iomsg)
      class(ty), intent(inout) :: dtv 
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
     read(unit,iostat=iostat,iomsg=iomsg) dtv%x,dtv%y
      dtv%x=dtv%x+1
    end subroutine
end module
program main
  USE m
  type(ty) :: t1(2)
  OPEN(2,file ='fort.9',form="unformatted")
  WRITE(2) [ty(2,3),ty(5,6)]
  close(2)
  OPEN(22,file ='fort.9',form="unformatted")
  READ(22) t1
  close(22,status="delete")
  if(t1(1)%x.ne.6)print*,101
  if(t1(1)%y.ne.3)print*,102
  if(t1(2)%x.ne.9)print*,103
  if(t1(2)%y.ne.6)print*,104
  print*,"pass"
 End program