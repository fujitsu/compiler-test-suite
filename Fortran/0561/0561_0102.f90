module m
  type ty
    integer :: x    =9
     real :: y=8
  contains
    procedure :: wunform
     generic :: write(unformatted) => wunform
  end type
  integer,save::a=1
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
  TYPE (ty) :: t1(5)

  OPEN(2,file='fort.7',form="unformatted")
  WRITE(2) [t1(3),t1(2)]
  close(2)
   if(a.ne.19)  print*,101
   print*,"pass"
End program

