module m
  type ty
    integer,allocatable :: x
    complex :: y=(2.3,8.1)
  contains
    procedure :: wunform
     generic :: write(unformatted) => wunform
  end type
contains
    subroutine wunform(dtv, unit, iostat, iomsg)
      implicit none
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg

    iostat=0
    end subroutine
end module

program main
  USE m
  TYPE (ty) :: t1
  allocate(t1%x)
  t1%x = 20
  ios=-1
  WRITE(1,iostat=ios) t1
  if (ios/=0) print *,101,ios
print *,'pass'
End program
