module m
  type ty
    integer :: x    =9
    complex :: y=(6.5,8.0)
  end type

    character(len=14)::ch
  interface write(formatted)
    procedure::wform
  end interface

interface read(formatted)
    procedure::sb1
end interface
contains
    subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer(kind=4), intent(in) :: unit
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
    class(ty), intent(inout)            :: dtv
    integer, intent(in)             :: unit
    character(len=*), intent(in)    :: iotype
    integer, intent(in)             :: v_list (:)
    integer, intent(out)            :: iostat
    character(len=*), intent(inout) :: iomsg
   ch=iotype
          if(size(v_list)/=0) then
        read(unit,*,iostat=iostat,iomsg=iomsg) dtv%x,dtv%y
       dtv%x=dtv%x+2
      else
        read(unit,*,iostat=iostat,iomsg=iomsg) dtv%x
       dtv%x=dtv%x+1
     end if
end subroutine sb1

end module
module m1
use m
implicit none
 private
public::sub1
  interface
     module subroutine sub1()
     end subroutine
  end interface
end module m1
submodule (m1) m1sub
contains
  module subroutine sub1()
implicit none
      TYPE (ty) :: t1,t2
 open(unit=71, file='fort.44',form='FORMATTED')
      write(unit=71,'(DT)'),t1
close(unit=71)
 open(unit=77, file='fort.44',form='FORMATTED')
      read(unit=77,'(DT)'),t2
 close(unit=77,status='delete')

if(t2%x .ne. 11)print*,101
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg073n : pass'
end
