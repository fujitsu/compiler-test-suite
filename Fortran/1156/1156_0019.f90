module m
  type ty
    integer :: x    =9
    complex :: y=(6.5,8.0)
    contains
    procedure :: r=>rform
    procedure :: w=>wform
    procedure :: rf=>rfform
    procedure :: wf=>wfform
     generic :: read(unformatted) => r
     generic :: write(unformatted) => w
     generic :: read(formatted) => rf
     generic :: write(formatted) => wf
  end type
  type,extends(ty):: ty2
    contains
    procedure :: w=>wform2
    procedure :: r=>rform2
    procedure :: wf=>wfform2
    procedure :: rf=>rfform2
  end type
integer::k1,k2,k3,k4(2)
complex::z
character(5)::zz
contains
    subroutine rfform(dtv, unit, iotype, vlist, iostat, iomsg)
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
    subroutine rfform2(dtv, unit, iotype, vlist, iostat, iomsg)
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
    subroutine wfform(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer(kind=4), intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1),vlist(2),dtv%x+2,dtv%y,'"',iotype,'"'
    end subroutine
    subroutine wfform2(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty2), intent(in) :: dtv
      integer(kind=4), intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1)+1,vlist(2)+2,dtv%x+3,dtv%y,'"',iotype,'"'
    end subroutine
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
    procedure :: wf=>wfform3
    procedure :: rf=>rfform3
  end type
contains
    subroutine rfform3(dtv, unit, iotype, vlist, iostat, iomsg)
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
    subroutine wfform3(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty3), intent(in) :: dtv
      integer(kind=4), intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1)+2,vlist(2)+3,dtv%x+4,dtv%y,'"',iotype,'"'
    end subroutine
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
  read(unit=157)t1
write(169,*)k1,k2,k3,z
k1=0;k2=0;k3=0;z=0
  allocate(ty2::t2)
  read(unit=158)t2
write(169,*)k1,k2,k3,z
k1=0;k2=0;k3=0;z=0
  allocate(ty3::t3)
  read(unit=159)t3
write(169,*)k1,k2,k3,z

  allocate(t1)
 write(unit=163)t1
  allocate(ty2::t2)
  write(unit=164)t2
  allocate(ty3::t3)
  write(unit=165)t3

  allocate(t1)
  write(unit=166,'(DT(2,3))'),t1
  allocate(ty2::t2)
  write(unit=167,'(DT(2,3))'),t2
  allocate(ty3::t3)
  write(unit=168,'(DT(2,3))'),t3

  allocate(t1)
  read(unit=160,'(DT(2,3))'),t1
write(170,*)k1,k2,k4,k3,z,"'",zz,"'"
k1=0;k2=0;k3=0;z=0;zz='';k4=0
  allocate(ty2::t2)
  read(unit=161,'(DT(2,3))'),t2
write(170,*)k1,k2,k4,k3,z,"'",zz,"'"
k1=0;k2=0;k3=0;z=0;zz='';k4=0
  allocate(ty3::t3)
  read(unit=162,'(DT(2,3))'),t3
write(170,*)k1,k2,k4,k3,z,"'",zz,"'"
  end

call put(157)
call put(158)
call put(159)
call fput(160)
call fput(161)
call fput(162)
call sub1
call chk801
call chk901
call chk701
call chk601
print *,'sngg705n : pass'
end
subroutine chk601
integer n(5)
complex c
character*2 d
rewind 170
read(170,*) n,c,d
if (any(n/=[2,3,2,3,11]))print *,6901
if (c/=(1.5,3))print *,6902
if (d/='DT')print *,6903
read(170,*) n,c,d
if (any(n/=[3,3,2,3,11]))print *,16901
if (c/=(1.5,3))print *,16902
if (d/='DT')print *,16903
read(170,*) n,c,d
if (any(n/=[4,3,2,3,11]))print *,26901
if (c/=(1.5,3))print *,216902
if (d/='DT')print *,216903
end
subroutine put(i)
write(i  ) [2,3,11],(1.5,3)
rewind i
end
subroutine fput(i)
write(i  ,*) [2,3,11],(1.5,3)
rewind i
end
subroutine chk801
integer n(3)
complex c
rewind 169
read(169,*) n,c
if (any(n/=[2,3,11]))print *,901
if (c/=(1.5,3))print *,902
read(169,*) n,c
if (any(n/=[3,3,11]))print *,1901
if (c/=(1.5,3))print *,1902
read(169,*) n,c
if (any(n/=[4,3,11]))print *,2901
if (c/=(1.5,3))print *,1903
end
subroutine chk901
integer n(1)
complex c
rewind 163
read(163) n,c
if (any(n/=[11]))print *,3901
if (c/=(6.5,8))print *,981
rewind 164
read(164) n,c
if (any(n/=[12]))print *,3902
if (c/=(6.5,8))print *,982
rewind 165
read(165) n,c
if (any(n/=[13]))print *,3903
if (c/=(6.5,8))print *,983
end
subroutine chk701
integer n(3)
complex c
character*2 d
rewind 166
read(166,*) n,c,d
if (any(n/=[2,3,11]))print *,71901,n
if (c/=(6.5,8))print *,7902
if (d/='DT')print *,7903
rewind 167
read(167,*) n,c,d
if (any(n/=[3,5,12]))print *,7901
if (c/=(6.5,8))print *,71902
if (d/='DT')print *,71903
rewind 168
read(168,*) n,c,d
if (any(n/=[2+2,3+3,11+2]))print *,79015
if (c/=(6.5,8))print *,719025
if (d/='DT')print *,719036
end
