module m
  type ty
    integer :: x    =1
    real :: y=8
  contains
    procedure :: wform
     generic :: write(formatted) => wform
  end type
   integer,save::a=1
contains
    subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
       a=a+dtv%x
      if(size(vlist)/=0) then
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1),vlist(2),dtv%x+2,dtv%y,iotype
      else
        write(unit,*,iostat=iostat,iomsg=iomsg) dtv%x+1,dtv%y,iotype
      end if
    end subroutine
end module
program main
call ss

contains
subroutine ss
  USE m
  type ct
   type(ty) :: cmp
  end type

  TYPE (ty) :: t1(6,7),oo
  open(unit=71, file='fort.37',form='FORMATTED')
  WRITE(unit=71,*) oo
  WRITE(unit=71,*) t1
  close(unit=71,status='delete')
  if(a .ne.44)print*,101
  print*,'pass'
  end subroutine
End program
