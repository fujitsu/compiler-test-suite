module m
  type ty
    integer :: x    =9
     real :: y=8
  contains
    procedure :: wunform
     generic :: write(unformatted) => wunform
  end type
  integer, save::a=1
contains
    subroutine wunform(dtv, unit, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
      a=a+dtv%x
      write(unit,iostat=iostat,iomsg=iomsg) dtv%x+dtv%y
    end subroutine
end module
program main
  USE m

  OPEN(2,file='fort.6',form="unformatted")
  WRITE(2) [t1(3),t1(2)],[ty(3,4),ty(2,3)]
  close(2)
  if(a.ne.11) print*,101
  print*,"pass"

contains
function t1(d)
  TYPE (ty) :: t1
  integer :: d

  t1%x=d
  t1%y=d+1
end function
End program

