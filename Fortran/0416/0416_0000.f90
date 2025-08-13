module m
  type ty
    integer :: x    =9
     real :: y=8
  contains
    procedure :: wform
     generic :: write(formatted) => wform
  end type

contains
    subroutine wform(dtv,unit, iotype, vlist,iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg

    call chk(vlist)
     write(unit,*,iostat=iostat,iomsg=iomsg) vlist,dtv%x,dtv%y,iotype
    end subroutine
    subroutine chk(vlist)
      integer, intent(in),optional :: vlist(:)
      if (.not.present(vlist)) stop 7777
    end subroutine
end module
program main
  USE m

type(ty)::obj

write(2,*)obj
print *,'pass'
End program
