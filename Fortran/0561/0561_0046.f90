module m
  type ty
    integer :: x    =9
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
end  subroutine rform
end module
program main
  USE m
   type cover
    TYPE (ty) :: t1(7)
  end type

  type(ty)::t(12)
  class(cover),pointer :: obj
  allocate(obj)
   open(unit=71, file='fort.78',form='FORMATTED')     
  write(unit=71,'(DT)'),[obj%t1(2),obj%t1(1),obj%t1(4),obj%t1(3)]
  write(unit=71,'(DT(2,3))'),[obj%t1(2),obj%t1(1),obj%t1(4),obj%t1(3)]
  write(unit=71,*)[obj%t1(2),obj%t1(1),obj%t1(4),obj%t1(3)]
 close(unit=71)
    open(unit=77, file='fort.78',form='FORMATTED')    
  read(unit=77,'(DT)')t(1:4)
  read(unit=77,'(DT(2,3))')t(5:8)
  read(unit=77,*)t(9:12)
 close(unit=77,status='delete')
 if(any(t(1:4)%x .ne.11))print*,101
 if(any(t(5:8)%x .ne.13))print*,101
 if(any(t(9:12)%x .ne.11))print*,101
 print*,'pass'

 End program
