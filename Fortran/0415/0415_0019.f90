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

    read(14,*) dtv%xi1
    read(14,*) dtv%xi2
iostat=0

  end subroutine rform
end module m

program main
  use m
  type (ty) :: t1

write(14,*) 54321
write(14,*)1234567
rewind 14

  read(14,*) t1
  close(14)

  write(15,*) t1
print *,'pass'
call chk
end program main
subroutine chk
integer c(2)
rewind 15
read(15,*)c
if (any(c/=[54321,1234567])) print *,102
end
