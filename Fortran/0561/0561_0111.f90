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
  type rt
    TYPE (ty) :: t1(3)
  end type

  type bt
    type(rt) :: obj(5)
  end type

  type(bt) :: kk1,kk2
  OPEN(2,file ='fort.16',form="unformatted")
  WRITE(2) kk1%obj(2:5)%t1(2)
  WRITE(2) kk1%obj(2)%t1(1:)
  close(2)
  OPEN(22,file ='fort.16',form="unformatted")
  READ(22) kk2%obj(2:5)%t1(2)
  READ(22) kk2%obj(2)%t1(1:)
  close(22,status="delete")
  if(any(kk2%obj(2:5)%t1(2)%x.ne.11))print*,101
  if(any(kk2%obj(2:5)%t1(2)%y.ne.10))print*,102
  if(any(kk2%obj(2)%t1(1:)%x.ne.11))print*,103
  if(any(kk2%obj(2)%t1(1:)%y.ne.10))print*,104
  print*,"pass"
End program
