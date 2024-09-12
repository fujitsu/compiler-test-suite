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
      else
         aa=aa+dtv%x
      end if

      if(aa .eq. 77)write(unit,*,iostat=iostat,iomsg=iomsg)'pass'

          
    end subroutine
end module
program main
  USE m
  interface
  function fun()
   import ty
   TYPE (ty),pointer :: fun(:)
  end function
  end interface

  print*, fun()
 if(aa .ne. 77)print*,101
  if(ch .ne. 'LISTDIRECTED')print*,102
  if(ch2 .eq. 'VLIST' .and. (a .ne.2 .and. b .ne.3))print*,103
End program

 function fun()
  use m
  TYPE (ty),target,save :: d(4)
  TYPE (ty),pointer :: fun(:)
  fun=>d
  fun%x = fun%x+10
  fun%y = fun%y+10
 end function

