module m
  type ty
    integer :: x    =9
  contains
    procedure :: wform
     generic :: write(formatted) => wform
  end type
  integer,save::a=1
contains
    subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
    a=a+dtv%x 
   if(size(vlist)/=0) then
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1),vlist(2),dtv%x+2,iotype
      else
        write(unit,*,iostat=iostat,iomsg=iomsg) dtv%x+1,iotype
      end if    
end subroutine
end module
program main
  USE m
  interface
  function t1()
    import ty
    CLASS (ty),pointer :: t1(:,:)
  end function
  end interface
 open(unit=71, file='fort.54',form='FORMATTED')
  write(unit=71,'(DT)')t1()
close(unit=71,status='delete')
if(a .ne. 19)print*,101
print*,'pass'
End program

function t1()
  use m
  CLASS (ty),pointer :: t1(:,:)
  allocate(t1(2,1))
end function
