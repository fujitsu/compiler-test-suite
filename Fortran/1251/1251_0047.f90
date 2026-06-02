module m0
  interface
     subroutine sub0()
     end subroutine
  end interface
  type ty
    integer, allocatable :: x  !  =9
    real :: y=8
  end type
end
module m1
  use m0
  implicit none
  private
  interface
   subroutine wunform(dtv, unit, iostat, iomsg)
      use m0
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
   end subroutine
  end interface
  interface write(unformatted)
     procedure wunform
  end interface
  public :: write(unformatted) ,y,ty
contains
  subroutine y
  end subroutine
end module m1
module m2
  interface
     subroutine sub2()
       use m1
     end subroutine sub2
  end interface
end module m2

use m2
call sub2
print *,'sngg535p : pass'
end
 subroutine sub2()
   use m1
  TYPE (ty) :: t1
  call y
  allocate(t1%x)
  t1%x=9
  open(unit=71, file='fort.73',form='UNFORMATTED')
  write(unit=71) t1
  rewind 71
  read(71) n
  if (n/=10) print *,1006
  close(unit=71)
 end subroutine sub2
    subroutine wunform(dtv, unit, iostat, iomsg)
      use m0
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        write(unit,iostat=iostat,iomsg=iomsg) dtv%x+1
    end
