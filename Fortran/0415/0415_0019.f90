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
    read(10,*) dtv%xi2
iostat=0

  end subroutine rform
end module m

program main
  use m
  type (ty) :: t1

write(10,*) 54321
write(10,*)1234567
rewind 10

  read(10,*) t1
  close(10)

  write(1,*) t1
print *,'pass'
call chk
end program main
subroutine chk
integer c(2)
rewind 1
read(1,*)c
if (any(c/=[54321,1234567])) print *,102
end
