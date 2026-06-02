module mod                               ! 1)       　　　
  type ty
    integer,pointer :: x
  end type
  interface  write(formatted)            ! 2) , 8)
    procedure::proc                      ! 8)
  end interface
  interface                              ! 3)
    subroutine foo                       ! 4)
    end subroutine
  end interface
contains
    subroutine proc(dtv, unit, iotype, vlist, iostat, iomsg)  ! 8)
      class(ty), intent(in) :: dtv
      integer(kind=4), intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist,dtv%x,iotype
    end subroutine
end module

subroutine sub                           ! 5)
use mod                                  ! 6)
implicit none
  class (ty),pointer :: var
  allocate(var)
  allocate(var%x,source=1)
  write(unit=148,FMT='(DT(2,3))') var      ! 7) , 8)
end





call sub
print *,'sngg860n : pass'
end
