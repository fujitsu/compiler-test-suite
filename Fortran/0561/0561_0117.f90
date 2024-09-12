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
     write(unit,iostat=iostat,iomsg=iomsg) dtv%x+1
    end subroutine
    subroutine runform(dtv, unit, iostat, iomsg)
      class(ty), intent(inout) :: dtv 
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
     read(unit,iostat=iostat,iomsg=iomsg) dtv%x
      dtv%x=dtv%x+1
    end subroutine
end module

module m2
 use m
end module


module m3
 use m2
end module

program main
  USE m3
  integer :: i,i2
  TYPE (ty) :: t1,t2
  i=2
  OPEN(2,file ='fort.23',form="unformatted")
  WRITE(2) t1,i
  close(2)
  OPEN(22,file ='fort.23',form="unformatted")
  READ(22) t2,i2
  close(22,status="delete")
  if(t2%x.ne.11)print*,101
  if(i2.ne.2)print*,102
  print*,"pass"
End program

