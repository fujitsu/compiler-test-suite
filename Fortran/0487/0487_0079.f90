module m
  type ty
    integer,allocatable :: x
    class(ty),allocatable::node
  contains
    procedure :: wform
    generic :: write(formatted) => wform
  end type
contains
subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
  class(ty), intent(in) :: dtv
  integer, intent(in) :: unit
  character(*), intent(in) :: iotype
  integer, intent(in) :: vlist(:)
  integer, intent(out) :: iostat
  character(*), intent(inout) :: iomsg
    WRITE(unit,*,IOSTAT=iostat,IOMSG=iomsg) dtv%node
end subroutine

end module

program main
USE m
type (ty),allocatable :: t1,t2

print*, "pass"
end program
