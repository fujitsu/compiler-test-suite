module m
  type ty
   integer :: xi1=543
   character(len=3) :: xch1='def'
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

    read(10,*) dtv%xi1, dtv%xch1
iostat=0

  end subroutine rform
end module m

program main
  use m
  type (ty) :: t1

write(10,*) '1357 abc'
rewind 10

  read(10,*) t1
  close(10)

open(1,delim='quote')
  write(1,*) t1
call chk
print *,'pass'
end program main
subroutine chk
integer c
character(3) d
rewind 1
read(1,*) c,d
if (c    /=1357) print *,102
if (d    /='abc') print *,103
end
