module m
  type ty
    integer :: x
     real :: y
  contains
    procedure :: wunform
    procedure :: runform
     generic :: write(unformatted) => wunform
     generic :: read(unformatted) => runform
  end type
contains
    subroutine wunform(dtv, unit, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
     write(unit,iostat=iostat,iomsg=iomsg) dtv%x+1,dtv%y+1
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
  TYPE (ty) :: t1(8),t2(8)
  t1%x=4
  t1%y=5
  OPEN(2,file ='fort.3',form="unformatted")
  WRITE(2) t1(::2)
  close(2)
  OPEN(22,file ='fort.3',form="unformatted")
  READ(22) t2(::2)
  close(22,status="delete")

  if(any(t2(::2)%x.ne.6)) print*,101
  if(any(t2(::2)%y.ne.6)) print*,102
  print*,"pass"

End program
