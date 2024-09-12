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
      write(unit,iostat=iostat,iomsg=iomsg) dtv%x+1,dtv%y+2
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
  TYPE (ty) :: t1(7),t2(7)
  integer :: v(4)
  v=[2,5,4,3]

  OPEN(2,file ='fort.53',form="unformatted")
  WRITE(2) t1(v)
  close(2)
  OPEN(22,file ='fort.53',form="unformatted")
  READ(22) t2(v)
  close(22,status="delete")
  if(any(t2(v)%x.ne.11))print*,101
  if(any(t2(v)%y.ne.10))print*,102
  print*,"pass"

End program

