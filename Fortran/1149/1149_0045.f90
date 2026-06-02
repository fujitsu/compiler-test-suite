module n
  type ty
    integer, allocatable :: x  !  =9
    real :: y=8
  end type
end
module m1
use n
implicit none
 private
public::sub1,sub2
  interface
     module subroutine sub2()
     end subroutine
     module subroutine sub1()
     end subroutine
  end interface

integer::a=1,b=1
 character(len=14)::ch
interface write(formatted)
    subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
      import ty
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
    end subroutine
end interface
 interface read(formatted)
subroutine sb1 (dtv, unit, iotype, v_list, iostat, iomsg)
    import ty
    class(ty), intent(inout)            :: dtv
    integer, intent(in)             :: unit
    character(len=*), intent(in)    :: iotype
    integer, intent(in)             :: v_list (:)
    integer, intent(out)            :: iostat
    character(len=*), intent(inout) :: iomsg
end subroutine sb1
end interface
end module m1
submodule (m1) m1sub
contains
  module subroutine sub1()
implicit none
type cover
    TYPE (ty) :: t1
  end type

  type(cover) :: obj,obj2
  allocate(obj%t1%x,obj2%t1%x)
  obj%t1%x=9
  obj2%t1%x=9
  open(unit=71, file='fort.84',form='FORMATTED')
  write(unit=71,*),obj
close(unit=71)
 open(unit=77, file='fort.84',form='FORMATTED')
read(unit=77,*)obj2
close(unit=77,status='delete')

if(obj2%t1%x .ne.11)print*,101
  end 
end 
submodule (m1:m1sub) m2sub
end
submodule (m1:m2sub) m3sub
end
submodule (m1:m3sub) m4sub
contains
  module subroutine sub2()
implicit none
type cover
    TYPE (ty) :: t1
  end type

  type(cover) :: obj,obj2
  allocate(obj%t1%x,obj2%t1%x)
  obj%t1%x=9
  obj2%t1%x=9
  open(unit=81, file='fort.84',form='FORMATTED')
  write(unit=81,*),obj
close(unit=81)
 open(unit=87, file='fort.84',form='FORMATTED')
read(unit=87,*)obj2
close(unit=87,status='delete')

if(obj2%t1%x .ne.11)print*,101
  end 
end 

use m1
call sub1
call sub2

print *,'sngg103o : pass'
end

    subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
use n
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg

      if(size(vlist)/=0) then
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1),vlist(2),dtv%x+2,dtv%y,iotype
      else
        write(unit,*,iostat=iostat,iomsg=iomsg) dtv%x+1
      end if
    end subroutine
subroutine sb1 (dtv, unit, iotype, v_list, iostat, iomsg)
use n
    class(ty), intent(inout)            :: dtv
    integer, intent(in)             :: unit
    character(len=*), intent(in)    :: iotype
    integer, intent(in)             :: v_list (:)
    integer, intent(out)            :: iostat
    character(len=*), intent(inout) :: iomsg
          if(size(v_list)/=0) then
        read(unit,*,iostat=iostat,iomsg=iomsg)a,b, dtv%x,dtv%y
       dtv%x=dtv%x+2
      else
        read(unit,*,iostat=iostat,iomsg=iomsg) dtv%x
       dtv%x=dtv%x+1
     end if
end subroutine sb1


