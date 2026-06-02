module m
  type ty
    integer :: x    =9
    complex :: y=(6.5,8.0)
    contains
    procedure :: r=>rform
    procedure :: w=>wform
     generic :: read(unformatted) => r
     generic :: write(unformatted) => w
  end type
  type,extends(ty):: ty2
    contains
    procedure :: w=>wform2
    procedure :: r=>rform2
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
module nm
use m
  type,extends(ty2):: ty3
    contains
    procedure :: r=>rform3
    procedure :: w=>wform3
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
    subroutine wform3(dtv, unit, iostat, iomsg)
      class(ty3), intent(in) :: dtv
      integer(kind=4), intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        write(unit,iostat=iostat,iomsg=iomsg) dtv%x+4,dtv%y
    end subroutine
end module
subroutine sub1()
use nm
implicit none
  class (ty),pointer :: t1
  class (ty),pointer :: t2
  class (ty),pointer :: t3

  allocate(t1)
  read(unit=140)t1
write(146,*)k1,k2,k3,z
k1=0;k2=0;k3=0;z=0
  allocate(ty2::t2)
  read(unit=141)t2
write(146,*)k1,k2,k3,z
k1=0;k2=0;k3=0;z=0
  allocate(ty3::t3)
  read(unit=142)t3
write(146,*)k1,k2,k3,z

  allocate(t1)
 write(unit=143)t1
  allocate(ty2::t2)
  write(unit=144)t2
  allocate(ty3::t3)
  write(unit=145)t3
  end

call put(140)
call put(141)
call put(142)
call sub1
call chk801
call chk901
print *,'sngg703n : pass'
end
subroutine put(i)
write(i  ) [2,3,11],(1.5,3)
rewind i
end
subroutine chk801
integer n(3)
complex c
rewind 146
read(146,*) n,c
if (any(n/=[2,3,11]))print *,901
if (c/=(1.5,3))print *,902
read(146,*) n,c
if (any(n/=[3,3,11]))print *,1901
if (c/=(1.5,3))print *,1902
read(146,*) n,c
if (any(n/=[4,3,11]))print *,2901
if (c/=(1.5,3))print *,1903
end
subroutine chk901
integer n(1)
complex c
rewind 143
read(143) n,c
if (any(n/=[11]))print *,3901
if (c/=(6.5,8))print *,981
rewind 144
read(144) n,c
if (any(n/=[12]))print *,3902
if (c/=(6.5,8))print *,982
rewind 145
read(145) n,c
if (any(n/=[13]))print *,3903
if (c/=(6.5,8))print *,983
end
