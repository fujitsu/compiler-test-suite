module m
  type ty
    integer :: x    =9
    complex :: y=(6.5,8.0)
  contains
    procedure :: wform
    procedure :: pls
     generic :: write(formatted) => wform
     generic :: operator(+)=>pls
  end type
  integer::a=1
contains
    function pls(a,b)
      class(ty),intent(in) :: a,b
      type(ty) :: pls
      pls%x=a%x+b%x-9
      pls%y=b%y
    end function

    subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
      a=dtv%x
      if(size(vlist)/=0) then
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1),vlist(2),dtv%x+2,dtv%y,iotype
      else
        write(unit,*,iostat=iostat,iomsg=iomsg) dtv%x+1,dtv%y,iotype
      end if
    end subroutine
end module
program main
  USE m
  TYPE (ty) :: t1
  open(unit=71, file='fort.29',form='FORMATTED')
  write(unit=71,'(DT(2,3))'),t1+t1
close(unit=71,status='delete')
     if(a.ne. 9)print*,101
     print*,'pass'

End program
