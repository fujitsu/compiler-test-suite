module m
  type ty
   real :: xr1=3.4
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

    read(10,*) dtv%xr1, dtv%xch1
iostat=0
  end subroutine rform
end module m

program main
  use m
  type ty0
    integer :: i10=987
    type (ty) :: t10
    integer :: i20=543
  end type ty0
  type(ty0) :: ty10

  open(10,file="fort.57")
write(10,*) '111 1.234 XYZ 333'
rewind 10

  read(10,*) ty10%i10, ty10%t10, ty10%i20
  close(10)

open(22,delim='quote')
  write(22,*) ty10%i10, ty10%t10, ty10%i20
print *,'pass'
call chk
end program main
subroutine chk
integer c,d
real a
character(3) b
rewind 22
read(22,*)c,a,b,d
if (    c/=111 ) print *,102
if (abs(a-1.23399997)>0.001 ) print *,103
if (    b/='XYZ' ) print *,104
if (    d/=333 ) print *,105
end
