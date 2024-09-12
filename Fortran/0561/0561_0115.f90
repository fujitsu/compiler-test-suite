module m
  type ty
    integer :: x    =9
     real :: y=8
  contains
    procedure :: wunform
    procedure::unfmtread
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
  use m
  type (ty) :: t1(8),t2(8)
  open(2,file='fort.20',form="unformatted")
  write(2) (t1(i),i=1,8)
  close(2)

 open(3,file='fort.20',form="unformatted")
  read(3) (t2(i),i=1,8)
  close(3,status="delete")
  if(any(t2%x.ne.11))print*,101
  if(any(t2%y.ne.10))print*,102
 print*,"pass"
end program
