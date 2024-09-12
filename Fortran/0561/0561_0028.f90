module m
  type ty
    integer :: x    =9
    complex :: y=(6.5,8.0)
  contains
    procedure :: wform
    generic :: write(formatted)=>wform
  end type

  integer,save::a=1
interface operator(+)
 module procedure::pls
end interface
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
      a=a+1
      if(size(vlist)/=0) then
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1),vlist(2),dtv%x,dtv%y,iotype
      else
        write(unit,*,iostat=iostat,iomsg=iomsg) dtv%x,dtv%y,iotype
      end if
    end subroutine
end module
program main
  USE m
  TYPE (ty) :: t1
  integer :: i
  i=2
  open(unit=71, file='fort.31',form='FORMATTED')
  write(71,'(I4,DT,2I2,DT)'),999,t1+t1,99,i,ty(2,(3.0,4.7))
  write(71,'(DT(2,3))'),t1+t1
  write(71,*),t1+t1
  close(unit=71,status='delete')
if(a /=5)print*,101
print*,'pass'
  End program
