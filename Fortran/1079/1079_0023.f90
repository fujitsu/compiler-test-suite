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
  interface  write(unformatted)
     procedure :: pform
  end interface
  interface  write(unformatted)
     procedure :: pform2
  end interface
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
 interface  write(formatted)
      procedure::yform
  end interface
 interface  write(formatted)
      procedure::yform2
  end interface
  interface
    subroutine foo
    end subroutine
  end interface
integer::k1,k2,k3,k4(2)
complex::z
character(5)::zz
contains
    subroutine yform(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer(kind=4), intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1),vlist(2),dtv%x+2,dtv%y,'"',iotype,'"'
    end subroutine
    subroutine yform2(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty2), intent(in) :: dtv
      integer(kind=4), intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1),vlist(2),dtv%x+3,dtv%y,'"',iotype,'"'
    end subroutine
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
    subroutine pform(dtv, unit, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer(kind=4), intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        write(unit,iostat=iostat,iomsg=iomsg) dtv%x+2,dtv%y
    end subroutine
    subroutine pform2(dtv, unit, iostat, iomsg)
      class(ty2), intent(in) :: dtv
      integer(kind=4), intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        write(unit,iostat=iostat,iomsg=iomsg)dtv%x+3,dtv%y
    end subroutine
end module
    subroutine foo
    end subroutine

subroutine sub1()
use m
implicit none
  class (ty),pointer :: t1
  class (ty2),pointer :: t2
  allocate(t1)
  read(unit=102,'(DT(2,3))'),t1
write(110,*)k1,k2,k4,k3,z,"'",zz,"'"
k1=0;k2=0;k3=0;z=0;zz='';k4=0
  allocate(ty2::t2)
  read(unit=103,'(DT(2,3))'),t2
write(110,*)k1,k2,k4,k3,z,"'",zz,"'"
  allocate(t1)
  read(unit=104)t1
write(111,*)k1,k2,k3,z
k1=0;k2=0;k3=0;z=0
  allocate(ty2::t2)
  read(unit=105)t2
write(112,*)k1,k2,k3,z

  allocate(t1)
    open(unit=106, form='FORMATTED')
  write(unit=106,'(DT(2,3))'),t1
  allocate(t2)
    open(unit=107, form='FORMATTED')
  write(unit=107,'(DT(2,3))'),t2
  allocate(t1)
  write(unit=108)t1
  allocate(ty2::t2)
  write(unit=109)t2
  end


call put(102)
call put(103)
call zput(104)
call zput(105)
call sub1
call chk801
call chk1801
call chk1301
call chk7801
print *,'sngg856n : pass'
end
subroutine chk7801
integer n(1)
complex c
rewind 108
read(108) n,c
if (any(n/=[11]))print *,7901
if (c/=(6.5,8))print *,7902
rewind 109
read(109) n,c
if (any(n/=[12]))print *,79011
if (c/=(6.5,8))print *,79021
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
rewind 110
read(110,*) n,c,d
if (any(n/=[2,3,2,3,11]))print *,901
if (c/=(1.5,3))print *,902
if (d/='DT')print *,903
read(110,*) n,c,d
if (any(n/=[3,3,2,3,11]))print *,9012,n
if (c/=(1.5,3))print *,1902
if (d/='DT')print *,1903

rewind 111
read(111,*) w,c
if (any(w/=[2,3,11]))print *,1901
if (c/=(1.5,3))print *,1902
rewind 112
read(112,*) w,c
if (any(w/=[3,3,11]))print *,19011,n
if (c/=(1.5,3))print *,11902
end
subroutine chk1801
integer n(3)
complex c
character*2 d
rewind 106
read(106,*) n,c,d
if (any(n/=[2,3,11]))print *,2901
if (c/=(6.5,8))print *,2902
if (d/='DT')print *,2903
end
subroutine chk1301
integer n(3)
complex c
character*2 d
rewind 107
read(107,*) n,c,d
if (any(n/=[2,3,12]))print *,22901
if (c/=(6.5,8))print *,22902
if (d/='DT')print *,22903
end
