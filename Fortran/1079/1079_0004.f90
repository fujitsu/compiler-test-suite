module m
  type ty
    integer :: x    =9
    complex :: y=(6.5,8.0)
    contains
    procedure :: rform
     generic :: read(unformatted) => rform
  end type
  type:: ty2
    integer :: z    =-1
    integer :: x    =9
    complex :: y=(6.5,8.0)
    contains
    procedure :: rform2
     generic :: read(unformatted) => rform2
  end type
  interface  read(unformatted)
     procedure :: rform
  end interface
  interface  read(unformatted)
     procedure :: rform2
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
    subroutine rform2(dtv, unit, iostat, iomsg)
      class(ty2), intent(inout) :: dtv
      integer(kind=4), intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        read(unit,iostat=iostat,iomsg=iomsg) k1,k2,dtv%x,dtv%y
     k1=k1+1
     k3=dtv%x
     z=dtv%y
    end subroutine
end module

subroutine sub1()
use m
implicit none
  class (ty),pointer :: t1
  class (ty2),pointer :: t2
  allocate(t1)
  read(unit=9)t1
write(10,*)k1,k2,k3,z
k1=0;k2=0;k3=0;z=0
  allocate(ty2::t2)
  read(unit=11)t2
write(10,*)k1,k2,k3,z
  end

call put(9)
call put(11)
call sub1
call chk801
print *,'sngg836n : pass'
end
subroutine put(i)
write(i  ) [2,3,11],(1.5,3)
rewind i
end
subroutine chk801
integer n(3)
complex c
rewind 10
read(10,*) n,c
if (any(n/=[2,3,11]))print *,901
if (c/=(1.5,3))print *,902
read(10,*) n,c
if (any(n/=[3,3,11]))print *,9011,n
if (c/=(1.5,3))print *,1902
end
