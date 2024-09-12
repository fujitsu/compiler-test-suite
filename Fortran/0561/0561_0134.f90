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
    TYPE (ty) :: t1(15)
  end type

  type(rt) :: obj1(5),obj2(5)
  OPEN(2,file ='fort.42',form="unformatted")
  WRITE(2) obj1(:)
  close(2)
  OPEN(22,file ='fort.42',form="unformatted")
  READ(22) obj2(:)
  close(22,status="delete")
  if(any(obj2(1)%t1%x.ne.11))print*,101
  if(any(obj2(1)%t1%y.ne.10))print*,102
  if(any(obj2(2)%t1%x.ne.11))print*,103
  if(any(obj2(2)%t1%y.ne.10))print*,104
  if(any(obj2(3)%t1%x.ne.11))print*,105
  if(any(obj2(3)%t1%y.ne.10))print*,106
  if(any(obj2(4)%t1%x.ne.11))print*,107
  if(any(obj2(4)%t1%y.ne.10))print*,108
  if(any(obj2(5)%t1%x.ne.11))print*,109
  if(any(obj2(5)%t1%y.ne.10))print*,110
  print*,"pass"
End program

