module m
  type ty
    integer :: x    =9
    real :: y=8
  contains
  procedure :: wform
    procedure :: rform
     generic :: write(formatted) => wform
     generic :: read(formatted) => rform  
     end type
     character(len=15)::ch
     integer::a=1,b=1
contains
    subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg

      if(size(vlist)/=0) then
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1),vlist(2),dtv%x+2,dtv%y,iotype
      else
        write(unit,*,iostat=iostat,iomsg=iomsg) dtv%x+1
      end if
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
       read(unit,*,iostat=iostat,iomsg=iomsg)a,b, dtv%x,dtv%y,ch
       dtv%x=dtv%x+2
      else
        read(unit,*,iostat=iostat,iomsg=iomsg) dtv%x
       dtv%x=dtv%x+1
      end if
end subroutine rform
end module
program main
  USE m
  type cover
    TYPE (ty) :: t1(7)
  end type
  integer :: i
  type(cover) :: obj,obj1
  i=1
open(unit=71, file='fort.17',form='FORMATTED')
  write(unit=71,*)obj%t1(2:5:i)
close(unit=71)

 open(unit=77, file='fort.17',form='FORMATTED')
  read(unit=77,*)obj1%t1(2:5:i)
  close(unit=77,status='delete')
 if(any(obj1%t1(2:5:i)%x .ne.11))print*,101
 print*,'pass'
End program
