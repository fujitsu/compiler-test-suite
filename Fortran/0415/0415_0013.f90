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
  integer :: i1=111
  integer :: i2=222

  open(10,file="fort.9999")
write(10,'(a)') '123'
write(10,'(a)') '543'
write(10,'(a)') '678'
rewind 10
  read(10,*) t1
  read(10,*) i1
  read(10,*) t1
  close(10)

  write(1,*) t1
  write(1,*) i1
call chk
print *,'pass'
end program main
subroutine chk
integer c
rewind 1
read(1,*)c
if (   (c/=678)) print *,102
read(1,*)c
if (   (c/=543)) print *,103
end
