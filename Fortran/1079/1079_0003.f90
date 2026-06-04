module m
  type ty
    integer :: x    =9
    complex :: y=(6.5,8.0)
  end type
  type ty2
    integer :: x    =9
    complex :: y=(6.5,8.0)
    integer :: z    =9
  end type
  interface  write(unformatted)
     procedure :: wform
  end interface
  interface  write(unformatted)
     procedure :: wform2
  end interface
  interface
    subroutine foo
    end subroutine
  end interface
contains
    subroutine wform(dtv, unit, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer(kind=4), intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        write(unit,iostat=iostat,iomsg=iomsg) dtv%x+2,dtv%y
    end subroutine
    subroutine wform2(dtv, unit, iostat, iomsg)
      class(ty2), intent(in) :: dtv
      integer(kind=4), intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        write(unit,iostat=iostat,iomsg=iomsg)dtv%x+3,dtv%y
    end subroutine
end module

subroutine sub1()
use m
implicit none
  class (ty),pointer :: t1
  class (ty2),pointer :: t2
  allocate(t1)
  write(unit=7)t1
  allocate(ty2::t2)
  write(unit=8)t2
  end

call sub1
call chk801
print *,'sngg835n : pass'
end
subroutine chk801
integer n(1)
complex c
rewind 7
read(7) n,c
if (any(n/=[11]))print *,901
if (c/=(6.5,8))print *,902
rewind 8
read(8) n,c
if (any(n/=[12]))print *,9011
if (c/=(6.5,8))print *,9021
end
    subroutine foo
    end subroutine
