module m
  type tt
    integer,allocatable :: y
  contains
    procedure :: wform_tt
    procedure :: rform_tt
    generic :: write(formatted) => wform_tt
    generic :: read(formatted) => rform_tt
  end type

  type ty
    integer,allocatable :: x
    type(tt),allocatable::node
  contains
    procedure :: wform_ty
    procedure :: rform_ty
    generic :: write(formatted) => wform_ty
    generic :: read(formatted) => rform_ty
  end type

contains
subroutine wform_ty(dtv, unit, iotype, vlist, iostat, iomsg)
  class(ty), intent(in) :: dtv
  integer, intent(in) :: unit
  character(*), intent(in) :: iotype
  integer, intent(in) :: vlist(:)
  integer, intent(out) :: iostat
  character(*), intent(inout) :: iomsg
  if(ALLOCATED(dtv%x))then
   WRITE(unit,*,IOSTAT=iostat,IOMSG=iomsg) dtv%x
  endif
  if(ALLOCATED(dtv%node))then
    WRITE(unit,*,IOSTAT=iostat,IOMSG=iomsg) dtv%node
  endif
end subroutine

subroutine rform_ty(dtv,unit,iotype, vlist, iostat, iomsg)
  class(ty), intent(inout)            :: dtv
  integer, intent(in)             :: unit
  character(len=*), intent(in)    :: iotype
  integer, intent(in)             :: vlist (:)
  integer, intent(out)            :: iostat
  character(len=*), intent(inout) :: iomsg
  read(unit,*,IOSTAT=iostat,IOMSG=iomsg) dtv%x
  if(ALLOCATED(dtv%node))then
    read(unit,*,IOSTAT=iostat,IOMSG=iomsg) dtv%node
  endif
end subroutine

subroutine wform_tt(dtv, unit, iotype, vlist, iostat, iomsg)
  class(tt), intent(in) :: dtv
  integer, intent(in) :: unit
  character(*), intent(in) :: iotype
  integer, intent(in) :: vlist(:)
  integer, intent(out) :: iostat
  character(*), intent(inout) :: iomsg
  if(ALLOCATED(dtv%y))then
   WRITE(unit,*,IOSTAT=iostat,IOMSG=iomsg) dtv%y
  endif
end subroutine

subroutine rform_tt(dtv,unit,iotype, vlist, iostat, iomsg)
  class(tt), intent(inout)            :: dtv
  integer, intent(in)             :: unit
  character(len=*), intent(in)    :: iotype
  integer, intent(in)             :: vlist (:)
  integer, intent(out)            :: iostat
  character(len=*), intent(inout) :: iomsg
  if(ALLOCATED(dtv%y))then
    read(unit,*,IOSTAT=iostat,IOMSG=iomsg) dtv%y
  endif
end subroutine
end module

program main
USE m
TYPE (ty) :: t1,t2
character(len=100)::info

allocate(t1%x)
allocate(t1%node)
allocate(t1%node%y)

allocate(t2%x)
allocate(t2%node)
allocate(t2%node%y)

t2%x = 1
t2%node%y = 2

write(info,*,iostat=ios)t2
if (ios==0) print *,701
ios=0
read(info,*,iostat=ios)t1
if (ios==0) print *,702

print*, "pass"
end program
