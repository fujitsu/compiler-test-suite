module m
  type ty
    integer :: x    =9
    complex :: y=(6.5,8.0)
    contains
  end type
  type:: ty2
    integer :: z=-1,x    =9
    complex :: y=(6.5,8.0)
    contains
  end type
  interface read(formatted)
    procedure::rform
  end interface
  interface read(formatted)
    procedure::rform2
  end interface
  interface  read(unformatted)
     procedure :: sform
  end interface
  interface  read(unformatted)
     procedure :: sform2
  end interface
  interface
    subroutine foo
    end subroutine
  end interface
integer::k1,k2,k3,k4(2)
complex::z
character(5)::zz
contains
    subroutine sform(dtv, unit, iostat, iomsg)
      class(ty), intent(inout) :: dtv
      integer(kind=4), intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        read(unit,iostat=iostat,iomsg=iomsg) k1,k2,dtv%x,dtv%y
     k3=dtv%x
     z=dtv%y
    end subroutine
    subroutine sform2(dtv, unit, iostat, iomsg)
      class(ty2), intent(inout) :: dtv
      integer(kind=4), intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        read(unit,iostat=iostat,iomsg=iomsg) k1,k2,dtv%x,dtv%y
     k1=k1+1
     k3=dtv%x
     z=dtv%y
    end subroutine
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

subroutine sub1()
use m
implicit none
  class (ty),pointer :: t1
  class (ty2),pointer :: t2
  allocate(t1)
  read(unit=30,'(DT(2,3))'),t1
write(32,*)k1,k2,k4,k3,z,"'",zz,"'"
k1=0;k2=0;k3=0;z=0;zz='';k4=0
  allocate(ty2::t2)
  read(unit=31,'(DT(2,3))'),t2
write(32,*)k1,k2,k4,k3,z,"'",zz,"'"
  allocate(t1)
  read(unit=35)t1
write(33,*)k1,k2,k3,z
k1=0;k2=0;k3=0;z=0
  allocate(ty2::t2)
  read(unit=36)t2
write(34,*)k1,k2,k3,z
  end

call put(30)
call put(31)
call zput(35)
call zput(36)
call sub1
call chk801
print *,'sngg845n : pass'
end
subroutine put(i)
write(i  ,*) [2,3,11],(1.5,3)
rewind i
end
subroutine zput(i)
write(i  ) [2,3,11],(1.5,3)
rewind i
end
subroutine chk801
integer n(5),w(3)
complex c
character*2 d
rewind 32
read(32,*) n,c,d
if (any(n/=[2,3,2,3,11]))print *,901
if (c/=(1.5,3))print *,902
if (d/='DT')print *,903
read(32,*) n,c,d
if (any(n/=[3,3,2,3,11]))print *,9012,n
if (c/=(1.5,3))print *,1902
if (d/='DT')print *,1903

rewind 33
read(33,*) w,c
if (any(w/=[2,3,11]))print *,1901
if (c/=(1.5,3))print *,1902
rewind 34
read(34,*) w,c
if (any(w/=[3,3,11]))print *,19011,n
if (c/=(1.5,3))print *,11902
end
