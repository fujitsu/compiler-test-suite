module m
  type ty
   integer :: k(3)
   contains
     procedure, public :: wform
     generic   :: write(formatted) => wform
  end type ty
contains
  subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
    class(ty), intent(in)       :: dtv
    integer, intent(in)         :: unit
    character(*), intent(in)    :: iotype
    integer, intent(in)         :: vlist(:)
    integer, intent(out)        :: iostat
    character(*), intent(inout) :: iomsg

    write(10,*) dtv%k
iostat=0

  end subroutine wform
end module m

program main
  use m
  type (ty) :: v(3)
  integer :: wint=123
  character(len=3) :: wch='abc'
  open(10,file="fort.44",status="replace",form="formatted",delim='quote')

  do i=1,3
    do j=1,3
      v(j)%k(i)=i*j
    enddo
  enddo

  write(10,*) wch, v, wch

call chk
print *,'pass'
  close(10)
end program main
subroutine chk
character(3) a,b
integer c(9)
rewind 10
read(10,*)a,c,b
if (   (a/='abc')) print *,101
if (any(c/=[1,2,3,2,4,6,3,6,9])) print *,102
if (   (b/='abc')) print *,103
end
