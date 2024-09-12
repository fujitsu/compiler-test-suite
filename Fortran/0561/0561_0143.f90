module m
  type ty
    integer, allocatable :: x
    complex :: y=(2.3,8.1)
    integer :: z  =2
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
     write(unit,iostat=iostat,iomsg=iomsg) dtv%x+1,int(aimag(dtv%y))+2
    end subroutine
    subroutine runform(dtv, unit, iostat, iomsg)
       class (ty), intent(inout)  :: dtv
       integer,                  intent(in)     :: unit
       integer,                  intent(out)    :: iostat
       character (len=*),        intent(inout)  :: iomsg
     read (unit=unit, iostat=iostat, iomsg=iomsg) dtv%x,dtv%z
       dtv%x=dtv%x+1
    end subroutine runform
end module

program main
  USE m
  TYPE (ty) :: t1,t2
  allocate(t1%x,t2%x)
  t1%x=9
  t2%x=9
  OPEN(2,file='fort.68',form="unformatted")
  WRITE(2) t1

  close(2)

  OPEN(55,file ='fort.68',form="unformatted")
  read(55)t2 
  close(55,status="delete")

if( t2%x.ne.11  ) print*,101
if( t2%z.ne.10  ) print*,102
print*,"pass"
End program
