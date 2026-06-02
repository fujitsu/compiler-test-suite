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
   subroutine runform(dtv, unit, iostat, iomsg)
      use m0
      class(ty), intent(inout) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
   end subroutine
  end interface
  interface read(unformatted)
     procedure runform
  end interface
  public :: read(unformatted) ,y,ty
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
print *,'sngg536p : pass'
end
 subroutine sub2()
   use m1
  TYPE (ty) :: t1
  call y
  allocate(t1%x)
  t1%x=9
  open(unit=71, file='fort.74',form='UNFORMATTED')
  write(71) 11
  rewind 71
  read(unit=71) t1
  if (t1%x/=11) print *,1006
  close(unit=71)
 end subroutine sub2
    subroutine runform(dtv, unit,iostat, iomsg)
      use m0
      class(ty), intent(inout) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        read (unit,iostat=iostat,iomsg=iomsg) dtv%x
    end
