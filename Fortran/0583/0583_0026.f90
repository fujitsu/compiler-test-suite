module m
  type ty
    integer,allocatable :: x
    type(ty),allocatable::node
  contains
    procedure :: wform
    procedure :: rform
    generic :: write(formatted) => wform
    generic :: read(formatted) => rform
  end type
     character(len=15)::ch
contains
subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
  class(ty), intent(in) :: dtv
  integer, intent(in) :: unit
  character(*), intent(in) :: iotype
  integer, intent(in) :: vlist(:)
  integer, intent(out) :: iostat
  character(*), intent(inout) :: iomsg

  if(size(vlist)/=0) then
    write(unit,*,iostat=iostat,iomsg=iomsg)vlist(1),vlist(2),dtv%x,iotype
  else
   WRITE(unit,*,IOSTAT=iostat,IOMSG=iomsg) dtv%x
   if(ALLOCATED(dtv%node))then
     WRITE(unit,*,IOSTAT=iostat,IOMSG=iomsg) dtv%node
   end if
 endif

end subroutine

subroutine rform(dtv,unit,iotype, vlist, iostat, iomsg)
  class(ty), intent(inout)            :: dtv
  integer, intent(in)             :: unit
  character(len=*), intent(in)    :: iotype
  integer, intent(in)             :: vlist (:)
  integer, intent(out)            :: iostat
  character(len=*), intent(inout) :: iomsg
  ch =iotype
  if(size(vlist)/=0) then
     read(unit,*,iostat=iostat,iomsg=iomsg)dtv%x
  else
     read(unit,*,IOSTAT=iostat,IOMSG=iomsg) dtv%x
     if(ALLOCATED(dtv%node))then
       read(unit,*,IOSTAT=iostat,IOMSG=iomsg) dtv%node
     endif
  end if
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

open(unit=71, file='abc.1',form='FORMATTED')
write(unit=71,*)t2
close(unit=71)

open(unit=71, file='abc.1',form='FORMATTED')
read(unit=71,*)t1
close(unit=71,status='delete')

if (t1%x /= 1) print*, 101
if (t1%node%x /= 2) print*, 102
if (t1%node%node%x /= 3) print*, 103
if (t1%node%node%node%x /= 4) print*, 104
print*, "PASS"
end program
