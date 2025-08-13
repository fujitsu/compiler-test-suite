module m
  type ty
   integer :: xi1=456
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

  open(10,file="fort.54")
call init
  read(10,*) t1

  write(25,*) t1
call chk
  close(10)
print *,'pass'
end program main
subroutine chk
integer c
rewind 25
read(25,*)c
if (   (c/=987)) print *,102
end
subroutine init
write(10,*) 987
rewind 10
end
