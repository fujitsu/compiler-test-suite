module m
  type ty
    integer, allocatable :: x
    complex :: y=(6.5,8.0)
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
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1),vlist(2),dtv%x,dtv%y,iotype
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
    TYPE (ty) :: t1(5)
  end type

  type(cover) :: obj,obj2
  do i=1,5
  allocate(obj%t1(i)%x)
  allocate(obj2%t1(i)%x)
  obj%t1(i)%x=9
  obj2%t1(i)%x=9
  end do
    open(unit=71, file='fort.81',form='FORMATTED')

  write(unit=71,'(DT)') (obj%t1(i),i=1,5)
close(unit=71)
open(unit=77, file='fort.81',form='FORMATTED')
  read(unit=77,'(DT)') (obj2%t1(i),i=1,5)
close(unit=77,status='delete')
do i=1,5
if(obj2%t1(i)%x .ne. 11)print*,100+i
end do
print*,'pass'
End program
