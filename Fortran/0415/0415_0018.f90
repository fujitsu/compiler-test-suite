module m
  type ty
   integer :: xi1=456
   real :: xr1=3.4
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

    read(13,*) dtv%xi1, dtv%xr1
iostat=0

  end subroutine rform
end module m

program main
  use m
  type (ty) :: t1
  integer :: i1=111

write(13,*) '765 8.95 3210 89 6.5432'
rewind 13

  read(13,*) t1, i1, t1
  close(13)

  write(21,*) t1, i1
call chk
print *,'pass'

end program main
subroutine chk
rewind 21
read(21,*) n,a,nn
if (n/=89) print *,101
if (abs(a- 6.5432000)> 0.001) print *,102
if (nn/= 3210) print *,103
end
