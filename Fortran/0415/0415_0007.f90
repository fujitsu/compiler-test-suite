module m
  type ty
   integer :: xi1=456
   real :: xr1=3.4
   character(len=3) :: xch1='def'
   complex :: xc1=(1.2, 3.4)
   logical :: xl1=.TRUE.
   contains
     procedure, public :: wform
     generic   :: write(formatted) => wform
  end type ty
  type td1
    integer :: tdi1=111
    real :: tdr1 = 1.1
    character(len=3) :: tdch1='aaa'
  end type td1
contains
  subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
    class(ty), intent(in)       :: dtv
    integer, intent(in)         :: unit
    character(*), intent(in)    :: iotype
    integer, intent(in)         :: vlist(:)
    integer, intent(out)        :: iostat
    character(*), intent(inout) :: iomsg
    type (td1) :: xd1
    integer :: yi1=789

    write(10,*) dtv%xi1
iostat=0
  end subroutine wform
end module m

program main
  use m
  type (ty) :: t1
  integer :: i1=123
  real :: r1=1.2
  character(len=3) :: ch1='abc'
  open(10,file="fort.46",status="replace",form="formatted")

  write(10,*) t1, t1

call chk
print *,'pass'

  close(10)
end program main
subroutine chk
integer a(2)
rewind 10
read(10,*)a
if (any(a/=456)) print *,102
end
