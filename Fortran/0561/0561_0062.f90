module m
  type ty
    integer :: x    =9
     real :: y=8
  contains
    procedure :: wform
     generic :: write(formatted) => wform
  end type
integer::a=1,b=1
   integer,save::aa=1
   character(len=15)::ch,ch2='a'
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
        ch2='VLIST'
        a=vlist(1)
        b=vlist(2)
        aa=aa+dtv%x
       write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1),vlist(2),dtv%x+1,dtv%y,iotype
      else
         aa=aa+dtv%x
      end if
      if(aa .eq. 10)write(unit,*,iostat=iostat,iomsg=iomsg)'pass'

    end subroutine
end module
program main
  USE m
  type rt
    TYPE (ty) :: t1
  end type

  type(rt) :: obj
  print*,obj
  if(aa .ne. 10)print*,101
  if(ch .ne. 'LISTDIRECTED')print*,102
  if(ch2 .eq. 'VLIST' .and. (a .ne.2 .and. b .ne.3))print*,103
End program
