module m
  type ty
    integer, allocatable :: x
    real :: y=8
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
  type bt
   TYPE (ty) :: t1
  end type

  type(bt) :: obj1,obj2(2)
  allocate(obj1%t1%x,obj2(1)%t1%x,obj2(2)%t1%x)
  obj1%t1%x=9
  obj2(1)%t1%x=9
  obj2(2)%t1%x=9
  OPEN(2,file ='fort.70',form="unformatted")
  WRITE(2) [obj1%t1,obj1%t1]
  close(2)
  OPEN(22,file ='fort.70',form="unformatted")
  READ(22) obj2%t1
  close(22,status="delete")
  if(obj2(1)%t1%x.ne.11)print*,101
  if(obj2(2)%t1%x.ne.11)print*,102
  if(any(obj2%t1%y.ne.10))print*,103
  print*,"pass"
End program
