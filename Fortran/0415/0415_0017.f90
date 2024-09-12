module m
  type ty
   complex :: xc1=(1.2, 3.4)
   logical :: xl1=.TRUE.
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

    read(10,*) dtv%xc1, dtv%xl1
iostat=0

  end subroutine rform
end module m

program main
  use m
  type (ty) :: t1
  integer :: i1=111
  integer :: i2=222

write(10,*) '135 (12.3, 45.6) .FALSE. 246'
rewind 10

  read(10,*) i1, t1, i2
  close(10)

  write(1,*) i1, t1, i2
call chk
print *,'pass'
end program main
subroutine chk
integer c,z
complex d
logical x
rewind 1
read(1,*)c,d,x,z
if (   (c/=135)) print *,102
if (   (abs( d-(12.3,45.6) ) >0.0001)) print *,103
if (   x) print *,104
if (   (z/=246)) print *,106
end
