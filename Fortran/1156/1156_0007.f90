module m
  type ty
    integer :: x    =9
    complex :: y=(6.5,8.0)
    contains
    procedure :: w=>rform
  end type
  type,extends(ty):: ty2
    contains
    procedure :: w2=>rform2
     generic :: read(formatted) => w2
  end type
integer::k1,k2,k3,k4(2)
complex::z
character(5)::zz
contains
    subroutine rform(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty), intent(inout) :: dtv
      integer(kind=4), intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        read(unit,*,iostat=iostat,iomsg=iomsg) k1,k2,dtv%x,dtv%y
     k3=dtv%x
     z=dtv%y
     zz=iotype
     k4=vlist
    end subroutine
    subroutine rform2(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty2), intent(inout) :: dtv
      integer(kind=4), intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        read(unit,*,iostat=iostat,iomsg=iomsg) k1,k2,dtv%x,dtv%y
     k1=k1+1
     k3=dtv%x
     z=dtv%y
     zz=iotype
     k4=vlist
    end subroutine
end module
module mn
  use m
  type,extends(ty2):: ty3
    contains
  end type
contains
    subroutine rform3(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty3), intent(inout) :: dtv
      integer(kind=4), intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        read(unit,*,iostat=iostat,iomsg=iomsg) k1,k2,dtv%x,dtv%y
     k1=k1+2
     k3=dtv%x
     z=dtv%y
     zz=iotype
     k4=vlist
    end subroutine
end
subroutine sub1()
use mn
implicit none
  class (ty3),pointer :: t1
  class (ty3),pointer :: t2
  class (ty3),pointer :: t3
  allocate(t1)
  read(unit=66,'(DT(2,3))'),t1
write(69,*)k1,k2,k4,k3,z,"'",zz,"'"
k1=0;k2=0;k3=0;z=0;zz='';k4=0
  allocate(ty3::t2)
  read(unit=67,'(DT(2,3))'),t2
write(69,*)k1,k2,k4,k3,z,"'",zz,"'"
k1=0;k2=0;k3=0;z=0;zz='';k4=0
  allocate(ty3::t3)
  read(unit=68,'(DT(2,3))'),t3
write(69,*)k1,k2,k4,k3,z,"'",zz,"'"
  end

call put(66)
call put(67)
call put(68)
call sub1
call chk801
print *,'sngg673n : pass'
end
subroutine put(i)
write(i  ,*) [2,3,11],(1.5,3)
rewind i
end
subroutine chk801
integer n(5)
complex c
character*2 d
rewind 69
read(69,*) n,c,d
if (any(n/=[3,3,2,3,11]))print *,901
if (c/=(1.5,3))print *,902
if (d/='DT')print *,903
read(69,*) n,c,d
if (any(n/=[3,3,2,3,11]))print *,1901
if (c/=(1.5,3))print *,1902
if (d/='DT')print *,1903
read(69,*) n,c,d
if (any(n/=[3,3,2,3,11]))print *,2901
if (c/=(1.5,3))print *,21902
if (d/='DT')print *,21903
end
