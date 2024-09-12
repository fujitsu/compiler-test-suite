module m
  type ty
    integer :: x
    character(8) ::y(5)
  contains
    procedure :: wform
    procedure :: wread
    generic :: write(formatted) => wform
    generic :: read(formatted) => wread
  end type

  type,extends(ty) :: tt2
    complex :: cc
  end type

  CLASS(ty),pointer :: t1
  type(tt2),target :: tgt
  integer::a=1,b=1
  integer :: check=5
  character(9) :: ch='garbage'
  namelist /list/ t1
contains
    subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
      ch=iotype
      select type(dtv)
      class is(tt2)
       if(size(vlist)/=0) then
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1),vlist(2),dtv%x+2,dtv%y,iotype
      else
        write(unit,*,iostat=iostat,iomsg=iomsg) dtv%x+1,dtv%y
      end if
      class default
      check=2
      end select
    end subroutine

    subroutine wread(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty), intent(inout) :: dtv
      integer, intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg

      ch=iotype
      select type(dtv)
      class is(tt2)
      if(size(vlist)/=0) then
       read(unit,*,iostat=iostat,iomsg=iomsg)a,b, dtv%x,dtv%y
      else
        read(unit,*,iostat=iostat,iomsg=iomsg) dtv%x,dtv%y
      dtv%x=dtv%x+1
      end if
      end select
    end subroutine
end module

program main
  USE m
  t1=>tgt
  tgt%cc=(1.0,2.0)
  t1%x=9
  t1%y='value'

  open(10,file="fort.18",form="formatted")
  WRITE(10,NML=list)
  close(10)

  t1%x=23
  t1%y='aaaaa'
  if(t1%x/=23) print*,203
  if(any(t1%y.ne.'aaaaa')) print*,204
  if(ch/="NAMELIST") print*,202
  ch="xxxx"

  open(10,file="fort.18",form="formatted")
  READ(10,NML=list)
  close(10,status="delete")

  if(t1%x/=11) print*,101
  if(any(t1%y.ne.'value')) print*,102
  if(ch/="NAMELIST") print*,103
  if(check.ne.5) print*,104
  print*,"pass"
End program

