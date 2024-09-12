module m
  type ty
    integer :: x
    complex :: y=(2.3,8.1)
    integer :: z
  contains
    procedure :: wform
    procedure :: wread
    generic :: write(formatted) => wform
    generic :: read(formatted) => wread
  end type

  type bt
   integer :: x 
  end type

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
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1),vlist(2),dtv%x+2,int(aimag(dtv%y))+1,iotype
      else
        write(unit,*,iostat=iostat,iomsg=iomsg) dtv%x+1,int(aimag(dtv%y))+1
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
       read(unit,*,iostat=iostat,iomsg=iomsg)a,b, dtv%x,dtv%z
      else
        read(unit,*,iostat=iostat,iomsg=iomsg) dtv%x,dtv%z
      dtv%x=dtv%x+1
      end if
    end subroutine
end module

program main
  USE m
  TYPE (ty) :: act
  act%x=9
  act%y=(2,4)
  call ss(act)

  contains
  subroutine ss(t1)
  TYPE (ty) :: t1
  type(bt) :: gg
  namelist /list/ t1,gg
  gg%x=19

  open(10,file="fort.13",status="new",form="formatted")
  WRITE(10,NML=list) 
  close(10,status="keep")

  t1%x=23
  t1%z=2
  gg%x=90
  if(t1%x/=23) print*,201
  if(t1%z/=2) print*,203
  if(gg%x/=90) print*,204
  if(ch/="NAMELIST") print*,202
  ch="xxxx"

  open(10,file="fort.13",status="old",form="formatted")
  READ(10,NML=list)
  close(10,status="delete")

  if(t1%x/=11) print*,101
  if(t1%z/=5) print*,102
  if(gg%x/=19) print*,103
  if(ch/="NAMELIST") print*,104
  print*,"pass"
 end subroutine
End program
