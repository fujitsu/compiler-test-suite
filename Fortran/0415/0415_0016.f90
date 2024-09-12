module m
  type ty
   integer :: xi1=456
   integer :: xi2=78901
   contains
     procedure, public :: rform
     generic   :: read(formatted) => rform
  end type ty
contains
  subroutine rform(dtv, unit, iotype, vlist, iostat, iomsg)
    class(ty), intent(inout)       :: dtv
    integer, intent(in)         :: unit
    character(*), intent(in)    :: iotype
    integer, intent(in)         :: vlist(:)
    integer, intent(out)        :: iostat
    character(*), intent(inout) :: iomsg

    read(10,*) dtv%xi1
iostat=0

  end subroutine rform
end module m

program main
  use m
  type (ty) :: t1

  open(10,file="fort.9999")
write(10,*) 111,2222
rewind 10

  read(10,*) t1, t1
  close(10)

  write(1,*) t1
call chk
print *,'pass'
end program main
subroutine chk
integer c(2)
rewind 1
read(1,*)c
if (any(c/=[2222,78901])) print *,102
end
