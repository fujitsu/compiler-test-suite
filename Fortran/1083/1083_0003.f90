module m
  type ty
    integer, allocatable :: x  !  =9
    real :: y=8
  end type

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
end module

module m1
use m
implicit none
 private
public::sub1,ty
  interface
     module subroutine sub1()
     end subroutine
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
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg072n : pass'
end

    subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
      use m
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
    use m
    class(ty), intent(inout)            :: dtv
    integer, intent(in)             :: unit
    character(len=*), intent(in)    :: iotype
    integer, intent(in)             :: v_list (:)
    integer, intent(out)            :: iostat
    character(len=*), intent(inout) :: iomsg
   ch=iotype
          if(size(v_list)/=0) then
        read(unit,*,iostat=iostat,iomsg=iomsg)a,b, dtv%x,dtv%y
       dtv%x=dtv%x+2
      else
        read(unit,*,iostat=iostat,iomsg=iomsg) dtv%x
       dtv%x=dtv%x+1
     end if
end subroutine sb1


