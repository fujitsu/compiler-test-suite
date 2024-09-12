module m
  type ty
    integer :: x
    integer, pointer :: y
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

  TYPE (ty) :: t1
  type(bt) :: gg
  integer::a=1,b=1
  character(9) :: ch='garbage'
  namelist /list/ t1,gg
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
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1),vlist(2),dtv%x+2,dtv%y+1,iotype
      else
        write(unit,*,iostat=iostat,iomsg=iomsg) dtv%x+1,dtv%y+1
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
  t1%x=9
  gg%x=19
  allocate(t1%y)
  t1%y=4
  t1%z=1

  open(10,file="fort.7",form="formatted")
  WRITE(10,NML=list) 
  close(10)

  t1%x=23
  gg%x=90
  if(t1%x/=23) print*,203
  if(gg%x/=90) print*,204
  if(ch/="NAMELIST") print*,202
  ch="xxxx"

  open(10,file="fort.7",form="formatted")
  READ(10,NML=list)
  close(10,status="delete")

  if(t1%x/=11) print*,101
  if(t1%z/=5) print*,102
  if(gg%x/=19) print*,103
  if(ch/="NAMELIST") print*,104
  print*,"pass"
End program
