module m
  type ty
    integer :: x
    complex ::y
  contains
    procedure :: wform
    procedure :: wread
    generic :: write(formatted) => wform
    generic :: read(formatted) => wread
  end type

  TYPE (ty),pointer :: t1(:)
  TYPE (ty),target :: ttttt1(5)
  integer::a=1,b=1
  character(9) :: ch='garbage'
  namelist /list/t1
contains
    subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
      ch=iotype
       if(size(vlist)/=0) then
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1),vlist(2),dtv%x+2,dtv%y,iotype
      else
        write(unit,*,iostat=iostat,iomsg=iomsg) dtv%x+1,dtv%y
      end if
    end subroutine

    subroutine wread(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty), intent(inout) :: dtv
      integer, intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg

      ch=iotype
      if(size(vlist)/=0) then
       read(unit,*,iostat=iostat,iomsg=iomsg)a,b, dtv%x,dtv%y
      else
        read(unit,*,iostat=iostat,iomsg=iomsg) dtv%x,dtv%y
      dtv%x=dtv%x+1
      end if
    end subroutine
end module

program main
  USE m
  t1=>ttttt1
  t1%x=9
  t1%y=(2.5,8.4)

  open(10,file="fort.12",form="formatted")
  WRITE(10,NML=list)
  close(10)

  t1%x=23
  if(any(t1%x/=23)) print*,203
  if(ch/="NAMELIST") print*,202
  ch="xxxx"

  open(10,file="fort.12",form="formatted")
  READ(10,NML=list)
  close(10,status="delete")

  if(any(t1%x/=11)) print*,101
  if(ch/="NAMELIST") print*,103
  print*,"pass"
End program
