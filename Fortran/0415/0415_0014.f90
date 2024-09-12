module m
  type ty
   integer :: k(3)
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

    read(10,*) dtv%k
iostat=0

  end subroutine rform
end module m

program main
  use m
  type (ty) :: t1(3)

  open(10,file="fort.999")
write(10,*) '111 222 333 444 555 666 777 888 999'
rewind 10

  read(10,*) t1
  close(10)

  write(1,*) t1
call chk
print *,'pass'
end program main
subroutine chk
integer c(9)
rewind 1
read(1,*)c
if (any(c/=[&
111,222,333,444,555,666,777,888,999&
])) print *,102
end
