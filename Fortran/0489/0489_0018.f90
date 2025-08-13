module m
  type ty
     integer :: x    =9
   contains
     procedure :: wform
     generic :: write(formatted) => wform
  end type ty
contains
subroutine s
call test
end
  subroutine test
    TYPE (ty) :: t1
    write(7,*) t1
  end subroutine test
  subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
    class(ty), intent(in) :: dtv
    integer(kind=4), intent(in) :: unit
    character(*), intent(in) :: iotype
    integer, intent(in) :: vlist(:)
    integer, intent(out) :: iostat
    character(*), intent(inout) :: iomsg

    write(unit,*,iostat=iostat,iomsg=iomsg) "PASS", dtv%x+1
  end subroutine wform
end
use m
call s
print *,'pass'
end
