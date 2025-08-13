module m
  type ty
    integer,allocatable :: x
    type(ty),allocatable::node
  contains
    procedure :: wform
    procedure :: rform
    generic :: write(unformatted) => wform
    generic :: read(unformatted) => rform
  end type
contains
subroutine wform(dtv, unit, iostat, iomsg)
  class(ty), intent(in) :: dtv
  integer, intent(in) :: unit
  integer, intent(out) :: iostat
  character(*), intent(inout) :: iomsg
  WRITE(unit,IOSTAT=iostat,IOMSG=iomsg) dtv%x
  if(ALLOCATED(dtv%node))then
    WRITE(unit,IOSTAT=iostat,IOMSG=iomsg) dtv%node
  endif
end subroutine

subroutine rform(dtv,unit,iostat,iomsg)
  class(ty), intent(inout)            :: dtv
  integer, intent(in)             :: unit
  integer, intent(out)            :: iostat
  character(len=*), intent(inout) :: iomsg
  read(unit,IOSTAT=iostat,IOMSG=iomsg) dtv%x
  if(ALLOCATED(dtv%node))then
    read(unit,IOSTAT=iostat,IOMSG=iomsg) dtv%node
  endif
END SUBROUTINE
end module

program main
USE m
TYPE (ty) :: t1,t2

allocate(t1%x)
allocate(t1%node)
allocate(t1%node%x)
allocate(t1%node%node)
allocate(t1%node%node%x)
allocate(t1%node%node%node)
allocate(t1%node%node%node%x)

allocate(t2%x)
allocate(t2%node)
allocate(t2%node%x)
allocate(t2%node%node)
allocate(t2%node%node%x)
allocate(t2%node%node%node)
allocate(t2%node%node%node%x)

t2%x = 1
t2%node%x = 2
t2%node%node%x = 3
t2%node%node%node%x = 4

open(71, file='fort.14',form='UNFORMATTED')
write(71)t2
close(71)

open(77, file='fort.14',form='UNFORMATTED')
read(77)t1
close(77,status='delete')

if (t1%x /= 1) print*, 101
if (t1%node%x /= 2) print*, 102
if (t1%node%node%x /= 3) print*, 103
if (t1%node%node%node%x /= 4) print*, 104
print*, "PASS"
end program
