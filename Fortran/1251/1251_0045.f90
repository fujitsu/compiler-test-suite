module m0
  interface 
     subroutine sub0() 
     end subroutine 
  end interface
  type ty
    integer, allocatable :: x  !  =9
    real :: y=8
  end type
end
module m1             
  use m0             
  implicit none
  private
  interface 
   subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
      use m0
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
   end subroutine
  end interface
  interface write(formatted)       
     procedure wform             
  end interface
  public :: write(formatted) ,y,ty           
contains
  subroutine y
  end subroutine
end module m1
module m2                       
  interface
     subroutine sub2()         
       use m1                 
     end subroutine sub2
  end interface
end module m2

use m2
call sub2
print *,'sngg533p : pass'
end
 subroutine sub2()         
   use m1                
  TYPE (ty) :: t1
  call y
  allocate(t1%x)
  t1%x=9
  open(unit=71, file='fort.71',form='FORMATTED')
  write(unit=71,fmt=*) t1
  rewind 71
  read(71,*) n
  if (n/=10) print *,1006
  close(unit=71)
 end subroutine sub2
    subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
      use m0
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
    end
