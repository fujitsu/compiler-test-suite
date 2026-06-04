module m
  type ty
    integer :: x    =9
    complex :: y=(6.5,8.0)
    contains
  end type
  interface  write(unformatted)
     procedure :: pform
  end interface
  interface read(formatted)
    procedure::rform
  end interface
  interface  read(unformatted)
     procedure :: sform
  end interface
 interface  write(formatted)
      procedure::yform
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
    subroutine sform(dtv, unit, iostat, iomsg)
      class(ty), intent(inout) :: dtv
      integer(kind=4), intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        read(unit,iostat=iostat,iomsg=iomsg) k1,k2,dtv%x,dtv%y
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
    subroutine pform(dtv, unit, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer(kind=4), intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        write(unit,iostat=iostat,iomsg=iomsg) dtv%x+2,dtv%y
    end subroutine
end module
    subroutine foo
    end subroutine
module mm
use m
implicit none
 private::write(unformatted)
 private::write(formatted)
 private::read(formatted)
 private::read(unformatted)
public::sub1
  interface
     module subroutine sub1()
     end subroutine
  end interface
end
submodule (mm) m1sub
contains
  module subroutine sub1()
implicit none
  class (ty),pointer :: t1
if (1==1) return

  allocate(t1)
  read(802,'(DT(2,3))')t1
write(2802,*)k1,k2,k4,k3,z,"'",zz,"'"
k1=0;k2=0;k3=0;z=0;zz='';k4=0
write(2802,*)k1,k2,k4,k3,z,"'",zz,"'"
  allocate(t1)
  read(602)t1
write(3802,*)k1,k2,k3,z

  allocate(t1)
    open(1802, form='FORMATTED')
  write(1802,'(DT(2,3))')t1
  allocate(t1)
  write(7802)t1
end subroutine
end

use mm
call sub1

print *,'sngg886n : pass'
end
