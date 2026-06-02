module m
  type ty
    integer :: x    =9
    complex :: y=(6.5,8.0)
    contains
    procedure :: rform
     generic :: read(unformatted) => rform
  end type
  interface  read(unformatted)
     procedure :: rform
  end interface
  interface
    subroutine foo
    end subroutine
  end interface
integer::k1,k2,k3
complex::z
contains
    subroutine rform(dtv, unit, iostat, iomsg)
      class(ty), intent(inout) :: dtv
      integer(kind=4), intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        read(unit,iostat=iostat,iomsg=iomsg) k1,k2,dtv%x,dtv%y
     k3=dtv%x
     z=dtv%y
    end subroutine
end module

subroutine sub1()
use m
implicit none
  class (ty),pointer :: t1
  allocate(t1)
  read(unit=15)t1
write(16,*)k1,k2,k3,z
  end

call put(15)
call sub1
call chk801
print *,'sngg838n : pass'
end
subroutine put(i)
write(i  ) [2,3,11],(1.5,3)
rewind i
end
subroutine chk801
integer n(3)
complex c
rewind 16
read(16,*) n,c
if (any(n/=[2,3,11]))print *,901
if (c/=(1.5,3))print *,902
end
