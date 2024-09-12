module m
  type ty
    integer :: x  
    real :: y
  contains
    procedure :: wform
     generic :: write(formatted) => wform
  end type
 integer,save::a=1
 real :: b=4
contains
    subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
       a=a+dtv%x
       b=dtv%y
      if(size(vlist)/=0) then
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1),vlist(2),dtv%x+2,dtv%y,iotype
      else
        write(unit,*,iostat=iostat,iomsg=iomsg) dtv%x+1,dtv%y,iotype
      end if
    end subroutine
end module
program main
  USE m
  open(unit=71, file='fort.6',form='FORMATTED')
  write(unit=71,'(DT)'),[t1(),t1()]
  write(unit=71,'(DT(2,3))'),[ty(9,8),t1()]
   close(unit=71,status='delete')
 if(a .ne. 67)print*,101
 print*,'pass'

  contains
  function t1()
  type(ty) :: t1
  t1%x=19
  t1%y=18
  end function
End program
