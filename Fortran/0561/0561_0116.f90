module m
  type ty
    integer :: x    =9
     real :: y=8
  contains
    procedure :: wunform,unfmtread
     generic :: write(unformatted) => wunform
     generic::read(unformatted)=>unfmtread
  end type
contains
    subroutine wunform(dtv, unit, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
     write(unit,iostat=iostat,iomsg=iomsg) dtv%x+1,dtv%y+2
     end subroutine
subroutine unfmtread(dtv, unit, iostat, iomsg)
         class (ty), intent(inout)  :: dtv
         integer,                  intent(in)     :: unit
         integer,                  intent(out)    :: iostat
         character (len=*),        intent(inout)  :: iomsg
        read (unit=unit, iostat=iostat, iomsg=iomsg) dtv%x,dtv%y
      dtv%x=dtv%x+1
     end subroutine unfmtread
end module
program main
  USE m
  type rt
   TYPE (ty) :: t1(8)
  end type

  type(rt) :: obj,obj2
  open(2,file ='fort.21',form="unformatted")
  WRITE(2) (obj%t1(i),i=1,8)
  close(2)

  open(3,file='fort.21',form="unformatted")
  read(3) (obj2%t1(i),i=1,8)
  close(3,status="delete")
  if(any(obj2%t1%x.ne.11))print*,101
  if(any(obj2%t1%y.ne.10))print*,102
  print*,"pass"
End program

