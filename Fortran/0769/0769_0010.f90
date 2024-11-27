module m
  type ty
    integer, allocatable :: x
    character(8) ::y(5)
  contains
    procedure :: wform
    procedure :: wread
    generic :: write(formatted) => wform
    generic :: read(formatted) => wread
  end type

  TYPE (ty),pointer :: t1
  integer::a=1,b=1
  character(9) :: ch='garbage'
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
  namelist /list/ t1
  allocate(t1)
  allocate(t1%x)
  t1%x=9
  t1%y="garrage"

  open(10,file="fort.28",form="formatted")
  WRITE(10,NML=list)
  close(10,status="keep")

  t1%x=23
  if(t1%x/=23) print*,203
  if(ch/="NAMELIST") print*,202
  ch="xxxx"

  open(10,file="fort.28",form="formatted")
  READ(10,NML=list)
  close(10,status="delete")

  if(t1%x/=11) print*,101
  if(ch/="NAMELIST") print*,103
  print*,"pass"
End program
