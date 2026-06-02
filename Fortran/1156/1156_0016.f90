module m
  type ty
    integer :: x    =9
    complex :: y=(6.5,8.0)
    contains
    procedure :: w=>rform
     generic :: read(unformatted) => w
  end type
  type,extends(ty):: ty2
    contains
    procedure :: w=>rform2
  end type
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
module nm
use m
  type,extends(ty2):: ty3
    contains
    procedure :: w=>rform3
  end type
contains
    subroutine rform3(dtv, unit, iostat, iomsg)
      class(ty3), intent(inout) :: dtv
      integer(kind=4), intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        read(unit,iostat=iostat,iomsg=iomsg) k1,k2,dtv%x,dtv%y
     k1=k1+2
     k3=dtv%x
     z=dtv%y
    end subroutine
end module
subroutine sub1()
use nm
implicit none
  class (ty),pointer :: t1
  class (ty),pointer :: t2
  class (ty),pointer :: t3
  allocate(t1)
  read(unit=136)t1
write(139,*)k1,k2,k3,z
k1=0;k2=0;k3=0;z=0
  allocate(ty2::t2)
  read(unit=137)t2
write(139,*)k1,k2,k3,z
k1=0;k2=0;k3=0;z=0
  allocate(ty3::t3)
  read(unit=138)t3
write(139,*)k1,k2,k3,z
  end

call put(136)
call put(137)
call put(138)
call sub1
call chk801
print *,'sngg702n : pass'
end
subroutine put(i)
write(i  ) [2,3,11],(1.5,3)
rewind i
end
subroutine chk801
integer n(3)
complex c
rewind 139
read(139,*) n,c
if (any(n/=[2,3,11]))print *,901
if (c/=(1.5,3))print *,902
read(139,*) n,c
if (any(n/=[3,3,11]))print *,1901
if (c/=(1.5,3))print *,1902
read(139,*) n,c
if (any(n/=[4,3,11]))print *,2901
if (c/=(1.5,3))print *,1903
end
